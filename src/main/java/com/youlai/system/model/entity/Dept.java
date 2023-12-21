package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@TableName("sys_dept")
@AllArgsConstructor
@NoArgsConstructor
public class Dept {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String name;
    private Long parentId;
    private String treePath;
    private Integer sort;
    private Integer status;
    private Integer deleted;
    private Long createBy;
    private Long updateBy;
    private Date createTime;
    private Date updateTime;
}
