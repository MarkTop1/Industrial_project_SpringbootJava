package com.youlai.system.common.enums;

import com.youlai.system.common.base.IBaseEnum;
import lombok.Getter;

/**
 * 状态枚举
 *
 * @author Rzm
 * @since 2023/12/12
 */
public enum StatusEnum implements IBaseEnum<Integer> {

    ENABLE(1, "启用"),
    DISABLE (0, "禁用");

    @Getter
    private Integer value;

    @Getter
    private String label;

    StatusEnum(Integer value, String label) {
        this.value = value;
        this.label = label;
    }
}
