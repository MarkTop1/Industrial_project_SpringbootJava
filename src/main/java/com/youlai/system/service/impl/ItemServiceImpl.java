package com.youlai.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.youlai.system.mapper.ItemMapper;
import com.youlai.system.model.entity.Item;
import com.youlai.system.model.response.ItemResponse;
import com.youlai.system.service.DeptService;
import com.youlai.system.service.ItemService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemServiceImpl extends ServiceImpl<ItemMapper, Item> implements ItemService {

    @Resource
    DeptService deptService;

    @Override
    public List<ItemResponse> getAllItems() {
        LambdaQueryWrapper<Item> wrapper = new LambdaQueryWrapper<>();
        wrapper.orderByAsc(Item::getItemId);
        List<Item> items = baseMapper.selectList(wrapper);
        List<ItemResponse> itemResponseList = new ArrayList<>();
        for (Item item:items){
            ItemResponse itemResponse = new ItemResponse();
            itemResponse.setItemId(item.getItemId());
            itemResponse.setItemName(item.getItemName());
            itemResponse.setItemNumber(item.getItemNumber());
            itemResponse.setItemAddress(item.getItemAddress());
            itemResponse.setItemPhone(item.getItemPhone());
            itemResponse.setOrgId(item.getOrgId());
            itemResponse.setDeptName(deptService.getDeptNameById(item.getOrgId()));
            itemResponseList.add(itemResponse);
        }
        return itemResponseList;
    }

    @Override
    public Item getItemById(Integer id) {
        Item item = query().eq("item_id", id).one();
        return item;
    }
}
