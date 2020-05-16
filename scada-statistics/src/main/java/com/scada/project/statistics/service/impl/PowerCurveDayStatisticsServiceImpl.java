package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.PowerCurveDayStatisticsMapper;
import com.scada.project.statistics.domain.PowerCurveDayStatistics;
import com.scada.project.statistics.service.IPowerCurveDayStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 功率统计按天统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
@Service
public class PowerCurveDayStatisticsServiceImpl implements IPowerCurveDayStatisticsService 
{
    @Autowired
    private PowerCurveDayStatisticsMapper powerCurveDayStatisticsMapper;

    /**
     * 查询功率统计按天统计
     * 
     * @param id 功率统计按天统计ID
     * @return 功率统计按天统计
     */
    @Override
    public PowerCurveDayStatistics selectPowerCurveDayStatisticsById(String id)
    {
        return powerCurveDayStatisticsMapper.selectPowerCurveDayStatisticsById(id);
    }

    /**
     * 查询功率统计按天统计列表
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 功率统计按天统计
     */
    @Override
    public List<PowerCurveDayStatistics> selectPowerCurveDayStatisticsList(PowerCurveDayStatistics powerCurveDayStatistics)
    {
        return powerCurveDayStatisticsMapper.selectPowerCurveDayStatisticsList(powerCurveDayStatistics);
    }

    /**
     * 新增功率统计按天统计
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 结果
     */
    @Override
    public int insertPowerCurveDayStatistics(PowerCurveDayStatistics powerCurveDayStatistics)
    {
        return powerCurveDayStatisticsMapper.insertPowerCurveDayStatistics(powerCurveDayStatistics);
    }

    /**
     * 修改功率统计按天统计
     * 
     * @param powerCurveDayStatistics 功率统计按天统计
     * @return 结果
     */
    @Override
    public int updatePowerCurveDayStatistics(PowerCurveDayStatistics powerCurveDayStatistics)
    {
        return powerCurveDayStatisticsMapper.updatePowerCurveDayStatistics(powerCurveDayStatistics);
    }

    /**
     * 删除功率统计按天统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePowerCurveDayStatisticsByIds(String ids)
    {
        return powerCurveDayStatisticsMapper.deletePowerCurveDayStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除功率统计按天统计信息
     * 
     * @param id 功率统计按天统计ID
     * @return 结果
     */
    @Override
    public int deletePowerCurveDayStatisticsById(String id)
    {
        return powerCurveDayStatisticsMapper.deletePowerCurveDayStatisticsById(id);
    }
}
