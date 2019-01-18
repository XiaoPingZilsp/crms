package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.OrderHistory;
import com.gdupt.entity.OrderInfo;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IOrderHistoryService;
import com.gdupt.service.IOrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/order-info")
public class OrderInfoController {

    @Autowired
    private IOrderInfoService orderInfoService;



    @RequestMapping("/list/{id}")
    public ResponseData list(Page page, @PathVariable("id") Integer id){
        List<OrderInfo> list =orderInfoService .dataPage(page,id);
        return ResponseData.okPage(page.getTotal(),list);
    }
}
