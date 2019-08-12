package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbProdClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;


/**
 * Created by jiajt on 2018/9/17.
 */
public interface MbProdClassRepository extends JpaRepository<MbProdClass,Long> ,JpaSpecificationExecutor<MbProdClass>{
}
