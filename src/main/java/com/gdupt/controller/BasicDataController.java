package com.gdupt.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.BasicData;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IBasicDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-22
 */
@RestController
@RequestMapping("/basic-data")
public class BasicDataController {
  @Autowired
    private IBasicDataService basicDataService;

    @RequestMapping("/list")
    public ResponseData list(Page page, @RequestParam(value = "search",required = false) String search){
        List<BasicData> list =basicDataService .dataPage(page, search);
        return ResponseData.okPage(page.getTotal(),list);
    }

    @PostMapping("/save-edit")
    public ResponseData saveOrEdit(BasicData basicData){
        System.out.println(basicData);
       boolean flg = basicDataService.saveOrUpdate(basicData);
        if(flg){
            return ResponseData.okMsg("操作成功！！");
        }
        return ResponseData.failMsg("操作失败！！");

    }

    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){

        System.out.println("删除"+id);
        boolean flg = basicDataService.removeById(id);
        System.out.println("删除"+flg);
        if(flg){
            return ResponseData.okMsg("删除成功！！");
        }
        return ResponseData.failMsg("删除失败！！");
    }



}
