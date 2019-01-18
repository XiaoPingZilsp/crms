package com.gdupt.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.vo.CoutConstitute;
import com.gdupt.entity.vo.CoutContribution;
import com.gdupt.mapper.CustomerInfoMapper;
import com.gdupt.service.ICustomerInfoService;
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
public class CustomerInfoServiceImpl extends ServiceImpl<CustomerInfoMapper, CustomerInfo> implements ICustomerInfoService {

    @Autowired
    CustomerInfoMapper customerInfoMapper;

    @Override
    public List<CoutConstitute> ConstituteAll() {
        return customerInfoMapper.ConstituteAll();
    }
    @Override
    public List<CustomerInfo> dataPage(IPage page) {
        return customerInfoMapper.dataPage(page);
    }
    @Override
    public List<CoutContribution> ContributionAll(String customerName,String  year) {
        return customerInfoMapper.ContributionAll(customerName,year);}

}
