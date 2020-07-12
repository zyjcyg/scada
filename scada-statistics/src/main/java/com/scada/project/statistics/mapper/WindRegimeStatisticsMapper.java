package com.scada.project.statistics.mapper;

import java.util.List;
import com.scada.project.statistics.domain.WindRegimeStatistics;

/**
 * 风况统计按天统计Mapper接口
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public interface WindRegimeStatisticsMapper 
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
     * 删除风况统计按天统计
     * 
     * @param id 风况统计按天统计ID
     * @return 结果
     */
    public int deleteWindRegimeStatisticsById(String id);

    /**
     * 批量删除风况统计按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWindRegimeStatisticsByIds(String[] ids);
}
