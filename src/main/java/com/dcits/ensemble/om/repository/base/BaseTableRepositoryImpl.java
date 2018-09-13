package com.dcits.ensemble.om.repository.base;


import com.dcits.ensemble.om.table.Attr;
import com.dcits.ensemble.om.table.DbTable;
import com.dcits.ensemble.om.util.ResourcesUtils;
import net.sf.json.JSONObject;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/9/12.
 */
@Service
public class BaseTableRepositoryImpl {
    @PersistenceContext
    private EntityManager em;
        @SuppressWarnings("unchecked")
    public List<Map> findAllTable(String tableName){
        String dataSql = "select * from "+tableName+" where 1 = 1";
        Query dataQuery = em.createNativeQuery(dataSql);
        dataQuery.unwrap(SQLQuery.class).setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
        List<Map> data = dataQuery.getResultList();
        return data;
    }
    @Modifying
    @Transactional
    public void insertTable(String tableName, JSONObject dataMap){
        String space=" ";
        String left="(";
        String right=")";
        String comm=",";
        StringBuffer sqlStr=new StringBuffer("insert into"+space);
        sqlStr.append(tableName+space);
        sqlStr.append(left);
        int i;
        for(Object data:dataMap.keySet()){
            String columnName=ResourcesUtils.camelToUnderline(data.toString());
            Object value=dataMap.get(data);
            if(value!=null&&!"null".equals(value.toString())) {
                sqlStr.append(columnName);
                sqlStr.append(comm);
            }
        }
        sqlStr.deleteCharAt(sqlStr.length() - 1);
        sqlStr.append(right + space + "values" + space + left);
        i=0;
        for(Object data:dataMap.keySet()){
            Object value=dataMap.get(data);
            if(value!=null&&!"null".equals(value.toString())) {
                if(i!=0) {
                    sqlStr.append(comm);
                }
                sqlStr.append("?");
            }
            i++;
        }
        sqlStr.append(right);
        Query dataQuery = em.createNativeQuery(sqlStr.toString());
        i=1;
        for(Object data:dataMap.keySet()){
            Object value=dataMap.get(data);
            if(value!=null&&!"null".equals(value.toString())) {
                dataQuery.setParameter(i, value);
                i++;
            }
        }
        dataQuery.executeUpdate();
    }
}
