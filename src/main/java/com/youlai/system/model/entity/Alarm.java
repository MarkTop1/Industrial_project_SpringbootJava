package com.youlai.system.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;
import java.util.Date;

@Data
@TableName("sys_alarm")
@AllArgsConstructor
@NoArgsConstructor
public class Alarm {
    @TableId(type = IdType.AUTO)
    private Integer alarmId;
    private Date alarmTime;
    private String alarmEquipment;
    private String alarmData;
    private String alarmCurrent;
    private String alarmContent;
    private String alarmMan;
    private BigInteger alarmPstatus;
}
