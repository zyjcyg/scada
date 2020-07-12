package com.scada.project.statistics.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.scada.project.statistics.mapper.TurbineInfoMapper;
import com.scada.project.statistics.domain.TurbineInfo;
import com.scada.project.statistics.service.ITurbineInfoService;
import com.scada.common.utils.text.Convert;

/**
 * 机组信息Service业务层处理
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
@Service
public class TurbineInfoServiceImpl implements ITurbineInfoService 
{
    @Autowired
    private TurbineInfoMapper turbineInfoMapper;

    /**
     * 查询机组信息
     * 
     * @param id 机组信息ID
     * @return 机组信息
     */
    @Override
    public TurbineInfo selectTurbineInfoById(Long id)
    {
        return turbineInfoMapper.selectTurbineInfoById(id);
    }

    /**
     * 查询机组信息列表
     * 
     * @param turbineInfo 机组信息
     * @return 机组信息
     */
    @Override
    public List<TurbineInfo> selectTurbineInfoList(TurbineInfo turbineInfo)
    {
        return turbineInfoMapper.selectTurbineInfoList(turbineInfo);
    }

    /**
     * 新增机组信息
     * 
     * @param turbineInfo 机组信息
     * @return 结果
     */
    @Override
    public int insertTurbineInfo(TurbineInfo turbineInfo)
    {
        return turbineInfoMapper.insertTurbineInfo(turbineInfo);
    }

    /**
     * 修改机组信息
     * 
     * @param turbineInfo 机组信息
     * @return 结果
     */
    @Override
    public int updateTurbineInfo(TurbineInfo turbineInfo)
    {
        return turbineInfoMapper.updateTurbineInfo(turbineInfo);
    }

    /**
     * 删除机组信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTurbineInfoByIds(String ids)
    {
        return turbineInfoMapper.deleteTurbineInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除机组信息信息
     * 
     * @param id 机组信息ID
     * @return 结果
     */
    @Override
    public int deleteTurbineInfoById(Long id)
    {
        return turbineInfoMapper.deleteTurbineInfoById(id);
    }
}
