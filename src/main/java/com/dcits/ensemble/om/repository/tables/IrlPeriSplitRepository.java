package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlPeriSplit;
import com.dcits.ensemble.om.model.dbmodel.tables.IrlPeriSplitKeysClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlPeriSplitRepository extends JpaRepository<IrlPeriSplit, IrlPeriSplitKeysClass>, JpaSpecificationExecutor<IrlPeriSplit> {
    List<IrlPeriSplit> findByPeriSplitIdAndPeriSeqNo(String periSplitId, String periSeqNo);
}
