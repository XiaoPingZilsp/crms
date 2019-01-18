package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.DrawPlan;
import com.gdupt.entity.SalesOpportunity;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.ICustomerInfoService;
import com.gdupt.service.IDrawPlanService;
import com.gdupt.service.ISalesOpportunityService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/sales-opportunity")
public class SalesOpportunityController {
    @Autowired
    private ISalesOpportunityService salesOpportunityService;
    @Autowired
    private ICustomerInfoService customerInfoService;

    @PostMapping("/save-edit")
    public ResponseData add(SalesOpportunity salesOpportunity) {
        boolean flg = salesOpportunityService.saveOrUpdate(salesOpportunity);

        if (flg) {
            return ResponseData.okMsg("操作成功");
        }
        return ResponseData.failMsg("操作失败");

    }

    @PostMapping("/update-edit")
    public ResponseData update(SalesOpportunity salesOpportunity) {
        System.out.println(salesOpportunity);
        salesOpportunity.setStatus("已指派");
        boolean flg = salesOpportunityService.saveOrUpdate(salesOpportunity);
        if (flg) {
            return ResponseData.okMsg("操作成功");
        }
        return ResponseData.failMsg("操作失败");

    }

    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){
        boolean flg=salesOpportunityService.removeById(id);
        if(flg){
            return ResponseData.okMsg("删除成功");
        }
        return ResponseData.failMsg("删除失败");
    }
    @RequestMapping("/findAll")
    public ResponseData findAll(Page page, @Param(value = "name") String name, @Param(value = "outline") String outline, @Param(value = "contacts") String contacts){
        List<SalesOpportunity> list=salesOpportunityService.findAll(page,name,outline,contacts);
        System.out.println(list);
        return ResponseData.okPage(page.getTotal(),list );
    }

    @RequestMapping("/editplan/{sigh}/{id}")
    public String message(HttpServletRequest request, @PathVariable("sigh") String sigh, @PathVariable("id") Integer id,CustomerInfo customerInfo){
        SalesOpportunity salesOpportunity = salesOpportunityService.getById(id);
        if (sigh.equals("endplan")){
            salesOpportunity.setStatus("开发失败");
            salesOpportunityService.saveOrUpdate(salesOpportunity);
        }else{
            salesOpportunity.setStatus("开发成功");
            salesOpportunityService.saveOrUpdate(salesOpportunity);
            customerInfo.setCustomerName(salesOpportunity.getName());
            customerInfo.setCustomerMgr(salesOpportunity.getContacts());
            customerInfo.setPhone(salesOpportunity.getContactsTel());
            customerInfoService.saveOrUpdate(customerInfo);
        }
        return "sales/planList";
    }
}