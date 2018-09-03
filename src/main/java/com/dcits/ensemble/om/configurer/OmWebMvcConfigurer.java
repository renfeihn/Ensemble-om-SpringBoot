package com.dcits.ensemble.om.configurer;

import com.dcits.ensemble.om.intercept.LoginIntercept;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
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
        InterceptorRegistration addInterceptor = registry.addInterceptor(new LoginIntercept()).addPathPatterns("/**");
        addInterceptor.excludePathPatterns("/login**");
    }
}
