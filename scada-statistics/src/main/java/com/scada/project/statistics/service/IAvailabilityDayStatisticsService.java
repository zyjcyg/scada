package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.AvailabilityDayStatistics;

/**
 * 可利用率按天统计Service接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface IAvailabilityDayStatisticsService 
{
    /**
     * 查询可利用率按天统计
     * 
     * @param id 可利用率按天统计ID
     * @return 可利用率按天统计
     */
    public AvailabilityDayStatistics selectAvailabilityDayStatisticsById(String id);

    /**
     * 查询可利用率按天统计列表
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 可利用率按天统计集合
     */
    public List<AvailabilityDayStatistics> selectAvailabilityDayStatisticsList(AvailabilityDayStatistics availabilityDayStatistics);

    /**
     * 查询可利用率按天统计列表
     *
     * @return 可利用率按天统计集合
     */
    public List<AvailabilityDayStatistics> selectTurbineAvailabilityDayStatistics();

    /**
     * 新增可利用率按天统计
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 结果
     */
    public int insertAvailabilityDayStatistics(AvailabilityDayStatistics availabilityDayStatistics);

    /**
     * 修改可利用率按天统计
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 结果
     */
    public int updateAvailabilityDayStatistics(AvailabilityDayStatistics availabilityDayStatistics);

    /**
     * 批量删除可利用率按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAvailabilityDayStatisticsByIds(String ids);

    /**
     * 删除可利用率按天统计信息
     * 
     * @param id 可利用率按天统计ID
     * @return 结果
     */
    public int deleteAvailabilityDayStatisticsById(String id);
}
