package com.gdupt.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.gdupt.entity.RecordInfo;
import com.gdupt.mapper.RecordInfoMapper;
import com.gdupt.service.IRecordInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @since 2018-11-21
 */
@Service
public class RecordInfoServiceImpl extends ServiceImpl<RecordInfoMapper, RecordInfo> implements IRecordInfoService {
    @Autowired
    private RecordInfoMapper recordInfoMapper;

    @Override
    public List<RecordInfo> dataPage(IPage page, Integer id) {
        return recordInfoMapper.dataPage(page,id);
    }

    @Override
    public boolean saveRecord(RecordInfo recordInfo) {
        return recordInfoMapper.saveRecord(recordInfo);
    }
}
