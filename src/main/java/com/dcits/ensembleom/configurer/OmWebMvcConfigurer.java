package com.dcits.ensembleom.configurer;

import com.dcits.ensembleom.intercept.LoginIntercept;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Author chengliang
 * @Description 系统拦截器配置管理
 * @Date 2018-08-29 15:02
 **/

@Configuration
public class OmWebMvcConfigurer implements WebMvcConfigurer {
    private static final Logger logger = LoggerFactory.getLogger(OmWebMvcConfigurer.class);

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 添加一个拦截器，连接以/为前缀的 url路径
        registry.addInterceptor(new LoginIntercept()).addPathPatterns("/**");
    }
}
