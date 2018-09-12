package com.dcits.ensemble.om.repository.base;

import com.dcits.ensemble.om.model.BaseTable;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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
}
