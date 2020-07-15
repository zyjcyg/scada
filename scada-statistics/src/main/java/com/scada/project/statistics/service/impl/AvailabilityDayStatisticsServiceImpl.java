package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.AvailabilityDayStatisticsMapper;
import com.scada.project.statistics.domain.AvailabilityDayStatistics;
import com.scada.project.statistics.service.IAvailabilityDayStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 可利用率按天统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class AvailabilityDayStatisticsServiceImpl implements IAvailabilityDayStatisticsService 
{
    @Autowired
    private AvailabilityDayStatisticsMapper availabilityDayStatisticsMapper;

    /**
     * 查询可利用率按天统计
     * 
     * @param id 可利用率按天统计ID
     * @return 可利用率按天统计
     */
    @Override
    public AvailabilityDayStatistics selectAvailabilityDayStatisticsById(String id)
    {
        return availabilityDayStatisticsMapper.selectAvailabilityDayStatisticsById(id);
    }

    /**
     * 查询可利用率按天统计列表
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 可利用率按天统计
     */
    @Override
    public List<AvailabilityDayStatistics> selectAvailabilityDayStatisticsList(AvailabilityDayStatistics availabilityDayStatistics)
    {
        return availabilityDayStatisticsMapper.selectAvailabilityDayStatisticsList(availabilityDayStatistics);
    }

    /**
     * 查询可利用率按天统计列表
     *
     * @return 可利用率按天统计
     */
    @Override
    public List<AvailabilityDayStatistics> selectTurbineAvailabilityDayStatistics()
    {
        return availabilityDayStatisticsMapper.selectTurbineAvailabilityStatisticsByDay();
    }
    /**
     * 新增可利用率按天统计
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 结果
     */
    @Override
    public int insertAvailabilityDayStatistics(AvailabilityDayStatistics availabilityDayStatistics)
    {
        return availabilityDayStatisticsMapper.insertAvailabilityDayStatistics(availabilityDayStatistics);
    }

    /**
     * 修改可利用率按天统计
     * 
     * @param availabilityDayStatistics 可利用率按天统计
     * @return 结果
     */
    @Override
    public int updateAvailabilityDayStatistics(AvailabilityDayStatistics availabilityDayStatistics)
    {
        return availabilityDayStatisticsMapper.updateAvailabilityDayStatistics(availabilityDayStatistics);
    }

    /**
     * 删除可利用率按天统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityDayStatisticsByIds(String ids)
    {
        return availabilityDayStatisticsMapper.deleteAvailabilityDayStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除可利用率按天统计信息
     * 
     * @param id 可利用率按天统计ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityDayStatisticsById(String id)
    {
        return availabilityDayStatisticsMapper.deleteAvailabilityDayStatisticsById(id);
    }
}
