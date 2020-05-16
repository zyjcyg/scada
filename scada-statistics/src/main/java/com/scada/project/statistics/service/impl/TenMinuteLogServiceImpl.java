package com.scada.project.statistics.service.impl;

import java.util.List;
import com.scada.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.TenMinuteLogMapper;
import com.scada.project.statistics.domain.TenMinuteLog;
import com.scada.project.statistics.service.ITenMinuteLogService;
import com.scada.common.utils.text.Convert;

/**
 * 十分钟日志Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
@Service
public class TenMinuteLogServiceImpl implements ITenMinuteLogService 
{
    @Autowired
    private TenMinuteLogMapper tenMinuteLogMapper;

    /**
     * 查询十分钟日志
     * 
     * @param id 十分钟日志ID
     * @return 十分钟日志
     */
    @Override
    public TenMinuteLog selectTenMinuteLogById(Long id)
    {
        return tenMinuteLogMapper.selectTenMinuteLogById(id);
    }

    /**
     * 查询十分钟日志列表
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 十分钟日志
     */
    @Override
    public List<TenMinuteLog> selectTenMinuteLogList(TenMinuteLog tenMinuteLog)
    {
        return tenMinuteLogMapper.selectTenMinuteLogList(tenMinuteLog);
    }

    /**
     * 新增十分钟日志
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 结果
     */
    @Override
    public int insertTenMinuteLog(TenMinuteLog tenMinuteLog)
    {
        tenMinuteLog.setCreateTime(DateUtils.getNowDate());
        return tenMinuteLogMapper.insertTenMinuteLog(tenMinuteLog);
    }

    /**
     * 修改十分钟日志
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 结果
     */
    @Override
    public int updateTenMinuteLog(TenMinuteLog tenMinuteLog)
    {
        return tenMinuteLogMapper.updateTenMinuteLog(tenMinuteLog);
    }

    /**
     * 删除十分钟日志对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTenMinuteLogByIds(String ids)
    {
        return tenMinuteLogMapper.deleteTenMinuteLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除十分钟日志信息
     * 
     * @param id 十分钟日志ID
     * @return 结果
     */
    @Override
    public int deleteTenMinuteLogById(Long id)
    {
        return tenMinuteLogMapper.deleteTenMinuteLogById(id);
    }
}
