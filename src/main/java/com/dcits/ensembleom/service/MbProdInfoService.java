package com.dcits.ensembleom.service;

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
    public   MbProdInfo getProdInfo(String prodType){
        MbProdInfo mbProdInfo=new MbProdInfo();

        mbProdInfo.setProdType(mbProdTypeRepository.findByProdType(prodType));
        mbProdInfo.setProdDefines(mbProdDefineRepository.findByProdTypeAndAssembleType(prodType, "ATTR"));
        mbProdInfo.setMbEventInfos(getMbEventInfo(prodType));
        return mbProdInfo;
    }
    public void saveProdType(MbProdType mbProdType){
        mbProdTypeRepository.saveAndFlush(mbProdType);
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

