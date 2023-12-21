package com.youlai.system.model.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;

/**
 * 验证码响应对象
 *
 * @author Rzm
 * @since 2023/12/12
 */
@Schema(description ="验证码响应对象")
@Builder
@Data
public class CaptchaResult {

    @Schema(description = "验证码缓存key")
    private String captchaKey;

    @Schema(description = "验证码图片Base64字符串")
    private String captchaBase64;

}
