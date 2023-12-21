package com.youlai.system.common.exception;

import com.youlai.system.common.result.IResultCode;
import lombok.Getter;

/**
 * 自定义业务异常
 *
 * @author Rzm
 * @since 2023/12/12
 */
@Getter
public class BusinessException extends RuntimeException {

    public IResultCode resultCode;

    public BusinessException(IResultCode errorCode) {
        super(errorCode.getMsg());
        this.resultCode = errorCode;
    }

    public BusinessException(String message){
        super(message);
    }

    public BusinessException(String message, Throwable cause){
        super(message, cause);
    }

    public BusinessException(Throwable cause){
        super(cause);
    }


}
