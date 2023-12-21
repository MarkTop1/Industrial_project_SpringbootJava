package com.youlai.system.model.response;

import com.youlai.system.model.entity.Item;
import com.youlai.system.model.entity.ModelPipe;
import com.youlai.system.model.entity.ModelSensor;
import lombok.Data;

import java.util.Date;

@Data
public class PipeResponse {
    private Integer pipeId;
    private String pipeNumber;
    private String pipeName;
    private Integer pipeModel;
    private Date pipeGenerateTime;
    private Date pipeCreateTime;
    private Integer pipeItem;
    private Integer pipeSensor;
    private ModelPipe modelPipe;
    private Item item;
    private ModelSensor modelSensor;
}
