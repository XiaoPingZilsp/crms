package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.*;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.entity.vo.ServiceDeal;
import com.gdupt.service.IServiceManagementService;
import com.gdupt.service.IServiceUserAllotService;
import com.gdupt.service.ISystemUserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-22
 */
@RestController
@RequestMapping("/service-user-allot")
public class ServiceUserAllotController {

    @Autowired
    private IServiceUserAllotService serviceUserAllotService;
    @Autowired
    private ISystemUserService userService;
    @Autowired
    private IServiceManagementService serviceManagementService;

    @PostMapping("/serviceHandle")
    public List<BasicData> type(){
        List<BasicData> list = serviceUserAllotService.findServiceHandle();
        return list;
    }
    @PostMapping("/ServiceAllot")
    public ResponseData addAllot(ServiceUserAllot serviceUserAllot, HttpServletRequest request){
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        serviceUserAllot.setUserId(systemUser.getId());
        try{
            boolean flg = serviceUserAllotService.addAllot(serviceUserAllot);
        }catch (Exception e){
            return ResponseData.failMsg("服务已经分配，不能再次添加分配！！");
        }
        ServiceManagement serviceManagement = new ServiceManagement();
        serviceManagement.setStatuss("已分配");
        serviceManagement.setId(serviceUserAllot.getServiceId());
        serviceUserAllotService.updateStatuss(serviceManagement);
        return ResponseData.okMsg("分配成功！！");

    }

    @RequestMapping(value="/addDeal",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData addDeal(@RequestBody ServiceUserAllot serviceUserAllot){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String handleTime = df.format(new Date());
        serviceUserAllot.setHandleTime(handleTime);
        try{
            boolean flg = serviceUserAllotService.addDeal(serviceUserAllot);
        }catch (Exception e){
            return ResponseData.failMsg("添加服务处理失败");
        }
        ServiceManagement serviceManagement = new ServiceManagement();
        serviceManagement.setStatuss("已处理");
        serviceManagement.setId(serviceUserAllot.getServiceId());
        serviceUserAllotService.updateStatuss(serviceManagement);
        return ResponseData.okMsg("添加服务处理成功");

    }

    @RequestMapping("/list")
    public ResponseData findAll(Page page,HttpServletRequest request){
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        List<ServiceDeal> list = serviceUserAllotService.findAll(page,systemUser.getName());
        return ResponseData.okPage(page.getTotal(),list);
    }
    @RequestMapping("/list2")
    public ResponseData findFile(Page page,@RequestParam(value = "customer",required = false) String customer, @RequestParam(value = "outline",required = false)String outline,
                                 @RequestParam(value = "serviceType",required = false)String serviceType){
        List<ServiceDeal> list = serviceUserAllotService.findFile(page,customer,outline,serviceType);
        return ResponseData.okPage(page.getTotal(),list);
    }
    @RequestMapping("/list3")
    public ResponseData findFeedBack(Page page,HttpServletRequest request){
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        List<ServiceDeal> list = serviceUserAllotService.findFeedBack(page,systemUser.getName());
        return ResponseData.okPage(page.getTotal(),list);
    }

    @PostMapping("satisfaction")
    public List<BasicData> findSatisfaction(){
        List<BasicData> list = serviceUserAllotService.findSatisfaction();
        return list;
    }

    @RequestMapping(value="/addResult",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData addFeed(@RequestBody ServiceUserAllot serviceUserAllot, String satisfaction){
        try{
            boolean flg = serviceUserAllotService.addResult(serviceUserAllot);
        }catch (Exception e){
            return ResponseData.failMsg("添加服务反馈失败");
        }
        satisfaction = serviceUserAllot.getSatisfaction();
        if(satisfaction.equals("★★★★☆") || satisfaction.equals("★★★★★") ){
            ServiceManagement serviceManagement = new ServiceManagement();
            serviceManagement.setStatuss("已归档");
            serviceManagement.setId(serviceUserAllot.getServiceId());
            serviceUserAllotService.updateStatuss(serviceManagement);
        }else{
            ServiceManagement serviceManagement = new ServiceManagement();
            serviceManagement.setStatuss("处理不及格");
            serviceManagement.setId(serviceUserAllot.getServiceId());
            serviceUserAllotService.updateStatuss(serviceManagement);
        }
        return ResponseData.okMsg("添加服务反馈成功");
    }

}
