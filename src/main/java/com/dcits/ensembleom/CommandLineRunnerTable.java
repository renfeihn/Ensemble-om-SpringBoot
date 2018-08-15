package com.dcits.ensembleom;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Order(value=1)
@Component
public class CommandLineRunnerTable implements CommandLineRunner {
    @Override
    public void run(String... args) throws Exception {

    }
}
