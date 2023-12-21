package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.youlai.system.common.base.BaseEntity;
import lombok.Data;

/**
 * 主页内容表
 */
@TableName(value ="sys_index")
@Data
public class SysIndex extends BaseEntity {

    /**
     * id
     */
    @TableId(type = IdType.AUTO)
    private Long index_id;
    /**
     * 项目
     */
    private Integer index_xm;

    /**
     * 未处理
     */
    private Integer index_wcl;

    /**
     * 传感器
     */
    private Integer index_cgq;

    /**
     * 报错
     */
    private Integer index_bc;

}
