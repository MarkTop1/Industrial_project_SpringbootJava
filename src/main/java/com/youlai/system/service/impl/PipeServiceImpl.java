package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.PipeMapper;
import com.youlai.system.model.entity.Pipe;
import com.youlai.system.model.response.PipeResponse;
import com.youlai.system.service.ItemService;
import com.youlai.system.service.ModelPipeService;
import com.youlai.system.service.ModelSensorService;
import com.youlai.system.service.PipeService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PipeServiceImpl extends ServiceImpl<PipeMapper, Pipe> implements PipeService {

    @Resource
    ModelPipeService modelPipeService;

    @Resource
    ItemService itemService;

    @Resource
    ModelSensorService modelSensorService;


    @Override
    public List<PipeResponse> getAllPipe() {
        LambdaQueryWrapper<Pipe> wrapper = new LambdaQueryWrapper<>();
        wrapper.orderByAsc(Pipe::getPipeId);
        List<Pipe> pipeList = baseMapper.selectList(wrapper);
        List<PipeResponse> pipeResponseList = new ArrayList<>();
        for (Pipe pipe:pipeList){
            PipeResponse pipeResponse = new PipeResponse();
            pipeResponse.setPipeId(pipe.getPipeId());
            pipeResponse.setPipeNumber(pipe.getPipeNumber());
            pipeResponse.setPipeName(pipe.getPipeName());
            pipeResponse.setPipeModel(pipe.getPipeModel());
            pipeResponse.setPipeGenerateTime(pipe.getPipeGenerateTime());
            pipeResponse.setPipeCreateTime(pipe.getPipeCreateTime());
            pipeResponse.setPipeItem(pipe.getPipeItem());
            pipeResponse.setPipeSensor(pipe.getPipeSensor());
            pipeResponse.setModelPipe(modelPipeService.getModelPipeById(pipe.getPipeItem()));
            pipeResponse.setItem(itemService.getItemById(pipe.getPipeItem()));
            pipeResponse.setModelSensor(modelSensorService.getModelSensorById(pipe.getPipeSensor()));
            pipeResponseList.add(pipeResponse);
        }
        return pipeResponseList;
    }
}
