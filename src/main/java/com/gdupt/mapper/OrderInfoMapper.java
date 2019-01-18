package com.gdupt.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.gdupt.entity.OrderHistory;
import com.gdupt.entity.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @since 2018-11-21
 */
public interface OrderInfoMapper extends BaseMapper<OrderInfo> {

    List<OrderInfo> dataPage(IPage page, @Param("id") Integer id);

}
