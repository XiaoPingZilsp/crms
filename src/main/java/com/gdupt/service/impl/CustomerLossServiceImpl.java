package com.gdupt.service.impl;

import com.gdupt.entity.CustomerLoss;
import com.gdupt.entity.vo.CoutLoss;
import com.gdupt.mapper.CustomerLossMapper;
import com.gdupt.service.ICustomerLossService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhy chg pxm lsp lpx xwy
 * @since 2018-11-22
 */
@Service
public class CustomerLossServiceImpl extends ServiceImpl<CustomerLossMapper, CustomerLoss> implements ICustomerLossService {

    @Autowired
    private CustomerLossMapper customerLossMapper;

    @Override
    public List<CustomerLoss> findLastOrderTime() {
        return customerLossMapper.findLastOrderTime();
    }

    @Override
    public List<CustomerLoss> findAllLoss(String customerName, String customerMgr, Integer statuss) {
        return customerLossMapper.findAllLoss(customerName, customerMgr, statuss);
    }
    @Override
    public boolean saveLoss(CustomerLoss customerLoss) {
        return customerLossMapper.saveLoss(customerLoss);
    }

    @Override
    public boolean updatecomfirm(CustomerLoss customerLoss) {
        return customerLossMapper.updatecomfirm(customerLoss);
    }

    @Override
    public boolean updatezanhuan(CustomerLoss customerLoss) {
        return customerLossMapper.updatezanhuan(customerLoss);
    }

    @Override
    public List<CustomerLoss> findAll() {
        return customerLossMapper.findAll();
    }


}
