package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.AvailabilityYearStatistics;

/**
 * 可利用率统计按年统计Service接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface IAvailabilityYearStatisticsService 
{
    /**
     * 查询可利用率统计按年统计
     * 
     * @param id 可利用率统计按年统计ID
     * @return 可利用率统计按年统计
     */
    public AvailabilityYearStatistics selectAvailabilityYearStatisticsById(String id);

    /**
     * 查询可利用率统计按年统计列表
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 可利用率统计按年统计集合
     */
    public List<AvailabilityYearStatistics> selectAvailabilityYearStatisticsList(AvailabilityYearStatistics availabilityYearStatistics);

    /**
     * 查询可利用率统计按年统计列表
     *
     * @return 可利用率统计按年统计集合
     */
    public List<AvailabilityYearStatistics> selectTurbineAvailabilityYearStatistics();

    /**
     * 新增可利用率统计按年统计
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 结果
     */
    public int insertAvailabilityYearStatistics(AvailabilityYearStatistics availabilityYearStatistics);

    /**
     * 修改可利用率统计按年统计
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 结果
     */
    public int updateAvailabilityYearStatistics(AvailabilityYearStatistics availabilityYearStatistics);

    /**
     * 批量删除可利用率统计按年统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAvailabilityYearStatisticsByIds(String ids);

    /**
     * 删除可利用率统计按年统计信息
     * 
     * @param id 可利用率统计按年统计ID
     * @return 结果
     */
    public int deleteAvailabilityYearStatisticsById(String id);
}
