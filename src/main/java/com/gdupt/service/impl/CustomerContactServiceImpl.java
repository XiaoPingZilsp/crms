package com.gdupt.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.CustomerContact;
import com.gdupt.mapper.CustomerContactMapper;
import com.gdupt.service.ICustomerContactService;
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
public class CustomerContactServiceImpl extends ServiceImpl<CustomerContactMapper, CustomerContact> implements ICustomerContactService {
    @Autowired
    private CustomerContactMapper customerContactMapper;

    @Override
    public List<CustomerContact> selectByCid(@Param("customerId") Integer id,Page page){
        return customerContactMapper.selectByCid(id,page);
    }
    @Override
    public List<CustomerContact> selectslist(String selects) {
        return customerContactMapper.selectslist(selects);
    }
}
