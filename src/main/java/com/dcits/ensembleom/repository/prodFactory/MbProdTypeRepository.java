package com.dcits.ensembleom.repository.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface MbProdTypeRepository extends JpaRepository<MbProdType,Long> ,JpaSpecificationExecutor<ParaDifferenceCheckPublish>{
    MbProdType findByProdType(String prodType);
}
