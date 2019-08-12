package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.tables.MbProdGroup;
import com.dcits.ensemble.om.model.dbmodel.tables.MbProdGroupKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdGroupRepository extends JpaRepository<MbProdGroup, MbProdGroupKeysClass> ,JpaSpecificationExecutor<MbProdGroup>{
    List<MbProdGroup> findByProdType(String prodType);
}
