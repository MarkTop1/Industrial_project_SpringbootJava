package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.ModelSensorMapper;
import com.youlai.system.model.entity.ModelSensor;
import com.youlai.system.service.ModelSensorService;
import org.springframework.stereotype.Service;

@Service
public class ModelSensorServiceImpl extends ServiceImpl<ModelSensorMapper, ModelSensor> implements ModelSensorService {

   @Override
   public ModelSensor getModelSensorById(Integer id) {
      ModelSensor modelSensor = query().eq("id", id).one();
      return modelSensor;
   }
}
