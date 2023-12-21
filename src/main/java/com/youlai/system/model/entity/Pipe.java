package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@TableName("sys_pipe")
@AllArgsConstructor
@NoArgsConstructor
public class Pipe {
    @TableId(type = IdType.AUTO)
    private Integer pipeId;
    private String pipeNumber;
    private String pipeName;
    private Integer pipeModel;
    private Date pipeGenerateTime;
    private Date pipeCreateTime;
    private Integer pipeItem;
    private Integer pipeSensor;
}
