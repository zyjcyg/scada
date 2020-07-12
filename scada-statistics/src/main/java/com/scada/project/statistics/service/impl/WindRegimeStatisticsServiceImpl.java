package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.WindRegimeStatisticsMapper;
import com.scada.project.statistics.domain.WindRegimeStatistics;
import com.scada.project.statistics.service.IWindRegimeStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 风况统计按天统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class WindRegimeStatisticsServiceImpl implements IWindRegimeStatisticsService 
{
    @Autowired
    private WindRegimeStatisticsMapper windRegimeStatisticsMapper;

    /**
     * 查询风况统计按天统计
     * 
     * @param id 风况统计按天统计ID
     * @return 风况统计按天统计
     */
    @Override
    public WindRegimeStatistics selectWindRegimeStatisticsById(String id)
    {
        return windRegimeStatisticsMapper.selectWindRegimeStatisticsById(id);
    }

    /**
     * 查询风况统计按天统计列表
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 风况统计按天统计
     */
    @Override
    public List<WindRegimeStatistics> selectWindRegimeStatisticsList(WindRegimeStatistics windRegimeStatistics)
    {
        return windRegimeStatisticsMapper.selectWindRegimeStatisticsList(windRegimeStatistics);
    }

    /**
     * 新增风况统计按天统计
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 结果
     */
    @Override
    public int insertWindRegimeStatistics(WindRegimeStatistics windRegimeStatistics)
    {
        return windRegimeStatisticsMapper.insertWindRegimeStatistics(windRegimeStatistics);
    }

    /**
     * 修改风况统计按天统计
     * 
     * @param windRegimeStatistics 风况统计按天统计
     * @return 结果
     */
    @Override
    public int updateWindRegimeStatistics(WindRegimeStatistics windRegimeStatistics)
    {
        return windRegimeStatisticsMapper.updateWindRegimeStatistics(windRegimeStatistics);
    }

    /**
     * 删除风况统计按天统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWindRegimeStatisticsByIds(String ids)
    {
        return windRegimeStatisticsMapper.deleteWindRegimeStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除风况统计按天统计信息
     * 
     * @param id 风况统计按天统计ID
     * @return 结果
     */
    @Override
    public int deleteWindRegimeStatisticsById(String id)
    {
        return windRegimeStatisticsMapper.deleteWindRegimeStatisticsById(id);
    }
}
