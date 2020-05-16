package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.WindRegimeStatistics;

/**
 * 风况统计按天统计Service接口
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public interface IWindRegimeStatisticsService 
{
    /**
     * 查询风况统计按天统计
     * 
     * @param id 风况统计按天统计ID
     * @return 风况统计按天统计
     */
    public WindRegimeStatistics selectWindRegimeStatisticsById(String id);

    /**
     * 查询风况统计按天统计列表
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 风况统计按天统计集合
     */
    public List<WindRegimeStatistics> selectWindRegimeStatisticsList(WindRegimeStatistics windRegimeStatistics);

    /**
     * 新增风况统计按天统计
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 结果
     */
    public int insertWindRegimeStatistics(WindRegimeStatistics windRegimeStatistics);

    /**
     * 修改风况统计按天统计
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 结果
     */
    public int updateWindRegimeStatistics(WindRegimeStatistics windRegimeStatistics);

    /**
     * 批量删除风况统计按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWindRegimeStatisticsByIds(String ids);

    /**
     * 删除风况统计按天统计信息
     * 
     * @param id 风况统计按天统计ID
     * @return 结果
     */
    public int deleteWindRegimeStatisticsById(String id);
}
