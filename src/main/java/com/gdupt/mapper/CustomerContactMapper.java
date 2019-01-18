package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdupt.entity.CustomerContact;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface CustomerContactMapper extends BaseMapper<CustomerContact> {
    List<CustomerContact> selectByCid(@Param("customerId") Integer id,Page page);
    List<CustomerContact> selectslist(@Param("selects") String selects);
}
