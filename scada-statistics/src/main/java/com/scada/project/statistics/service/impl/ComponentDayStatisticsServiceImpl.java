package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.ComponentDayStatisticsMapper;
import com.scada.project.statistics.domain.ComponentDayStatistics;
import com.scada.project.statistics.service.IComponentDayStatisticsService;
import com.scada.common.utils.text.Convert;

/**
 * 部件统计按天统计Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class ComponentDayStatisticsServiceImpl implements IComponentDayStatisticsService 
{
    @Autowired
    private ComponentDayStatisticsMapper componentDayStatisticsMapper;

    /**
     * 查询部件统计按天统计
     * 
     * @param id 部件统计按天统计ID
     * @return 部件统计按天统计
     */
    @Override
    public ComponentDayStatistics selectComponentDayStatisticsById(String id)
    {
        return componentDayStatisticsMapper.selectComponentDayStatisticsById(id);
    }

    /**
     * 查询部件统计按天统计列表
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 部件统计按天统计
     */
    @Override
    public List<ComponentDayStatistics> selectComponentDayStatisticsList(ComponentDayStatistics componentDayStatistics)
    {
        return componentDayStatisticsMapper.selectComponentDayStatisticsList(componentDayStatistics);
    }

    /**
     * 新增部件统计按天统计
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 结果
     */
    @Override
    public int insertComponentDayStatistics(ComponentDayStatistics componentDayStatistics)
    {
        return componentDayStatisticsMapper.insertComponentDayStatistics(componentDayStatistics);
    }

    /**
     * 修改部件统计按天统计
     * 
     * @param componentDayStatistics 部件统计按天统计
     * @return 结果
     */
    @Override
    public int updateComponentDayStatistics(ComponentDayStatistics componentDayStatistics)
    {
        return componentDayStatisticsMapper.updateComponentDayStatistics(componentDayStatistics);
    }

    /**
     * 删除部件统计按天统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteComponentDayStatisticsByIds(String ids)
    {
        return componentDayStatisticsMapper.deleteComponentDayStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除部件统计按天统计信息
     * 
     * @param id 部件统计按天统计ID
     * @return 结果
     */
    @Override
    public int deleteComponentDayStatisticsById(String id)
    {
        return componentDayStatisticsMapper.deleteComponentDayStatisticsById(id);
    }
}
