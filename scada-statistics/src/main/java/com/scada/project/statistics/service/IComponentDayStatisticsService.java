package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.ComponentDayStatistics;

/**
 * 部件统计按天统计Service接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface IComponentDayStatisticsService 
{
    /**
     * 查询部件统计按天统计
     * 
     * @param id 部件统计按天统计ID
     * @return 部件统计按天统计
     */
    public ComponentDayStatistics selectComponentDayStatisticsById(String id);

    /**
     * 查询部件统计按天统计列表
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 部件统计按天统计集合
     */
    public List<ComponentDayStatistics> selectComponentDayStatisticsList(ComponentDayStatistics componentDayStatistics);

    /**
     * 新增部件统计按天统计
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 结果
     */
    public int insertComponentDayStatistics(ComponentDayStatistics componentDayStatistics);

    /**
     * 修改部件统计按天统计
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 结果
     */
    public int updateComponentDayStatistics(ComponentDayStatistics componentDayStatistics);

    /**
     * 批量删除部件统计按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteComponentDayStatisticsByIds(String ids);

    /**
     * 删除部件统计按天统计信息
     * 
     * @param id 部件统计按天统计ID
     * @return 结果
     */
    public int deleteComponentDayStatisticsById(String id);
}
