package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.CustomerContact;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.vo.CoutConstitute;
import com.gdupt.entity.vo.CoutContribution;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IBasicDataService;
import com.gdupt.service.ICustomerInfoService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/customer-info")
public class CustomerInfoController {
    @Autowired
    private ICustomerInfoService customerInfoService;
    @Autowired
    private IBasicDataService dataService;

    @GetMapping("all_list")
    public ResponseData findAll(Page page) {
        List<CustomerInfo> list = customerInfoService.dataPage(page);
        return ResponseData.okPage(page.getTotal(),list);

    }

    @GetMapping("findById/{id}")
    public ResponseData findById(Serializable id){
        CustomerInfo cust=customerInfoService.getById(id);
        return ResponseData.okData(cust);

    }
    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){
        // System.out.println(customerContact);
        boolean flg = customerInfoService.removeById(id);
        if (flg){
            return ResponseData.okMessage("删除成功");
        }
        return ResponseData.fail("删除失败");
    }

    @PostMapping("/Save")
    public ResponseData saveOrUpdate(CustomerInfo customerInfo){
        //System.out.println(customerContact);
        boolean flg = customerInfoService.saveOrUpdate(customerInfo);
        if (flg){
            return ResponseData.okMessage("操作成功");
        }
        return ResponseData.fail("操作失败");
    }




    @PostMapping(value = "/selectlist/{selects}")
    public ResponseData reportlist(@PathVariable("selects") String selects) {
        List<BasicData> selectslist = dataService.selectslist(selects);
        return ResponseData.okData(selectslist);
    }

    @RequestMapping(value = "/coutContribution")
    public ResponseData coutContribution(Page page, @RequestParam(value = "customerName",required = false) String customerName,@RequestParam(value = "year",required = false)String  year) {
        List<CoutContribution> coutContribution = customerInfoService.ContributionAll(customerName,year);
        System.out.println(coutContribution);
        return ResponseData.okPage(page.getTotal(),coutContribution);
    }

    @RequestMapping(value = "/constituteList")
    public ResponseData constituteList(Page page) {
        List<CoutConstitute> coutConstitute = customerInfoService.ConstituteAll();
        System.out.println(coutConstitute);
        return ResponseData.okPage(page.getTotal(),coutConstitute);
    }
}
