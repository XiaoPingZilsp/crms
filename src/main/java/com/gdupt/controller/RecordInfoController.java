package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.RecordInfo;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.IRecordInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/record-info")
public class RecordInfoController {

    @Autowired
    private IRecordInfoService recordInfoService;

    @RequestMapping("/list/{id}")
    public ResponseData list(Page page, @PathVariable("id") Integer id){
        List<RecordInfo> list =recordInfoService .dataPage(page, id);
        return ResponseData.okPage(page.getTotal(),list);
    }

    @PostMapping("/save-edit")
    public ResponseData saveOrEdit(RecordInfo recordInfo) {
        boolean flg=false;
        flg = recordInfoService.saveOrUpdate(recordInfo);
        if(flg){
            return ResponseData.okMsg("操作成功！！");
        }
            return ResponseData.failMsg("操作失败！！");
    }

    @PostMapping("/del/{id}")
    public ResponseData del(@PathVariable("id") Integer id){
        boolean flg = recordInfoService.removeById(id);
        if(flg){
            return ResponseData.okMsg("删除成功！！");
        }
        return ResponseData.failMsg("删除失败！！");
    }

}
