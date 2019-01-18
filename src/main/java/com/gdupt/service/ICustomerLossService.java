package com.gdupt.service;

import com.gdupt.entity.CustomerLoss;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.vo.CoutLoss;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface ICustomerLossService extends IService<CustomerLoss> {
    List<CustomerLoss> findLastOrderTime();

    List<CustomerLoss> findAllLoss(@Param("customerName") String customerName, @Param("customerMgr") String customerMgr, @Param("statuss") Integer statuss);

    boolean saveLoss(CustomerLoss customerLoss);



    boolean updatecomfirm(CustomerLoss customerLoss);

    boolean updatezanhuan(CustomerLoss customerLoss);

    List<CustomerLoss> findAll();


}
