package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.CustomerInfo;
import com.gdupt.entity.vo.CoutConstitute;
import com.gdupt.entity.vo.CoutContribution;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface CustomerInfoMapper extends BaseMapper<CustomerInfo> {

    List<CoutConstitute> ConstituteAll();
    List<CustomerInfo> dataPage(IPage page);
    List<CoutContribution> ContributionAll(@Param("customerName")String customerName,@Param(value = "year")String  year);
}
