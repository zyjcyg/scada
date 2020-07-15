package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.FaultDayStatisticsMapper;
import com.scada.project.statistics.domain.FaultDayStatistics;
import com.scada.project.statistics.service.IFaultDayStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 故障统计按天统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-15
 */
@Service
public class FaultDayStatisticsServiceImpl implements IFaultDayStatisticsService 
{
    @Autowired
    private FaultDayStatisticsMapper faultDayStatisticsMapper;

    /**
     * 查询故障统计按天统计
     * 
     * @param id 故障统计按天统计ID
     * @return 故障统计按天统计
     */
    @Override
    public FaultDayStatistics selectFaultDayStatisticsById(String id)
    {
        return faultDayStatisticsMapper.selectFaultDayStatisticsById(id);
    }

    /**
     * 查询故障统计按天统计列表
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 故障统计按天统计
     */
    @Override
    public List<FaultDayStatistics> selectFaultDayStatisticsList(FaultDayStatistics faultDayStatistics)
    {
        return faultDayStatisticsMapper.selectFaultDayStatisticsList(faultDayStatistics);
    }

    /**
     * 查询故障统计按天统计列表
     *
     * @return 故障统计按天统计集合
     */
    public List<FaultDayStatistics> selectShutdownStatistics()
    {
        return  faultDayStatisticsMapper.selectShutdownStatistics();
    }

    /**
     * 新增故障统计按天统计
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 结果
     */
    @Override
    public int insertFaultDayStatistics(FaultDayStatistics faultDayStatistics)
    {
        return faultDayStatisticsMapper.insertFaultDayStatistics(faultDayStatistics);
    }

    /**
     * 修改故障统计按天统计
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 结果
     */
    @Override
    public int updateFaultDayStatistics(FaultDayStatistics faultDayStatistics)
    {
        return faultDayStatisticsMapper.updateFaultDayStatistics(faultDayStatistics);
    }

    /**
     * 删除故障统计按天统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteFaultDayStatisticsByIds(String ids)
    {
        return faultDayStatisticsMapper.deleteFaultDayStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除故障统计按天统计信息
     * 
     * @param id 故障统计按天统计ID
     * @return 结果
     */
    @Override
    public int deleteFaultDayStatisticsById(String id)
    {
        return faultDayStatisticsMapper.deleteFaultDayStatisticsById(id);
    }
}
