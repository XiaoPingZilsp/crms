package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.ServiceManagement;
import com.gdupt.entity.SystemUser;
import com.gdupt.entity.vo.CoutService;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IServiceManagementService;
import com.gdupt.service.ISystemUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/service-management")
public class ServiceManagementController {

    @Autowired
    private IServiceManagementService serviceManagementService;
    @Autowired
    private ISystemUserService userService;

    @RequestMapping(value = "/coutService")
    public ResponseData constituteList(Page page,@RequestParam(value = "age",required = false)String  age)
    {
        List<CoutService> coutService = serviceManagementService.ServiceAge(age);
        System.out.println(coutService);
        return ResponseData.okPage(page.getTotal(),coutService);
    }
    @RequestMapping("/list")
    public ResponseData list(Page page, @RequestParam(value = "search",required = false) String search){
        List<ServiceManagement> list =serviceManagementService .dataPage(page, search);
        return ResponseData.okPage(page.getTotal(),list);
    }


    @PostMapping("/type")
    public List<BasicData> type(){
        List<BasicData> list = serviceManagementService.findType();
        return list;
    }
    @PostMapping("/statuss")
    public List<BasicData> stauss(){
        List<BasicData> list = serviceManagementService.findStatuss();
        return list;
    }

    @PostMapping("/addService")
    public ResponseData addService(ServiceManagement serviceManagement, HttpServletRequest request){
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        CustomerInfo customer = serviceManagementService.findCustomerByName(serviceManagement.getCustomerName());

        if(systemUser!=null && customer!=null){
            serviceManagement.setCreationId(systemUser.getId());
            serviceManagement.setCreationName(name);
            serviceManagement.setCustomerId(customer.getCustomerId());
            serviceManagementService.addService(serviceManagement);
            return ResponseData.okMsg("添加服务成功！！");
        }
        return ResponseData.failMsg("客户不存在，请先核对客户信息！！");
    }
    @PostMapping("/editService")
    public ResponseData editService(ServiceManagement serviceManagement){
        CustomerInfo customer = serviceManagementService.findCustomerByName(serviceManagement.getCustomerName());
        serviceManagement.setCustomerId(customer.getCustomerId());
        boolean b = serviceManagementService.editService(serviceManagement);
        if (b){
            return ResponseData.okMsg("修改服务成功！！");
        }
        return ResponseData.failMsg("修改服务失败！！");
    }

    @PostMapping("/Customer")
    public List<CustomerInfo> findCustome(){
        List<CustomerInfo> list = serviceManagementService.findCustomer();
        return list;
    }
    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){
        boolean flg = serviceManagementService.removeById(id);
        if(flg){
            return ResponseData.okMsg("删除成功！！");
        }
        return ResponseData.failMsg("删除失败！！");
    }




}
