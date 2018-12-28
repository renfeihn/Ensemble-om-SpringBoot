package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlAmtSplit;
import com.dcits.ensemble.om.model.dbmodel.tables.IrlAmtSplitKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlAmtSplitRepository extends JpaRepository<IrlAmtSplit, IrlAmtSplitKeysClass>, JpaSpecificationExecutor<IrlAmtSplit> {

    List<IrlAmtSplit> findByAmtSplitIdAndAmtSeqNo(String amtSplitId, String amtSeqNo);
    List<IrlAmtSplit> findByAmtSplitId(String amtSplitId);
}
