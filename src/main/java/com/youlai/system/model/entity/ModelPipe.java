package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@TableName("sys_model_pipe")
@AllArgsConstructor
@NoArgsConstructor
public class ModelPipe {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String pipeName;
    private Integer pipeNumber;
    private String pipeType;
    private String pipeIntroduce;
    private String pipePic;
    private String pipeManual;
    private Date pipeCreatetime;

}
