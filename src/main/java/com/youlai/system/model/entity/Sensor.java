package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@TableName("sys_sensor")
@AllArgsConstructor
@NoArgsConstructor
public class Sensor {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String sensorNumber;
    private String sensorName;
    private String sensorType;
}
