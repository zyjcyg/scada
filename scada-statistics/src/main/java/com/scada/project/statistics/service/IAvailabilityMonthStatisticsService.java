package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.AvailabilityMonthStatistics;

/**
 * 可利用率统计按月统计Service接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface IAvailabilityMonthStatisticsService 
{
    /**
     * 查询可利用率统计按月统计
     * 
     * @param id 可利用率统计按月统计ID
     * @return 可利用率统计按月统计
     */
    public AvailabilityMonthStatistics selectAvailabilityMonthStatisticsById(String id);

    /**
     * 查询可利用率统计按月统计列表
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 可利用率统计按月统计集合
     */
    public List<AvailabilityMonthStatistics> selectAvailabilityMonthStatisticsList(AvailabilityMonthStatistics availabilityMonthStatistics);

    /**
     * 新增可利用率统计按月统计
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 结果
     */
    public int insertAvailabilityMonthStatistics(AvailabilityMonthStatistics availabilityMonthStatistics);

    /**
     * 修改可利用率统计按月统计
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 结果
     */
    public int updateAvailabilityMonthStatistics(AvailabilityMonthStatistics availabilityMonthStatistics);

    /**
     * 批量删除可利用率统计按月统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAvailabilityMonthStatisticsByIds(String ids);

    /**
     * 删除可利用率统计按月统计信息
     * 
     * @param id 可利用率统计按月统计ID
     * @return 结果
     */
    public int deleteAvailabilityMonthStatisticsById(String id);
}
