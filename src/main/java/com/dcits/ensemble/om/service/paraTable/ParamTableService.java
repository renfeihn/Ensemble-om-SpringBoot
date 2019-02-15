package com.dcits.ensemble.om.service.paraTable;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttr;
import com.dcits.ensemble.om.model.dbmodel.MbEventPart;
import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.tables.OmTableList;
import com.dcits.ensemble.om.model.prodFactory.MbEventInfo;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.model.table.ColumnBean;
import com.dcits.ensemble.om.model.table.ColumnBeanTwo;
import com.dcits.ensemble.om.repository.base.BaseTableRepositoryImpl;
import com.dcits.ensemble.om.repository.prodFactory.*;
import com.dcits.ensemble.om.repository.tables.*;
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
    @Resource
    private OmTableListRepository omTableListRepository;
    //1.根据表名获取参数列信息
    public List<ColumnBean> getTableColumn(String tableName){
       List<ColumnBean> columnInfoList=new ArrayList<>();
        DbTable dbTable= TableDefine.getTable(tableName);
        for(Attr attr: dbTable.getAttr()){
            String attrCode=attr.getCode();
            if("TRAN_TIMESTAMP".equals(attrCode)||"TRAN_TIME".equals(attrCode)){
                continue;
            }
            ColumnBean column=new ColumnBean(attr.getCode(),attr.getDataType(),attr.getComment(),attr.getP(),attr.getM(),attr.getLengths());
            columnInfoList.add(column);
        }
        return columnInfoList;
    }
    //1.5根据表名获取参数列信息,给前端a-table传参数用的
    public List<ColumnBeanTwo> getTableColumnTwo(String tableName){
        List<ColumnBeanTwo> columnInfoList=new ArrayList<>();
        DbTable dbTable= TableDefine.getTable(tableName);
        for(Attr attr: dbTable.getAttr()){
            String attrCode=attr.getCode();
            if("TRAN_TIMESTAMP".equals(attrCode)||"TRAN_TIME".equals(attrCode)){
                continue;
            }
            ColumnBeanTwo columnTwo= new ColumnBeanTwo(attr.getCode(),attr.getComment(),attr.getP(),attr.getM());
            columnInfoList.add(columnTwo);
        }
        return columnInfoList;
    }
    //2.根据参数列信息及表名差数据库获取数据信息
    public List<Map> getTableInfo(String tableName){
        List<Map> columnInfoList=baseTableRepository.findAllTable(tableName);
        return columnInfoList;
    }
    //获取表描述信息
    public String getTableDesc(String tableName){
        OmTableList omTableList= omTableListRepository.findByTableName(tableName);
        if (omTableList != null) {
            return omTableList.getTableDesc();
        }else
            return "";
    }
}

