package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaTransactionTableOrg;
import com.dcits.ensembleom.model.dbmodel.ParaTransactionTableOrgKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaTransactionTableOrgRepository extends JpaRepository<ParaTransactionTableOrg,ParaTransactionTableOrgKeysClass> ,JpaSpecificationExecutor<ParaTransactionTableOrg>{

}
