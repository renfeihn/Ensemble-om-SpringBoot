package com.dcits.ensembleom;

import com.dcits.ensembleom.table.DbTables;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EnsembleOmApplicationTests {

    @Autowired
    private DbTables dbTables;

    @Test
    public void contextLoads() {
    }

    @Test
    public void test(){
        Assert.assertNotNull(dbTables);
    }
}
