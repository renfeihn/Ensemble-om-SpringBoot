package com.dcits.ensemble.om.repository.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.system.OmTransactionDefine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/11/13.
 */
public interface OmTransactionDefineRepository extends JpaRepository<OmTransactionDefine,Long>, JpaSpecificationExecutor<OmTransactionDefine> {
}
