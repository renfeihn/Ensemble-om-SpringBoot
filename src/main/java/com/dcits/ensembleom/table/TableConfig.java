package com.dcits.ensembleom.table;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

@Configuration
public class TableConfig {

    @Bean
    public DbTables getDbTables() {
        List<DbTable> dbTables = TableDefine.getTables();
        return new DbTables(dbTables);
    }
}
