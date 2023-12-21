package com.youlai.system.model.request;

import lombok.Data;

@Data
public class SensorAddRequest {
    private String sensorNumber;
    private String sensorName;
    private String sensorType;
}
