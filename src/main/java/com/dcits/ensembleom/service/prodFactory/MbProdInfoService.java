package com.dcits.ensembleom.service.prodFactory;

import com.dcits.ensembleom.model.dbmodel.*;
import com.dcits.ensembleom.model.prodFactory.MbEventInfo;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.prodFactory.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ligan on 2018/8/23.
 */
@Service
public class MbProdInfoService {
    @Autowired
    private MbProdTypeRepository mbProdTypeRepository;
    @Autowired
    private MbProdDefineRepository mbProdDefineRepository;
    @Autowired
    private MbEventTypeRepository mbEventTypeRepository;
    @Autowired
    private MbEventAttrRepository mbEventAttrRepository;
    @Autowired
    private MbEventPartRepository mbEventPartRepository;
    public MbProdInfo getProdInfo(String prodType){
        MbProdInfo mbProdInfo=new MbProdInfo();
        mbProdInfo.setProdType(mbProdTypeRepository.findByProdType(prodType));
        mbProdInfo.setProdDefines(mbProdDefineRepository.findByProdTypeAndAssembleType(prodType, "ATTR"));
        mbProdInfo.setMbEventInfos(getMbEventInfo(prodType));
        return mbProdInfo;
    }
    //保存产品所有属性
    public void saveProdInfo(MbProdInfo mbProdInfo){
        MbProdType mbProdType=mbProdInfo.getProdType();
        List<MbEventInfo> mbEventInfoList=mbProdInfo.getMbEventInfos();
        List<MbProdDefine> mbProdDefineList=mbProdInfo.getProdDefines();
        mbProdTypeRepository.saveAndFlush(mbProdType);
        for(MbProdDefine mbProdDefine: mbProdDefineList){
            mbProdDefineRepository.saveAndFlush(mbProdDefine);
        }
        saveEventInfo(mbEventInfoList);
    }
    //保存事件
    public void saveEventInfo(List<MbEventInfo> mbEventInfoList){
        for(MbEventInfo mbEventInfo:mbEventInfoList){
            mbEventTypeRepository.saveAndFlush(mbEventInfo.getMbEventType());
            List<MbEventAttr> mbEventAttrList=mbEventInfo.getMbEventAttrs();
            List<MbEventPart> mbEventPartList=mbEventInfo.getMbEventParts();
            for(MbEventAttr mbEventAttr :mbEventAttrList){
                mbEventAttrRepository.saveAndFlush(mbEventAttr);
            }
            for(MbEventPart mbEventPart:mbEventPartList){
                mbEventPartRepository.saveAndFlush(mbEventPart);
            }
        }
    }
    private List<MbEventInfo> getMbEventInfo(String prodType){
        List<MbEventInfo> eventInfos=new ArrayList<>();
        List<MbProdDefine> mbProdDefineEvent=mbProdDefineRepository.findByProdTypeAndAssembleType(prodType,"EVENT");
        for(MbProdDefine mbProdDefine: mbProdDefineEvent){
            MbEventInfo eventInfo= new MbEventInfo();
            eventInfo.setMbEventType(mbEventTypeRepository.findByEventType(mbProdDefine.getAssembleId()));
            eventInfo.setMbEventAttrs(mbEventAttrRepository.findByEventTypeAndAssembleType(mbProdDefine.getAssembleId(), "ATTR"));
            eventInfo.setMbEventParts(getMbEventPart(mbProdDefine.getAssembleId()));
            eventInfos.add(eventInfo);
        }
        return eventInfos;
    }
    private List<MbEventPart> getMbEventPart(String eventType){
        List<MbEventAttr> mbEventAttrs=mbEventAttrRepository.findByEventTypeAndAssembleType(eventType,"PART");
        List<MbEventPart> mbEventParts=new ArrayList<>();
        for(MbEventAttr mbEventAttr:mbEventAttrs){
            mbEventParts.addAll(mbEventPartRepository.findByEventTypeAndAssembleId(eventType, mbEventAttr.getAssembleId()));
        }
        return mbEventParts;
    }
}

