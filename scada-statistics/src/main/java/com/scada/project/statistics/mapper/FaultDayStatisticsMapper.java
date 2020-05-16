package com.scada.project.statistics.mapper;

import java.util.List;
import com.scada.project.statistics.domain.FaultDayStatistics;

/**
 * 故障统计按天统计Mapper接口
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public interface FaultDayStatisticsMapper 
{
    /**
     * 查询故障统计按天统计
     * 
     * @param id 故障统计按天统计ID
     * @return 故障统计按天统计
     */
    public FaultDayStatistics selectFaultDayStatisticsById(String id);

    /**
     * 查询故障统计按天统计列表
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 故障统计按天统计集合
     */
    public List<FaultDayStatistics> selectFaultDayStatisticsList(FaultDayStatistics faultDayStatistics);

    /**
     * 新增故障统计按天统计
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 结果
     */
    public int insertFaultDayStatistics(FaultDayStatistics faultDayStatistics);

    /**
     * 修改故障统计按天统计
     * 
     * @param faultDayStatistics 故障统计按天统计
     * @return 结果
     */
    public int updateFaultDayStatistics(FaultDayStatistics faultDayStatistics);

    /**
     * 删除故障统计按天统计
     * 
     * @param id 故障统计按天统计ID
     * @return 结果
     */
    public int deleteFaultDayStatisticsById(String id);

    /**
     * 批量删除故障统计按天统计
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFaultDayStatisticsByIds(String[] ids);
}
