package com.lucifer.cloud.gateway.property;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.List;

/**
 * 自定义认证配置类
 *
 * @author lucifer
 */
@Data
@Configuration
@ConfigurationProperties(prefix = CustomSecurityProperties.PREFIX)
public class CustomSecurityProperties {
    static final String PREFIX = "custom.security";
    /**
     * 不需要认证的路径
     */
    private List<String> ignoreUriList;



}
