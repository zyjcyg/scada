package com.scada.project.statistics.mapper;

import java.util.List;
import com.scada.project.statistics.domain.StateCodeLog;

/**
 * 状态码日志Mapper接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface StateCodeLogMapper 
{
    /**
     * 查询状态码日志
     * 
     * @param id 状态码日志ID
     * @return 状态码日志
     */
    public StateCodeLog selectStateCodeLogById(Long id);

    /**
     * 查询状态码日志列表
     * 
     * @param stateCodeLog 状态码日志
     * @return 状态码日志集合
     */
    public List<StateCodeLog> selectStateCodeLogList(StateCodeLog stateCodeLog);

    /**
     * 新增状态码日志
     * 
     * @param stateCodeLog 状态码日志
     * @return 结果
     */
    public int insertStateCodeLog(StateCodeLog stateCodeLog);

    /**
     * 修改状态码日志
     * 
     * @param stateCodeLog 状态码日志
     * @return 结果
     */
    public int updateStateCodeLog(StateCodeLog stateCodeLog);

    /**
     * 删除状态码日志
     * 
     * @param id 状态码日志ID
     * @return 结果
     */
    public int deleteStateCodeLogById(Long id);

    /**
     * 批量删除状态码日志
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStateCodeLogByIds(String[] ids);
}
