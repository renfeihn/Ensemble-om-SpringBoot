package com.dcits.ensemble.om.repository.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.FmCompany;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import java.util.List;
/**
 * Created by zjy on 2019/3/29.
 */
public interface FmCompanyRepository extends JpaRepository<FmCompany,Long>,JpaSpecificationExecutor<FmCompany>{
    List<FmCompany> findAll();
}
