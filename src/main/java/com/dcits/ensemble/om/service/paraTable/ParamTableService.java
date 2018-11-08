package com.dcits.ensemble.om.service.paraTable;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.prodFactory.MbEventInfo;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.model.table.ColumnBean;
import com.dcits.ensemble.om.repository.base.BaseTableRepositoryImpl;
import com.dcits.ensemble.om.repository.prodFactory.*;
import com.dcits.ensemble.om.repository.tables.GlProdAccountingRepository;
import com.dcits.ensemble.om.repository.tables.IrlProdIntRepository;
import com.dcits.ensemble.om.repository.tables.MbAcctStatsRepository;
import com.dcits.ensemble.om.repository.tables.MbProdChargeRepository;
import com.dcits.ensemble.om.table.Attr;
import com.dcits.ensemble.om.table.DbTable;
import com.dcits.ensemble.om.table.TableDefine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by ligan on 2018/8/23.
 */
@Service
public class ParamTableService {
    @Resource
    private BaseTableRepositoryImpl baseTableRepository;
    //1.根据表名获取参数列信息
    public List<ColumnBean> getTableColumn(String tableName){
       List<ColumnBean> columnInfoList=new ArrayList<>();
        DbTable dbTable= TableDefine.getTable(tableName);
        for(Attr attr: dbTable.getAttrs()){
            ColumnBean column=new ColumnBean(attr.getCode(),attr.getComment(),attr.getP(),attr.getM());
            columnInfoList.add(column);
        }
        return columnInfoList;
    }
    //2.根据参数列信息及表名差数据库获取数据信息
    public List<Map> getTableInfo(String tableName){
        List<Map> columnInfoList=baseTableRepository.findAllTable(tableName);
        return columnInfoList;
    }
}

