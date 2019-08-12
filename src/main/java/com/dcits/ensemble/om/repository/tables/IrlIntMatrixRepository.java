package com.dcits.ensemble.om.repository.tables;

import com.dcits.ensemble.om.model.dbmodel.tables.IrlIntMatrix;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface IrlIntMatrixRepository extends JpaRepository<IrlIntMatrix,Long>, JpaSpecificationExecutor<IrlIntMatrix> {

    List<IrlIntMatrix> findByMatrixNo(String matrixNo);
}
