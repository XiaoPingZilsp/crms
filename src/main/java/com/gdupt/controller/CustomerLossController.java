package com.gdupt.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.CustomerLoss;
import com.gdupt.entity.vo.CoutLoss;
import com.gdupt.entity.vo.ResponseData;
import com.gdupt.service.ICustomerLossService;
import com.gdupt.service.impl.CustomerLossServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @since 2018-11-21
 */
@RestController
@RequestMapping("/customer-loss")
public class CustomerLossController {
    @Autowired
    private ICustomerLossService customerLossService;

    @RequestMapping("/list")
    public ResponseData add(Page page, @RequestParam(value = "customerName",required = false)String customerName,
                            @RequestParam(value = "customerMgr",required = false)String customerMgr,
                            @RequestParam(value = "statuss",required = false)Integer statuss){


        //获取最迟下订单时间以及客户信息
        List<CustomerLoss> timeList =customerLossService.findLastOrderTime();
       // timeList.forEach(System.out::println);

        //将list逐个转为数组
        CustomerLoss lossArray[]=new CustomerLoss[timeList.size()];
        for(int i=0;i<timeList.size();i++){
            //开始逐个转为数组
            lossArray[i] = timeList.get(i);

            //判断最迟下定单是否是6个月前
            Integer num = 180-lossArray[i].getTimeNum();

            //插入半个月没下订单的客户,如果已经存在，则不添加   满足则是超过6个月
            if(num<0){

                //查找所有客户流失表，用于判断流失表中是否以及存在该客户了
                List<CustomerLoss> lossList=customerLossService.findAll();
                //逐个将流失表的list转为数组
                CustomerLoss a[]=new CustomerLoss[lossList.size()];
                //用于判断是否是最后一个

                //开始转为数组
                int nu=1;
                //如果流失表没有数据，则直接新增
                if(lossList.size() ==0){
                    customerLossService.saveLoss(lossArray[i]);
                }
                for(int j=0;j<lossList.size();j++){
                    //逐个存为数组！！！
                    a[j]=lossList.get(j);

                    //此处的客户，是在流失表中的客户
                    Integer jj = a[j].getCustomerId();

                    //此处的客户，是6个月没有下订单的客户
                    Integer ii = lossArray[i].getCustomerId();

                    //判断，如果 6个月没下订单的客户编号在流失表中存在，则break
                    //      如果 拿这6个月没有下订单的客户与流失表中的所有客户比较后，没有相等的，则新增
                    if(a[j].getCustomerId() != lossArray[i].getCustomerId()){
                        //用于判断是不是与最后一个比较，需要与最后一个比较完，如果不存在该客户，则新增
                        //如果customerId不相等，则将系数自增，判断是否为最后一个，如果不是最后一个，则继续判断与下一个
                        if(nu == lossList.size()){
                            customerLossService.saveLoss(lossArray[i]);
                        }
                        nu++;
                    }else {
                        break;
                    }
                }
            }
        }
        List<CustomerLoss> loss =customerLossService.findAllLoss(customerName,customerMgr,statuss);
        //loss.forEach(System.out::println);
        return ResponseData.okPage(page.getTotal(),loss);
    }

    @PostMapping("/updatecomfirmliushi")
    public ResponseData updatecomfirmliushi(CustomerLoss customerLoss){

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        customerLoss.setLossTime(df.format(new Date()));

        System.out.println("!!!!!!!!!!!!!!!!"+customerLoss);

        boolean flg = customerLossService.updatecomfirm(customerLoss);
        if(flg){
            return ResponseData.okMsg("操作成功！！");
        }
        return ResponseData.failMsg("操作失败！！");

    }

    @PostMapping("/updatezanhuanliushi")
    public ResponseData updatezanhuanliushi(CustomerLoss customerLoss){
        customerLoss.setPauseWay(customerLoss.getPauseWay()+",追加暂缓措施:"+customerLoss.getAddPauseWay());
        boolean flg = customerLossService.updatezanhuan(customerLoss);
        if(flg){
            return ResponseData.okMsg("操作成功！！");
        }
        return ResponseData.failMsg("操作失败！！");

    }

    @RequestMapping(value = "/coutLost")
    public ResponseData constituteList(Page page, @Param(value = "customerName") String customerName,
                                       @RequestParam(value = "customerMgr",required = false)String customerMgr)
    {
        Integer statuss = 1;
        List<CustomerLoss> coutLoss = customerLossService.findAllLoss(customerName,customerMgr,statuss);
        System.out.println(coutLoss);
        return ResponseData.okPage(page.getTotal(),coutLoss);
    }


}
