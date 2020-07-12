package com.scada.project.statistics.mapper;

import java.util.List;
import com.scada.project.statistics.domain.MainStateLog;

/**
 * 主状态日志Mapper接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface MainStateLogMapper 
{
    /**
     * 查询主状态日志
     * 
     * @param id 主状态日志ID
     * @return 主状态日志
     */
    public MainStateLog selectMainStateLogById(Long id);

    /**
     * 查询主状态日志列表
     * 
     * @param mainStateLog 主状态日志
     * @return 主状态日志集合
     */
    public List<MainStateLog> selectMainStateLogList(MainStateLog mainStateLog);

    /**
     * 新增主状态日志
     * 
     * @param mainStateLog 主状态日志
     * @return 结果
     */
    public int insertMainStateLog(MainStateLog mainStateLog);

    /**
     * 修改主状态日志
     * 
     * @param mainStateLog 主状态日志
     * @return 结果
     */
    public int updateMainStateLog(MainStateLog mainStateLog);

    /**
     * 删除主状态日志
     * 
     * @param id 主状态日志ID
     * @return 结果
     */
    public int deleteMainStateLogById(Long id);

    /**
     * 批量删除主状态日志
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMainStateLogByIds(String[] ids);
}
