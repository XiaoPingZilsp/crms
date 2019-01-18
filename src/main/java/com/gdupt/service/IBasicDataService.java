package com.gdupt.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.BasicData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-22
 */
public interface IBasicDataService extends IService<BasicData> {
    List<BasicData> dataPage(IPage page, @Param("search") String search);
    List<BasicData> selectslist(@Param("selects") String selects);
}
