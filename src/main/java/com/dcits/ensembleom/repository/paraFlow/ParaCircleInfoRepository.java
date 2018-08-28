package com.dcits.ensembleom.repository.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaCircleInfo;
import com.dcits.ensembleom.model.dbmodel.ParaCircleInfoKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by ligan on 2018/8/14.
 */
public interface ParaCircleInfoRepository extends JpaRepository<ParaCircleInfo,ParaCircleInfoKeysClass> ,JpaSpecificationExecutor<ParaCircleInfo>{
;
}
