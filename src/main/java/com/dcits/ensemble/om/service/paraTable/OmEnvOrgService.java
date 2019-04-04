package com.dcits.ensemble.om.service.paraTable;

import com.dcits.ensemble.om.model.dbmodel.system.OmEnvOrg;
import com.dcits.ensemble.om.repository.system.OmEnvOrgRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OmEnvOrgService {

    @Resource
    private OmEnvOrgRepository omEnvOrgRepository;

    public OmEnvOrg getEnvInfoByEnvId(String envId){
        String envIds = envId;
        OmEnvOrg omEnvOrg = omEnvOrgRepository.findByEnvId(envIds);
        return omEnvOrg;
    }
}
