package com.youlai.system.model.response;

import lombok.Data;

@Data
public class ItemResponse {
    private Integer itemId;
    private Integer itemNumber;
    private String itemName;
    private String itemAddress;
    private String itemPhone;
    private Integer orgId;
    private String deptName;
}
