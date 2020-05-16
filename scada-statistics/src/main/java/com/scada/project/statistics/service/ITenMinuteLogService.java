package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.TenMinuteLog;

/**
 * 十分钟日志Service接口
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public interface ITenMinuteLogService 
{
    /**
     * 查询十分钟日志
     * 
     * @param id 十分钟日志ID
     * @return 十分钟日志
     */
    public TenMinuteLog selectTenMinuteLogById(Long id);

    /**
     * 查询十分钟日志列表
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 十分钟日志集合
     */
    public List<TenMinuteLog> selectTenMinuteLogList(TenMinuteLog tenMinuteLog);

    /**
     * 新增十分钟日志
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 结果
     */
    public int insertTenMinuteLog(TenMinuteLog tenMinuteLog);

    /**
     * 修改十分钟日志
     * 
     * @param tenMinuteLog 十分钟日志
     * @return 结果
     */
    public int updateTenMinuteLog(TenMinuteLog tenMinuteLog);

    /**
     * 批量删除十分钟日志
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTenMinuteLogByIds(String ids);

    /**
     * 删除十分钟日志信息
     * 
     * @param id 十分钟日志ID
     * @return 结果
     */
    public int deleteTenMinuteLogById(Long id);
}
