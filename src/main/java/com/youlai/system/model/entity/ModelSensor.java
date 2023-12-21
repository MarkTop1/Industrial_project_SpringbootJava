package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@TableName("sys_model_sensor")
@AllArgsConstructor
@NoArgsConstructor
public class ModelSensor {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String deviceName;
    private String deviceType;
    private Integer deviceNumber;
    private Date createTime;
    private String upInterval;
    private String protocol;
    private String dataPointName;
    private Integer lowThreshold;
    private Integer highThreshold;
    private String dataPointExtra;

}
