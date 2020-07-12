package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.PowerCurveDayStatistics;

/**
 * 功率统计按天统计Service接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface IPowerCurveDayStatisticsService 
{
    /**
     * 查询功率统计按天统计
     * 
     * @param id 功率统计按天统计ID
     * @return 功率统计按天统计
     */
    public PowerCurveDayStatistics selectPowerCurveDayStatisticsById(String id);

    /**
     * 查询功率统计按天统计列表
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 功率统计按天统计集合
     */
    public List<PowerCurveDayStatistics> selectPowerCurveDayStatisticsList(PowerCurveDayStatistics powerCurveDayStatistics);

    /**
     * 新增功率统计按天统计
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 结果
     */
    public int insertPowerCurveDayStatistics(PowerCurveDayStatistics powerCurveDayStatistics);

    /**
     * 修改功率统计按天统计
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 结果
     */
    public int updatePowerCurveDayStatistics(PowerCurveDayStatistics powerCurveDayStatistics);

    /**
     * 批量删除功率统计按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePowerCurveDayStatisticsByIds(String ids);

    /**
     * 删除功率统计按天统计信息
     * 
     * @param id 功率统计按天统计ID
     * @return 结果
     */
    public int deletePowerCurveDayStatisticsById(String id);
}
