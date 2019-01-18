package com.gdupt.controller;


import com.gdupt.entity.CustomerLoss;
import com.gdupt.entity.SalesOpportunity;
import com.gdupt.entity.SystemUser;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.entity.vo.ServiceDeal;
import com.gdupt.service.ICustomerLossService;
import com.gdupt.service.IDrawPlanService;
import com.gdupt.service.IServiceUserAllotService;
import com.gdupt.service.ISystemUserService;
import com.gdupt.util.CaptchaUtil;
import com.gdupt.util.MD5Utils;
import com.sun.deploy.net.HttpResponse;
import com.sun.glass.ui.Window;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.awt.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@Controller
@RequestMapping("/system-user")
public class SystemUserController {

   @Autowired
    private ISystemUserService userService;
    @Autowired
    private IDrawPlanService drawPlanService;
    @Autowired
    private ICustomerLossService customerLossService;

    @Autowired
    private IServiceUserAllotService serviceUserAllotService;

    @RequestMapping("/check")
    public @ResponseBody ResponseData deptAndRole(String logName, String logPwd, String code, HttpServletRequest request){
        SystemUser systemUser = userService.check(logName);
        String pwd = MD5Utils.getStringMD5(logPwd);
        String randomString = (String) request.getSession().getAttribute("randomString");
        if(!randomString.equalsIgnoreCase(code)){
            return ResponseData.failMsg("验证码输入有误！");
        }
        if (systemUser!=null&&pwd.equals(systemUser.getLogPwd())){
            request.getSession().setAttribute("Name",systemUser.getName());
            return ResponseData.okMessage("登陆成功！！");
        }
        return ResponseData.failMsg("用户名或密码错误，请重新登录！！");

    }

    @GetMapping(value = "/captcha")
    @ResponseBody
    public void captcha(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        CaptchaUtil.outputCaptcha(request, response);
    }

    @GetMapping(value = "/exit")
    public String exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getSession().removeAttribute("Name");
        return "redirect:/login.jsp";
    }


    @RequestMapping(value = "/updatePsw")
    public @ResponseBody ResponseData  updatePsw(String oldPsw, String newPsw,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        if (systemUser.getLogPwd().equals(MD5Utils.getStringMD5(oldPsw))){
            userService.updatePsw(systemUser.getId(),MD5Utils.getStringMD5(newPsw));
            //JOptionPane.showMessageDialog(JOptionPane.getRootFrame(), "修改成功", "提示", JOptionPane.WARNING_MESSAGE);
            return ResponseData.okMessage("修改成功！！");
        }else {
            //JOptionPane.showMessageDialog(JOptionPane.getRootFrame(), "修改失败，旧密码错误", "提示", JOptionPane.ERROR_MESSAGE);
            return ResponseData.okMessage("修改失败，旧密码错误！！");
        }
       //return  "redirect:/views/updatePsw.jsp";


    }

    @GetMapping(value = "/welcome")
    public String welcome(HttpSession session, HttpServletResponse response) throws ServletException, IOException
    {
        String name = (String) session.getAttribute("Name");
        List<SalesOpportunity> planlist=drawPlanService.list(null,name,null,null,null);
        session.setAttribute("planlist",planlist);
        List<CustomerLoss> losslist =customerLossService.findAllLoss(null,null,0);
        session.setAttribute("losslist",losslist);
        List<ServiceDeal> dealListlist = serviceUserAllotService.findAll(null,name);
        session.setAttribute("dealListlist",dealListlist);
        List<ServiceDeal> feedBacklist = serviceUserAllotService.findFeedBack(null,name);
        session.setAttribute("feedBacklist",feedBacklist);
        return "welcome";
    }
}
