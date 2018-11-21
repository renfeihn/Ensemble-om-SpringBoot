package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/11/21.
 */
public interface OmMenuRepository extends JpaRepository<OmMenu,Long>,JpaSpecificationExecutor<OmMenu> {
    public OmMenu findByMenuSeqNo(String menuSeqNo);

}
