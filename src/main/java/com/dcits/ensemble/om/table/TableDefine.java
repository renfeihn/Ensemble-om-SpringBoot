package com.dcits.ensemble.om.table;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;


public class TableDefine {

    public static final Logger logger = LoggerFactory.getLogger(TableDefine.class);

    public static List<DbTable> getTables() {
        List<DbTable> dbTables = new ArrayList<>();
        try {
            File file = ResourceUtils.getFile("classpath:table");
            if (file.exists()) {
                File[] files = file.listFiles();
                if (files != null) {
                    for (File childFile : files) {
                        logger.info("table name is {}", childFile.getName());
                        String content = IOUtils.toString(new FileInputStream(childFile), Charset.forName("UTF-8"));
                        DbTable dbTable = JSON.parseObject(content, new TypeReference<DbTable>() {
                        });
                        dbTables.add(dbTable);
                    }
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return dbTables;
    }
    public static DbTable getTable(String tableName) {
        DbTable dbTable;
        try {
            File file = ResourceUtils.getFile("classpath:table");
            File fileTable = ResourceUtils.getFile(file.getPath()+"/"+tableName+".json");
            if (file.exists()) {
                        logger.info("table name is {}", fileTable.getName());
                        String content = IOUtils.toString(new FileInputStream(fileTable), Charset.forName("UTF-8"));
                        dbTable = JSON.parseObject(content, new TypeReference<DbTable>() {
                        });
                return dbTable;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
