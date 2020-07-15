package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.AvailabilityYearStatisticsMapper;
import com.scada.project.statistics.domain.AvailabilityYearStatistics;
import com.scada.project.statistics.service.IAvailabilityYearStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 可利用率统计按年统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class AvailabilityYearStatisticsServiceImpl implements IAvailabilityYearStatisticsService 
{
    @Autowired
    private AvailabilityYearStatisticsMapper availabilityYearStatisticsMapper;

    /**
     * 查询可利用率统计按年统计
     * 
     * @param id 可利用率统计按年统计ID
     * @return 可利用率统计按年统计
     */
    @Override
    public AvailabilityYearStatistics selectAvailabilityYearStatisticsById(String id)
    {
        return availabilityYearStatisticsMapper.selectAvailabilityYearStatisticsById(id);
    }

    /**
     * 查询可利用率统计按年统计列表
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 可利用率统计按年统计
     */
    @Override
    public List<AvailabilityYearStatistics> selectAvailabilityYearStatisticsList(AvailabilityYearStatistics availabilityYearStatistics)
    {
        return availabilityYearStatisticsMapper.selectAvailabilityYearStatisticsList(availabilityYearStatistics);
    }

    /**
     * 新增可利用率统计按年统计
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 结果
     */
    @Override
    public int insertAvailabilityYearStatistics(AvailabilityYearStatistics availabilityYearStatistics)
    {
        return availabilityYearStatisticsMapper.insertAvailabilityYearStatistics(availabilityYearStatistics);
    }

    /**
     * 查询可利用率统计按年统计列表
     *
     * @return 可利用率统计按年统计集合
     */
    public List<AvailabilityYearStatistics> selectTurbineAvailabilityYearStatistics()
    {
        return availabilityYearStatisticsMapper.selectTurbineAvailabilityStatisticsByYear();
    }

    /**
     * 修改可利用率统计按年统计
     * 
     * @param availabilityYearStatistics 可利用率统计按年统计
     * @return 结果
     */
    @Override
    public int updateAvailabilityYearStatistics(AvailabilityYearStatistics availabilityYearStatistics)
    {
        return availabilityYearStatisticsMapper.updateAvailabilityYearStatistics(availabilityYearStatistics);
    }

    /**
     * 删除可利用率统计按年统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityYearStatisticsByIds(String ids)
    {
        return availabilityYearStatisticsMapper.deleteAvailabilityYearStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除可利用率统计按年统计信息
     * 
     * @param id 可利用率统计按年统计ID
     * @return 结果
     */
    @Override
    public int deleteAvailabilityYearStatisticsById(String id)
    {
        return availabilityYearStatisticsMapper.deleteAvailabilityYearStatisticsById(id);
    }
}
