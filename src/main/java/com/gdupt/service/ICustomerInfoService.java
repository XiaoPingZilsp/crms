package com.gdupt.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.vo.CoutConstitute;
import com.gdupt.entity.vo.CoutContribution;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface ICustomerInfoService extends IService<CustomerInfo> {

    List<CoutConstitute> ConstituteAll();
    List<CustomerInfo> dataPage(IPage page);
    List<CoutContribution> ContributionAll(String customerName,String  year);
}
