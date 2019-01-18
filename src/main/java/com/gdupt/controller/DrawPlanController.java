package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.DrawPlan;
import com.gdupt.entity.SalesOpportunity;
import com.gdupt.entity.SystemUser;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IDrawPlanService;
import com.gdupt.service.ISystemUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
@Controller
@RequestMapping("/draw-plan")
public class DrawPlanController {
    @Autowired
    private IDrawPlanService drawPlanService;
    @Autowired
    private ISystemUserService userService;

    @RequestMapping("/selectItem/{sigh}/{id}")
    public String selectItem(HttpServletRequest request, @PathVariable("sigh") String sigh,@PathVariable("id") Integer id){
        List<DrawPlan> list=drawPlanService.selectItem(id);
        System.out.println(list);
        request.getSession().setAttribute("list",list);
        if (sigh.equals("execute")){
            return "sales/executeplan";
        }else if (sigh.equals("read")){
            return "sales/readplan";
        }
        return "sales/drawplan";
    }

    @RequestMapping("/list")
    public @ResponseBody ResponseData list(Page page, HttpServletRequest request, String name, String outline, String contacts){
        String username = (String) request.getSession().getAttribute("Name");
        List<SalesOpportunity> list=drawPlanService.list(page,username,name,outline,contacts);
        System.out.println(list);
        return ResponseData.okPage(page.getTotal(),list );
    }

    @RequestMapping(value = "/save-plan",method = RequestMethod.POST)
    @ResponseBody
    public  ResponseData add(@RequestBody DrawPlan drawPlan,HttpServletRequest request){
        String name = (String) request.getSession().getAttribute("Name");
        SystemUser systemUser = userService.selectInfo(name);
        drawPlan.setFoundId(systemUser.getId());
        drawPlan.setFounder(name);
        boolean b = drawPlanService.saveOrUpdate(drawPlan);
        if (b){
            return ResponseData.okMessage("添加成功");
        }
        return ResponseData.failMsg("添加失败");
    }

    @RequestMapping(value = "/del-plan/{id}",method = RequestMethod.POST)
    @ResponseBody
    public  ResponseData del(@PathVariable("id") Integer id,DrawPlan drawPlan, HttpSession session){
        drawPlan = drawPlanService.getById(id);
        boolean b = drawPlanService.removeById(id);
        if (b){
            List<DrawPlan> list=drawPlanService.selectItem(drawPlan.getOpportunityId());
            session.setAttribute("list",list);
            System.out.println(list);
            return ResponseData.okMessage("删除成功");
        }
        return ResponseData.failMsg("删除失败");
    }

    @PostMapping("/saveitem_plan/draw/{id}/{planItem}")
    @ResponseBody
    public  ResponseData update(@PathVariable("id") Integer id,@PathVariable("planItem") String planItem, HttpSession session){
        DrawPlan drawPlan1 = drawPlanService.getById(id);
        drawPlan1.setPlanItem(planItem);
        boolean b = drawPlanService.saveOrUpdate(drawPlan1);
        if (b){
            List<DrawPlan> list=drawPlanService.selectItem(drawPlan1.getOpportunityId());
            session.setAttribute("list",list);
            return ResponseData.okMessage("保存成功");
        }
        return ResponseData.failMsg("保存失败");
    }

    @PostMapping("/saveitem_plan/execute/{id}/{result}")
    @ResponseBody
    public  ResponseData update2(@PathVariable("id") Integer id, @PathVariable("result") String result, HttpSession session){
        DrawPlan drawPlan1 = drawPlanService.getById(id);
        drawPlan1.setResult(result);
        boolean b = drawPlanService.saveOrUpdate(drawPlan1);
        if (b){
            List<DrawPlan> list=drawPlanService.selectItem(drawPlan1.getOpportunityId());
            session.setAttribute("list",list);
            return ResponseData.okMessage("保存成功");
        }
        return ResponseData.failMsg("保存失败");

       /* DrawPlan drawPlan1 = drawPlanService.getById(drawPlan.getId());
        drawPlan1.setResult(drawPlan.getResult());
        drawPlanService.saveOrUpdate(drawPlan1);
        return "redirect:/draw-plan/selectItem/execute/"+drawPlan1.getOpportunityId();*/
    }

}
