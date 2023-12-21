package com.youlai.system.controller;

import com.youlai.system.common.result.Result;
import com.youlai.system.model.response.ItemResponse;
import com.youlai.system.service.ItemService;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/v1/item")
public class ItemController {

    @Resource
    ItemService itemService;

    @GetMapping("/getAll")
    @ResponseBody
    public Result<List<ItemResponse>> GetAllItems(HttpServletRequest request, HttpServletResponse response) throws IOException {

        List<ItemResponse> allItems = itemService.getAllItems();
//        response.setContentType("application/json;charset=utf-8");
//        if(allItems != null){
//            response.getWriter().write(RestBean.success(allItems,"查询成功").asJsonString());
//        }else {
//            response.getWriter().write(RestBean.unauthorized("查询失败").asJsonString());
//        }
        return Result.success(allItems);
    }
}
