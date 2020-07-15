package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.AvailabilityMonthStatisticsMapper;
import com.scada.project.statistics.domain.AvailabilityMonthStatistics;
import com.scada.project.statistics.service.IAvailabilityMonthStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 可利用率统计按月统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class AvailabilityMonthStatisticsServiceImpl implements IAvailabilityMonthStatisticsService 
{
    @Autowired
    private AvailabilityMonthStatisticsMapper availabilityMonthStatisticsMapper;

    /**
     * 查询可利用率统计按月统计
     * 
     * @param id 可利用率统计按月统计ID
     * @return 可利用率统计按月统计
     */
    @Override
    public AvailabilityMonthStatistics selectAvailabilityMonthStatisticsById(String id)
    {
        return availabilityMonthStatisticsMapper.selectAvailabilityMonthStatisticsById(id);
    }

    /**
     * 查询可利用率统计按月统计列表
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 可利用率统计按月统计
     */
    @Override
    public List<AvailabilityMonthStatistics> selectAvailabilityMonthStatisticsList(AvailabilityMonthStatistics availabilityMonthStatistics)
    {
        return availabilityMonthStatisticsMapper.selectAvailabilityMonthStatisticsList(availabilityMonthStatistics);
    }

    /**
     * 查询可利用率统计按月统计列表
     *
     * @return 可利用率统计按月统计
     */
    public List<AvailabilityMonthStatistics> selectTurbineAvailabilityMonthStatistics()
    {
        return availabilityMonthStatisticsMapper.selectTurbineAvailabilityStatisticsByMonth();
    }


    /**
     * 新增可利用率统计按月统计
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 结果
     */
    @Override
    public int insertAvailabilityMonthStatistics(AvailabilityMonthStatistics availabilityMonthStatistics)
    {
        return availabilityMonthStatisticsMapper.insertAvailabilityMonthStatistics(availabilityMonthStatistics);
    }

    /**
     * 修改可利用率统计按月统计
     * 
     * @param availabilityMonthStatistics 可利用率统计按月统计
     * @return 结果
     */
    @Override
    public int updateAvailabilityMonthStatistics(AvailabilityMonthStatistics availabilityMonthStatistics)
    {
        return availabilityMonthStatisticsMapper.updateAvailabilityMonthStatistics(availabilityMonthStatistics);
    }

    /**
     * 删除可利用率统计按月统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityMonthStatisticsByIds(String ids)
    {
        return availabilityMonthStatisticsMapper.deleteAvailabilityMonthStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除可利用率统计按月统计信息
     * 
     * @param id 可利用率统计按月统计ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityMonthStatisticsById(String id)
    {
        return availabilityMonthStatisticsMapper.deleteAvailabilityMonthStatisticsById(id);
    }
}
