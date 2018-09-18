package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.MbAcctStats;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/9/18.
 */
public interface MbAcctStatsRepository extends JpaRepository<MbAcctStats,Long>,JpaSpecificationExecutor<MbAcctStats> {
}
