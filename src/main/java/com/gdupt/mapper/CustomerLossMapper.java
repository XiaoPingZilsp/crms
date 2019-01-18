package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gdupt.entity.CustomerContact;
import com.gdupt.entity.CustomerLoss;
import com.gdupt.entity.vo.CoutLoss;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface CustomerLossMapper extends BaseMapper<CustomerLoss> {
    List<CustomerLoss> findLastOrderTime();
    List<CustomerLoss> findAllLoss(@Param("customerName") String customerName, @Param("customerMgr") String customerMgr, @Param("statuss") Integer statuss);
    boolean saveLoss(CustomerLoss customerLoss);


    boolean updatecomfirm(CustomerLoss customerLoss);

    boolean updatezanhuan(CustomerLoss customerLoss);

    List<CustomerLoss> findAll();

}
