package com.youlai.system.model.request;

import lombok.Data;

@Data
public class SensorUpdateRequest {
    private Integer sensorId;
    private String sensorNumber;
    private String sensorName;
    private String sensorType;
}
