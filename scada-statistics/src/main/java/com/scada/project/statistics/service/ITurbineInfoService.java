package com.scada.project.statistics.service;

import java.util.List;
import com.scada.project.statistics.domain.TurbineInfo;

/**
 * 机组信息Service接口
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public interface ITurbineInfoService 
{
    /**
     * 查询机组信息
     * 
     * @param id 机组信息ID
     * @return 机组信息
     */
    public TurbineInfo selectTurbineInfoById(Long id);

    /**
     * 查询机组信息列表
     * 
     * @param turbineInfo 机组信息
     * @return 机组信息集合
     */
    public List<TurbineInfo> selectTurbineInfoList(TurbineInfo turbineInfo);

    /**
     * 新增机组信息
     * 
     * @param turbineInfo 机组信息
     * @return 结果
     */
    public int insertTurbineInfo(TurbineInfo turbineInfo);

    /**
     * 修改机组信息
     * 
     * @param turbineInfo 机组信息
     * @return 结果
     */
    public int updateTurbineInfo(TurbineInfo turbineInfo);

    /**
     * 批量删除机组信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTurbineInfoByIds(String ids);

    /**
     * 删除机组信息信息
     * 
     * @param id 机组信息ID
     * @return 结果
     */
    public int deleteTurbineInfoById(Long id);
}
