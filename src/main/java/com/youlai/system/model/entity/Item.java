package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@TableName("sys_item")
@AllArgsConstructor
@NoArgsConstructor
public class Item {
    @TableId(type = IdType.AUTO)
    private Integer itemId;
    private Integer itemNumber;
    private String itemName;
    private String itemAddress;
    private String itemPhone;
    private Integer orgId;
}
