package com.youlai.system.model.request;

import lombok.Data;

@Data
public class ItemsAddRequest {
    private Integer itemNumber;
    private String itemName;
    private String itemAddress;
    private String itemPhone;
    private Integer orgId;
}
