package com.scada.project.statistics.service.impl;

import java.util.List;
import com.scada.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.MainStateLogMapper;
import com.scada.project.statistics.domain.MainStateLog;
import com.scada.project.statistics.service.IMainStateLogService;
import com.scada.common.utils.text.Convert;

/**
 * 主状态日志Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class MainStateLogServiceImpl implements IMainStateLogService 
{
    @Autowired
    private MainStateLogMapper mainStateLogMapper;

    /**
     * 查询主状态日志
     * 
     * @param id 主状态日志ID
     * @return 主状态日志
     */
    @Override
    public MainStateLog selectMainStateLogById(Long id)
    {
        return mainStateLogMapper.selectMainStateLogById(id);
    }

    /**
     * 查询主状态日志列表
     * 
     * @param mainStateLog 主状态日志
     * @return 主状态日志
     */
    @Override
    public List<MainStateLog> selectMainStateLogList(MainStateLog mainStateLog)
    {
        return mainStateLogMapper.selectMainStateLogList(mainStateLog);
    }

    /**
     * 新增主状态日志
     * 
     * @param mainStateLog 主状态日志
     * @return 结果
     */
    @Override
    public int insertMainStateLog(MainStateLog mainStateLog)
    {
        mainStateLog.setCreateTime(DateUtils.getNowDate());
        return mainStateLogMapper.insertMainStateLog(mainStateLog);
    }

    /**
     * 修改主状态日志
     * 
     * @param mainStateLog 主状态日志
     * @return 结果
     */
    @Override
    public int updateMainStateLog(MainStateLog mainStateLog)
    {
        return mainStateLogMapper.updateMainStateLog(mainStateLog);
    }

    /**
     * 删除主状态日志对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMainStateLogByIds(String ids)
    {
        return mainStateLogMapper.deleteMainStateLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除主状态日志信息
     * 
     * @param id 主状态日志ID
     * @return 结果
     */
    @Override
    public int deleteMainStateLogById(Long id)
    {
        return mainStateLogMapper.deleteMainStateLogById(id);
    }
}
