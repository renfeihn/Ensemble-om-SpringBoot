package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbProdDefine;
import com.dcits.ensemble.om.model.dbmodel.MbProdDefineKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdDefineRepository extends JpaRepository<MbProdDefine,MbProdDefineKeysClass> ,JpaSpecificationExecutor<MbProdDefine>{
     List<MbProdDefine> findByProdTypeAndAssembleType(String prodType,String assembleType);
}
