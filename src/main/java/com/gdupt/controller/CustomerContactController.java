package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.CustomerContact;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.ICustomerContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/customer-contact")
public class CustomerContactController {
    @Autowired
    private ICustomerContactService customerContactService;

    @GetMapping("/list")
    public ResponseData selectByCid(@RequestParam(value = "customerId",required = false) Integer id,Page page){
        List<CustomerContact> list = customerContactService.selectByCid(id,page);
        // model.getAttribute("customerById", customerById);
        return ResponseData.okPage(page.getTotal(),list);

    }

    @PostMapping("/addOrSave")
    public ResponseData saveOrUpdate(CustomerContact customerContact){
        //System.out.println(customerContact);
        boolean flg = customerContactService.saveOrUpdate(customerContact);
        if (flg){
            return ResponseData.okMessage("操作成功");
        }
        return ResponseData.fail("操作失败");
    }
    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){
        // System.out.println(customerContact);
        boolean flg = customerContactService.removeById(id);
        if (flg){
            return ResponseData.okMessage("删除成功");
        }
        return ResponseData.fail("删除失败");
    }
 /*   @PostMapping(value = "/selectlist/{selects}")
    public ResponseData reportlist(@PathVariable("selects") String selects) {
        List<CustomerContact> selectslist = customerContactService.selectslist(selects);
        return ResponseData.okData(selectslist);
    }*/
}
