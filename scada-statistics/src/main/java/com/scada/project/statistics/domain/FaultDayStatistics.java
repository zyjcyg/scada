package com.scada.project.statistics.domain;

import java.util.Date;
import com.scada.framework.aspectj.lang.annotation.Excel;
import com.scada.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 故障统计按天统计对象 t_fault_day_statistics
 * 
 * @author 张继勇
 * @date 2020-07-15
 */
public class FaultDayStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private String id;

    /** 风场ID */
    @Excel(name = "风场ID")
    private Long windFieldId;

    /** 风场名称 */
    @Excel(name = "风场名称")
    private String windFieldName;

    /** 线路ID */
    @Excel(name = "线路ID")
    private Long lineId;

    /** 线路名称 */
    @Excel(name = "线路名称")
    private String lineName;

    /** 机组ID */
    @Excel(name = "机组ID")
    private String turbineId;

    /** 机组名称 */
    @Excel(name = "机组名称")
    private String turbineName;

    /** 停机时间 */
    @Excel(name = "停机时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date stopTime;

    /** 停机时长 */
    @Excel(name = "停机时长")
    private Double stopTimeLength;

    /** 停机类别 */
    @Excel(name = "停机类别")
    private String stopCategory;

    /** 停机状态码 */
    @Excel(name = "停机状态码")
    private Long stopStateCode;

    /** 停机状态名称 */
    @Excel(name = "停机状态名称")
    private String stopStateName;

    /** 统计时长 */
    @Excel(name = "统计时长")
    private Double statisticalTimeLength;

    /** 统计时间 */
    @Excel(name = "统计时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date statisticalTime;

    /** 计算时间 */
    @Excel(name = "计算时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date computingTime;

    /** 备用字段1 */
    @Excel(name = "备用字段1")
    private String alternateField1;

    /** 备用字段2 */
    @Excel(name = "备用字段2")
    private String alternateField2;

    /** 备用字段3 */
    @Excel(name = "备用字段3")
    private String alternateField3;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
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
    public void setLineId(Long lineId) 
    {
        this.lineId = lineId;
    }

    public Long getLineId() 
    {
        return lineId;
    }
    public void setLineName(String lineName) 
    {
        this.lineName = lineName;
    }

    public String getLineName() 
    {
        return lineName;
    }
    public void setTurbineId(String turbineId) 
    {
        this.turbineId = turbineId;
    }

    public String getTurbineId() 
    {
        return turbineId;
    }
    public void setTurbineName(String turbineName) 
    {
        this.turbineName = turbineName;
    }

    public String getTurbineName() 
    {
        return turbineName;
    }
    public void setStopTime(Date stopTime) 
    {
        this.stopTime = stopTime;
    }

    public Date getStopTime() 
    {
        return stopTime;
    }
    public void setStopTimeLength(Double stopTimeLength) 
    {
        this.stopTimeLength = stopTimeLength;
    }

    public Double getStopTimeLength() 
    {
        return stopTimeLength;
    }
    public void setStopCategory(String stopCategory) 
    {
        this.stopCategory = stopCategory;
    }

    public String getStopCategory() 
    {
        return stopCategory;
    }
    public void setStopStateCode(Long stopStateCode) 
    {
        this.stopStateCode = stopStateCode;
    }

    public Long getStopStateCode() 
    {
        return stopStateCode;
    }
    public void setStopStateName(String stopStateName) 
    {
        this.stopStateName = stopStateName;
    }

    public String getStopStateName() 
    {
        return stopStateName;
    }
    public void setStatisticalTimeLength(Double statisticalTimeLength) 
    {
        this.statisticalTimeLength = statisticalTimeLength;
    }

    public Double getStatisticalTimeLength() 
    {
        return statisticalTimeLength;
    }
    public void setStatisticalTime(Date statisticalTime) 
    {
        this.statisticalTime = statisticalTime;
    }

    public Date getStatisticalTime() 
    {
        return statisticalTime;
    }
    public void setComputingTime(Date computingTime) 
    {
        this.computingTime = computingTime;
    }

    public Date getComputingTime() 
    {
        return computingTime;
    }
    public void setAlternateField1(String alternateField1) 
    {
        this.alternateField1 = alternateField1;
    }

    public String getAlternateField1() 
    {
        return alternateField1;
    }
    public void setAlternateField2(String alternateField2) 
    {
        this.alternateField2 = alternateField2;
    }

    public String getAlternateField2() 
    {
        return alternateField2;
    }
    public void setAlternateField3(String alternateField3) 
    {
        this.alternateField3 = alternateField3;
    }

    public String getAlternateField3() 
    {
        return alternateField3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("windFieldId", getWindFieldId())
            .append("windFieldName", getWindFieldName())
            .append("lineId", getLineId())
            .append("lineName", getLineName())
            .append("turbineId", getTurbineId())
            .append("turbineName", getTurbineName())
            .append("stopTime", getStopTime())
            .append("stopTimeLength", getStopTimeLength())
            .append("stopCategory", getStopCategory())
            .append("stopStateCode", getStopStateCode())
            .append("stopStateName", getStopStateName())
            .append("statisticalTimeLength", getStatisticalTimeLength())
            .append("statisticalTime", getStatisticalTime())
            .append("computingTime", getComputingTime())
            .append("alternateField1", getAlternateField1())
            .append("alternateField2", getAlternateField2())
            .append("alternateField3", getAlternateField3())
            .toString();
    }
}
