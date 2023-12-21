package com.youlai.system.service;

import com.youlai.system.model.entity.Item;
import com.youlai.system.model.response.ItemResponse;

import java.util.List;

public interface ItemService{
   public List<ItemResponse> getAllItems();

   public Item getItemById(Integer id);
}
