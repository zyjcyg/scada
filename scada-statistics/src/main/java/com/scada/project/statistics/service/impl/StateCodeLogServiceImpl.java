package com.scada.project.statistics.service.impl;

import java.util.List;
import com.scada.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.StateCodeLogMapper;
import com.scada.project.statistics.domain.StateCodeLog;
import com.scada.project.statistics.service.IStateCodeLogService;
import com.scada.common.utils.text.Convert;

/**
 * 状态码日志Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
@Service
public class StateCodeLogServiceImpl implements IStateCodeLogService 
{
    @Autowired
    private StateCodeLogMapper stateCodeLogMapper;

    /**
     * 查询状态码日志
     * 
     * @param id 状态码日志ID
     * @return 状态码日志
     */
    @Override
    public StateCodeLog selectStateCodeLogById(Long id)
    {
        return stateCodeLogMapper.selectStateCodeLogById(id);
    }

    /**
     * 查询状态码日志列表
     * 
     * @param stateCodeLog 状态码日志
     * @return 状态码日志
     */
    @Override
    public List<StateCodeLog> selectStateCodeLogList(StateCodeLog stateCodeLog)
    {
        return stateCodeLogMapper.selectStateCodeLogList(stateCodeLog);
    }

    /**
     * 新增状态码日志
     * 
     * @param stateCodeLog 状态码日志
     * @return 结果
     */
    @Override
    public int insertStateCodeLog(StateCodeLog stateCodeLog)
    {
        stateCodeLog.setCreateTime(DateUtils.getNowDate());
        return stateCodeLogMapper.insertStateCodeLog(stateCodeLog);
    }

    /**
     * 修改状态码日志
     * 
     * @param stateCodeLog 状态码日志
     * @return 结果
     */
    @Override
    public int updateStateCodeLog(StateCodeLog stateCodeLog)
    {
        return stateCodeLogMapper.updateStateCodeLog(stateCodeLog);
    }

    /**
     * 删除状态码日志对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStateCodeLogByIds(String ids)
    {
        return stateCodeLogMapper.deleteStateCodeLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除状态码日志信息
     * 
     * @param id 状态码日志ID
     * @return 结果
     */
    @Override
    public int deleteStateCodeLogById(Long id)
    {
        return stateCodeLogMapper.deleteStateCodeLogById(id);
    }
}
