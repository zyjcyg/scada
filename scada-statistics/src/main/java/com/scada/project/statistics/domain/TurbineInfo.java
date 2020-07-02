package com.scada.project.statistics.domain;

import com.scada.framework.aspectj.lang.annotation.Excel;
import com.scada.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 机组信息对象 t_turbine_info
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public class TurbineInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 索引 */
    private Long id;

    /** 机组ID */
    @Excel(name = "机组ID")
    private String turbineId;

    /** 类型 */
    @Excel(name = "类型")
    private String type;

    /** 容量 */
    @Excel(name = "容量")
    private Long capacity;

    /** 线路ID */
    @Excel(name = "线路ID")
    private Long lineId;

    /** IP地址 */
    @Excel(name = "IP地址")
    private String ip;

    /** 线路名称 */
    @Excel(name = "线路名称")
    private String lineName;

    /** 风场ID */
    @Excel(name = "风场ID")
    private Long windFieldId;

    /** 风场ID */
    @Excel(name = "风场ID")
    private String windFieldName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTurbineId(String turbineId) 
    {
        this.turbineId = turbineId;
    }

    public String getTurbineId() 
    {
        return turbineId;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setCapacity(Long capacity) 
    {
        this.capacity = capacity;
    }

    public Long getCapacity() 
    {
        return capacity;
    }
    public void setLineId(Long lineId) 
    {
        this.lineId = lineId;
    }

    public Long getLineId() 
    {
        return lineId;
    }
    public void setIp(String ip) 
    {
        this.ip = ip;
    }

    public String getIp() 
    {
        return ip;
    }
    public void setLineName(String lineName) 
    {
        this.lineName = lineName;
    }

    public String getLineName() 
    {
        return lineName;
    }
    public void setWindFieldId(Long windFieldId) 
    {
        this.windFieldId = windFieldId;
    }

    public Long getWindFieldId() 
    {
        return windFieldId;
    }
    public void setWindFieldName(String windFieldName) 
    {
        this.windFieldName = windFieldName;
    }

    public String getWindFieldName() 
    {
        return windFieldName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("turbineId", getTurbineId())
            .append("type", getType())
            .append("capacity", getCapacity())
            .append("lineId", getLineId())
            .append("ip", getIp())
            .append("lineName", getLineName())
            .append("windFieldId", getWindFieldId())
            .append("windFieldName", getWindFieldName())
            .toString();
    }
}
