package com.gdupt.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.gdupt.entity.RecordInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @since 2018-11-21
 */
public interface IRecordInfoService extends IService<RecordInfo> {
    List<RecordInfo> dataPage(IPage page, @Param("id") Integer id);
    boolean saveRecord(@Param("recordInfo") RecordInfo recordInfo);
}
