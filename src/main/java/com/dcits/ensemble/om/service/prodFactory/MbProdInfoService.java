package com.dcits.ensemble.om.service.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.prodFactory.MbEventInfo;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.repository.prodFactory.*;
import com.dcits.ensemble.om.repository.tables.GlProdAccountingRepository;
import com.dcits.ensemble.om.repository.tables.IrlProdIntRepository;
import com.dcits.ensemble.om.repository.tables.MbAcctStatsRepository;
import com.dcits.ensemble.om.repository.tables.MbProdChargeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by ligan on 2018/8/23.
 */
@Service
public class MbProdInfoService {
    @Autowired
    private MbProdTypeRepository mbProdTypeRepository;
    @Resource
    private MbProdDefineRepository mbProdDefineRepository;
    @Autowired
    private MbEventTypeRepository mbEventTypeRepository;
    @Autowired
    private MbEventAttrRepository mbEventAttrRepository;
    @Autowired
    private MbEventPartRepository mbEventPartRepository;
    @Autowired
    private GlProdAccountingRepository glProdAccountingRepository;
    @Autowired
    private IrlProdIntRepository irlProdIntRepository;
    @Autowired
    private MbProdChargeRepository mbProdChargeRepository;
    @Autowired
    private MbAcctStatsRepository mbAcctStatsRepository;
    public MbProdInfo getProdInfo(String prodType){
        MbProdInfo mbProdInfo=new MbProdInfo();
        MbProdType mbProdType=mbProdTypeRepository.findByProdType(prodType);
        mbProdInfo.setProdType(mbProdType);
        Map<String,MbProdDefine> mbProdDefineMap =new LinkedHashMap<>();
        String baseType=mbProdType.getBaseProdType();
        List<MbProdDefine> mbProdDefineGroupList=new ArrayList<>();
        if(baseType!=null){
            List<MbProdDefine> mbProdDefineBaseList=mbProdDefineRepository.findByProdTypeAndAssembleTypeOrderByPageCodePageSeqNoAsc(baseType, "ATTR");
            if(mbProdDefineBaseList!=null){
                mbProdDefineGroupList.addAll(mbProdDefineBaseList);
            }
        }
        List<MbProdDefine>  mbProdDefineList=mbProdDefineRepository.findByProdTypeAndAssembleTypeOrderByPageCodePageSeqNoAsc(prodType, "ATTR");
        if(mbProdDefineList!=null){
            //衍合基础产品与可售产品参数
            mbProdDefineGroupList.addAll(mbProdDefineList);
        }
        for(MbProdDefine mbProdDefine:mbProdDefineGroupList){
            if(baseType.equals(mbProdDefine.getProdType())){
                //参数取自基础产品
                mbProdDefine.setGroup("BASE");
                mbProdDefine.setProdType(prodType);
            }else if (!baseType.equals(mbProdDefine.getProdType())){
                //参数取自可售产品
                mbProdDefine.setGroup("SOLD");
            }
            mbProdDefineMap.put(mbProdDefine.getAssembleId(), mbProdDefine);
        }
        mbProdInfo.setProdDefines(mbProdDefineMap);
        mbProdInfo.setMbEventInfos(getMbEventInfo(prodType,baseType));
        //获取单表数据
        mbProdInfo.setGlProdAccounting(glProdAccountingRepository.findByProdType(prodType));
        mbProdInfo.setIrlProdInt(irlProdIntRepository.findByProdType(prodType));
        mbProdInfo.setMbAcctStats(mbAcctStatsRepository.findAll());
        mbProdInfo.setMbProdCharge(mbProdChargeRepository.findByProdType(prodType));
        return mbProdInfo;
    }
    //保存产品所有属性(只有发布时生效)
    public void saveProdInfo(MbProdInfo mbProdInfo){
        MbProdType mbProdType=mbProdInfo.getProdType();
        Map<String,MbEventInfo> mbEventInfoList=mbProdInfo.getMbEventInfos();
        Map<String,MbProdDefine> mbProdDefineList=mbProdInfo.getProdDefines();
        mbProdTypeRepository.saveAndFlush(mbProdType);
        for(Map.Entry<String, MbProdDefine> entry: mbProdDefineList.entrySet()){
            mbProdDefineRepository.saveAndFlush(entry.getValue());
        }
        saveEventInfo(mbEventInfoList);
    }
    //保存事件
    public void saveEventInfo(Map<String,MbEventInfo> mbEventInfoList){
/*        for(MbEventInfo mbEventInfo:mbEventInfoList){
            mbEventTypeRepository.saveAndFlush(mbEventInfo.getMbEventType());
            Map<String,MbEventAttr> mbEventAttrList=mbEventInfo.getMbEventAttrs();
            Map<String,MbEventPart> mbEventPartList=mbEventInfo.getMbEventParts();
            for(MbEventAttr mbEventAttr :mbEventAttrList){
                mbEventAttrRepository.saveAndFlush(mbEventAttr);
            }
            for(MbEventPart mbEventPart:mbEventPartList){
                mbEventPartRepository.saveAndFlush(mbEventPart);
            }
        }*/
    }
    private Map<String,MbEventInfo> getMbEventInfo(String prodType,String baseType){
        Map<String,MbEventInfo> eventInfos=new HashMap<>();
        List<MbProdDefine> mbProdDefineEvent=mbProdDefineRepository.findByProdTypeAndAssembleTypeOrderByPageCodePageSeqNoAsc(prodType, "EVENT");
        for(MbProdDefine mbProdDefine: mbProdDefineEvent){
            MbEventInfo eventInfo= new MbEventInfo();
            Map<String,MbEventAttr> mbEventAttrMap=new HashMap<>();
            String eventKey=mbProdDefine.getAssembleId();
            String baseEventKey= eventKey.substring(eventKey.length()-prodType.length())+baseType;
            eventInfo.setMbEventType(mbEventTypeRepository.findByEventType(mbProdDefine.getAssembleId()));
            List<MbEventAttr> mbEventAttrGroupList=new ArrayList<>();
            List<MbEventAttr> mbEventAttrList=mbEventAttrRepository.findByEventType(eventKey);
            List<MbEventAttr> mbEventBaseAttrList=mbEventAttrRepository.findByEventType(baseEventKey);
            mbEventAttrGroupList.addAll(mbEventBaseAttrList);
            mbEventAttrGroupList.addAll(mbEventAttrList);
            for(MbEventAttr mbEventAttr:mbEventAttrGroupList){
                if(mbEventAttr.getEventType().equals(baseEventKey)){
                    mbEventAttr.setEventType(eventKey);
                    mbEventAttr.setGroup("BASE");
                }
                mbEventAttrMap.put(mbEventAttr.getAssembleId(),mbEventAttr);
            }
            eventInfo.setMbEventAttrs(mbEventAttrMap);
            eventInfo.setMbEventParts(getMbEventPart(eventKey,baseEventKey));
            eventInfos.put(mbProdDefine.getAssembleId(), eventInfo);
        }
        return eventInfos;
    }
    private Map<String,Map> getMbEventPart(String eventType,String baseEventKey){
        List<MbEventAttr> mbEventAttrs=mbEventAttrRepository.findByEventType(eventType);
        Map<String,Map> mapMap=new HashMap<>();
        for(MbEventAttr mbEventAttr:mbEventAttrs){
            Map<String,MbEventPart>  mbEventParts=new HashMap<>();
            List<MbEventPart> mbEventPartGroupList=new ArrayList<>();
           List<MbEventPart> mbEventPartList=mbEventPartRepository.findByEventTypeAndAssembleId(eventType, mbEventAttr.getAssembleId());
           List<MbEventPart> mbEventPartBaseList=mbEventPartRepository.findByEventTypeAndAssembleId(baseEventKey, mbEventAttr.getAssembleId());
            mbEventPartGroupList.addAll(mbEventPartBaseList);
            mbEventPartGroupList.addAll(mbEventPartList);
            for(MbEventPart mbEventPart:mbEventPartGroupList){
                if(mbEventPart.getEventType().equals(baseEventKey)) {
                    mbEventPart.setEventType(eventType);
                    mbEventPart.setGroup("BASE");
                }
                mbEventParts.put(mbEventPart.getAttrKey(),mbEventPart);
            }
            mapMap.put(mbEventAttr.getAssembleId(), mbEventParts);
        }
        return mapMap;
    }
    //组装事件
    public Map<String,Map> assembleEvent(Map<String,MbEventInfo> mbEventInfos){
        Map<String,Map> mbEventInfoList=new HashMap<>();
        for(Object key:mbEventInfos.keySet()){
            Map<String,Map> mbEvent=new HashMap<>();
            MbEventInfo mbEventInfo=mbEventInfos.get(key);
            Map<String,MbEventAttr> mbEventAttrMap= mbEventInfo.getMbEventAttrs();
            for(Object keyAttr:mbEventAttrMap.keySet()){
                MbEventAttr mbEventAttr=mbEventAttrMap.get(keyAttr);
                Map attr=new HashMap<>();
                attr.put(mbEventAttr.getAssembleId(),mbEventAttr.getAttrValue());
                mbEvent.putAll(attr);
            }
            Map<String,Map> mbEventParts=mbEventInfo.getMbEventParts();
            for(Object keyPart:mbEventParts.keySet()){
                mbEvent.putAll(partToAttr(mbEventParts.get(keyPart)));
            }
            mbEventInfoList.put((String)key,mbEvent);
        }
        return mbEventInfoList;
    }
    //提取指标下的参数
    private Map<String,Map> partToAttr(Map map){
        Map attr=new HashMap<>();
        for(Object keyPart:map.keySet()){
            MbEventPart mbEventPart=(MbEventPart)map.get(keyPart);
            attr.put(keyPart,mbEventPart.getAttrValue());
        }
        return attr;
    }
    //修改DEFINE表中参数的位置信息
    public void updateColumn(Map column,String prodType){
        mbProdDefineRepository.updatePageSeq((Integer)column.get("pageSeqNo"),prodType,(String)column.get("key"),(String)column.get("pageCode"));
    }
}

