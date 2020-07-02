package com.scada.project.statistics.domain;

import java.util.Date;
import com.scada.framework.aspectj.lang.annotation.Excel;
import com.scada.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 部件统计按天统计对象 t_component_day_statistics
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public class ComponentDayStatistics extends BaseEntity
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

    /** 顺时针偏航激活时长 */
    @Excel(name = "顺时针偏航激活时长")
    private Double clockwiseYawActivationTimeLength;

    /** 顺时针偏航激活次数 */
    @Excel(name = "顺时针偏航激活次数")
    private Long clockwiseYawActivationCount;

    /** 逆时针偏航激活时长 */
    @Excel(name = "逆时针偏航激活时长")
    private Double coutterclockwiseYawActivationTimeLength;

    /** 逆时针偏航激活次数 */
    @Excel(name = "逆时针偏航激活次数")
    private Long coutterclockwiseYawActivationCount;

    /** 刹车盘抱闸时长 */
    @Excel(name = "刹车盘抱闸时长")
    private Double brakeOfferTimeLength;

    /** 刹车盘抱闸次数 */
    @Excel(name = "刹车盘抱闸次数")
    private Long brakeOfferCount;

    /** 发电机加热器工作时长 */
    @Excel(name = "发电机加热器工作时长")
    private Double generatorHeaterWorkTimeLength;

    /** 发电机加热器工作次数 */
    @Excel(name = "发电机加热器工作次数")
    private Long generatorHeaterWorkCount;

    /** 发电机风扇1工作时长 */
    @Excel(name = "发电机风扇1工作时长")
    private Double generatorFrame1WorkTimeLength;

    /** 发电机风扇1工作次数 */
    @Excel(name = "发电机风扇1工作次数")
    private Long generatorFrame1WorkCount;

    /** 发电机风扇2工作时长 */
    @Excel(name = "发电机风扇2工作时长")
    private Double generatorFrame2WorkTimeLength;

    /** 发电机风扇2工作次数 */
    @Excel(name = "发电机风扇2工作次数")
    private Long generatorFrame2WorkCount;

    /** 齿轮箱润滑油加热时长 */
    @Excel(name = "齿轮箱润滑油加热时长")
    private Double gearboxLubricationHeatTime;

    /** 齿轮箱润滑油加热次数 */
    @Excel(name = "齿轮箱润滑油加热次数")
    private Long gearboxLubricationHeatCount;

    /** 齿轮箱风扇工作时长 */
    @Excel(name = "齿轮箱风扇工作时长")
    private Double gearboxFrameWorkTimeLength;

    /** 齿轮箱风扇工作次数 */
    @Excel(name = "齿轮箱风扇工作次数")
    private Long gearboxFrameWorkTimeCout;

    /** 齿轮箱油泵工作时长 */
    @Excel(name = "齿轮箱油泵工作时长")
    private Double gearboxPumpWorkTimeLength;

    /** 齿轮箱油泵工作次数 */
    @Excel(name = "齿轮箱油泵工作次数")
    private Long gearboxPumpWorkCount;

    /** 液压站泵工作时长 */
    @Excel(name = "液压站泵工作时长")
    private Double hydraulicPumpWorkTimeLength;

    /** 液压站泵工作次数 */
    @Excel(name = "液压站泵工作次数")
    private Long hydraulicPumpWorkCount;

    /** 风速仪加热器工作时长 */
    @Excel(name = "风速仪加热器工作时长")
    private Double anemometerHeaterWorkTimeLength;

    /** 风速仪加热器工作次数 */
    @Excel(name = "风速仪加热器工作次数")
    private Long anemometerHeaterWorkCount;

    /** 统计时间 */
    @Excel(name = "统计时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date statisticalTime;

    /** 统计时长 */
    @Excel(name = "统计时长")
    private Double statisticalTimeLength;

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
    public void setClockwiseYawActivationTimeLength(Double clockwiseYawActivationTimeLength) 
    {
        this.clockwiseYawActivationTimeLength = clockwiseYawActivationTimeLength;
    }

    public Double getClockwiseYawActivationTimeLength() 
    {
        return clockwiseYawActivationTimeLength;
    }
    public void setClockwiseYawActivationCount(Long clockwiseYawActivationCount) 
    {
        this.clockwiseYawActivationCount = clockwiseYawActivationCount;
    }

    public Long getClockwiseYawActivationCount() 
    {
        return clockwiseYawActivationCount;
    }
    public void setCoutterclockwiseYawActivationTimeLength(Double coutterclockwiseYawActivationTimeLength) 
    {
        this.coutterclockwiseYawActivationTimeLength = coutterclockwiseYawActivationTimeLength;
    }

    public Double getCoutterclockwiseYawActivationTimeLength() 
    {
        return coutterclockwiseYawActivationTimeLength;
    }
    public void setCoutterclockwiseYawActivationCount(Long coutterclockwiseYawActivationCount) 
    {
        this.coutterclockwiseYawActivationCount = coutterclockwiseYawActivationCount;
    }

    public Long getCoutterclockwiseYawActivationCount() 
    {
        return coutterclockwiseYawActivationCount;
    }
    public void setBrakeOfferTimeLength(Double brakeOfferTimeLength) 
    {
        this.brakeOfferTimeLength = brakeOfferTimeLength;
    }

    public Double getBrakeOfferTimeLength() 
    {
        return brakeOfferTimeLength;
    }
    public void setBrakeOfferCount(Long brakeOfferCount) 
    {
        this.brakeOfferCount = brakeOfferCount;
    }

    public Long getBrakeOfferCount() 
    {
        return brakeOfferCount;
    }
    public void setGeneratorHeaterWorkTimeLength(Double generatorHeaterWorkTimeLength) 
    {
        this.generatorHeaterWorkTimeLength = generatorHeaterWorkTimeLength;
    }

    public Double getGeneratorHeaterWorkTimeLength() 
    {
        return generatorHeaterWorkTimeLength;
    }
    public void setGeneratorHeaterWorkCount(Long generatorHeaterWorkCount) 
    {
        this.generatorHeaterWorkCount = generatorHeaterWorkCount;
    }

    public Long getGeneratorHeaterWorkCount() 
    {
        return generatorHeaterWorkCount;
    }
    public void setGeneratorFrame1WorkTimeLength(Double generatorFrame1WorkTimeLength) 
    {
        this.generatorFrame1WorkTimeLength = generatorFrame1WorkTimeLength;
    }

    public Double getGeneratorFrame1WorkTimeLength() 
    {
        return generatorFrame1WorkTimeLength;
    }
    public void setGeneratorFrame1WorkCount(Long generatorFrame1WorkCount) 
    {
        this.generatorFrame1WorkCount = generatorFrame1WorkCount;
    }

    public Long getGeneratorFrame1WorkCount() 
    {
        return generatorFrame1WorkCount;
    }
    public void setGeneratorFrame2WorkTimeLength(Double generatorFrame2WorkTimeLength) 
    {
        this.generatorFrame2WorkTimeLength = generatorFrame2WorkTimeLength;
    }

    public Double getGeneratorFrame2WorkTimeLength() 
    {
        return generatorFrame2WorkTimeLength;
    }
    public void setGeneratorFrame2WorkCount(Long generatorFrame2WorkCount) 
    {
        this.generatorFrame2WorkCount = generatorFrame2WorkCount;
    }

    public Long getGeneratorFrame2WorkCount() 
    {
        return generatorFrame2WorkCount;
    }
    public void setGearboxLubricationHeatTime(Double gearboxLubricationHeatTime) 
    {
        this.gearboxLubricationHeatTime = gearboxLubricationHeatTime;
    }

    public Double getGearboxLubricationHeatTime() 
    {
        return gearboxLubricationHeatTime;
    }
    public void setGearboxLubricationHeatCount(Long gearboxLubricationHeatCount) 
    {
        this.gearboxLubricationHeatCount = gearboxLubricationHeatCount;
    }

    public Long getGearboxLubricationHeatCount() 
    {
        return gearboxLubricationHeatCount;
    }
    public void setGearboxFrameWorkTimeLength(Double gearboxFrameWorkTimeLength) 
    {
        this.gearboxFrameWorkTimeLength = gearboxFrameWorkTimeLength;
    }

    public Double getGearboxFrameWorkTimeLength() 
    {
        return gearboxFrameWorkTimeLength;
    }
    public void setGearboxFrameWorkTimeCout(Long gearboxFrameWorkTimeCout) 
    {
        this.gearboxFrameWorkTimeCout = gearboxFrameWorkTimeCout;
    }

    public Long getGearboxFrameWorkTimeCout() 
    {
        return gearboxFrameWorkTimeCout;
    }
    public void setGearboxPumpWorkTimeLength(Double gearboxPumpWorkTimeLength) 
    {
        this.gearboxPumpWorkTimeLength = gearboxPumpWorkTimeLength;
    }

    public Double getGearboxPumpWorkTimeLength() 
    {
        return gearboxPumpWorkTimeLength;
    }
    public void setGearboxPumpWorkCount(Long gearboxPumpWorkCount) 
    {
        this.gearboxPumpWorkCount = gearboxPumpWorkCount;
    }

    public Long getGearboxPumpWorkCount() 
    {
        return gearboxPumpWorkCount;
    }
    public void setHydraulicPumpWorkTimeLength(Double hydraulicPumpWorkTimeLength) 
    {
        this.hydraulicPumpWorkTimeLength = hydraulicPumpWorkTimeLength;
    }

    public Double getHydraulicPumpWorkTimeLength() 
    {
        return hydraulicPumpWorkTimeLength;
    }
    public void setHydraulicPumpWorkCount(Long hydraulicPumpWorkCount) 
    {
        this.hydraulicPumpWorkCount = hydraulicPumpWorkCount;
    }

    public Long getHydraulicPumpWorkCount() 
    {
        return hydraulicPumpWorkCount;
    }
    public void setAnemometerHeaterWorkTimeLength(Double anemometerHeaterWorkTimeLength) 
    {
        this.anemometerHeaterWorkTimeLength = anemometerHeaterWorkTimeLength;
    }

    public Double getAnemometerHeaterWorkTimeLength() 
    {
        return anemometerHeaterWorkTimeLength;
    }
    public void setAnemometerHeaterWorkCount(Long anemometerHeaterWorkCount) 
    {
        this.anemometerHeaterWorkCount = anemometerHeaterWorkCount;
    }

    public Long getAnemometerHeaterWorkCount() 
    {
        return anemometerHeaterWorkCount;
    }
    public void setStatisticalTime(Date statisticalTime) 
    {
        this.statisticalTime = statisticalTime;
    }

    public Date getStatisticalTime() 
    {
        return statisticalTime;
    }
    public void setStatisticalTimeLength(Double statisticalTimeLength) 
    {
        this.statisticalTimeLength = statisticalTimeLength;
    }

    public Double getStatisticalTimeLength() 
    {
        return statisticalTimeLength;
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
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("windFieldId", getWindFieldId())
            .append("windFieldName", getWindFieldName())
            .append("lineId", getLineId())
            .append("lineName", getLineName())
            .append("turbineId", getTurbineId())
            .append("turbineName", getTurbineName())
            .append("clockwiseYawActivationTimeLength", getClockwiseYawActivationTimeLength())
            .append("clockwiseYawActivationCount", getClockwiseYawActivationCount())
            .append("coutterclockwiseYawActivationTimeLength", getCoutterclockwiseYawActivationTimeLength())
            .append("coutterclockwiseYawActivationCount", getCoutterclockwiseYawActivationCount())
            .append("brakeOfferTimeLength", getBrakeOfferTimeLength())
            .append("brakeOfferCount", getBrakeOfferCount())
            .append("generatorHeaterWorkTimeLength", getGeneratorHeaterWorkTimeLength())
            .append("generatorHeaterWorkCount", getGeneratorHeaterWorkCount())
            .append("generatorFrame1WorkTimeLength", getGeneratorFrame1WorkTimeLength())
            .append("generatorFrame1WorkCount", getGeneratorFrame1WorkCount())
            .append("generatorFrame2WorkTimeLength", getGeneratorFrame2WorkTimeLength())
            .append("generatorFrame2WorkCount", getGeneratorFrame2WorkCount())
            .append("gearboxLubricationHeatTime", getGearboxLubricationHeatTime())
            .append("gearboxLubricationHeatCount", getGearboxLubricationHeatCount())
            .append("gearboxFrameWorkTimeLength", getGearboxFrameWorkTimeLength())
            .append("gearboxFrameWorkTimeCout", getGearboxFrameWorkTimeCout())
            .append("gearboxPumpWorkTimeLength", getGearboxPumpWorkTimeLength())
            .append("gearboxPumpWorkCount", getGearboxPumpWorkCount())
            .append("hydraulicPumpWorkTimeLength", getHydraulicPumpWorkTimeLength())
            .append("hydraulicPumpWorkCount", getHydraulicPumpWorkCount())
            .append("anemometerHeaterWorkTimeLength", getAnemometerHeaterWorkTimeLength())
            .append("anemometerHeaterWorkCount", getAnemometerHeaterWorkCount())
            .append("statisticalTime", getStatisticalTime())
            .append("statisticalTimeLength", getStatisticalTimeLength())
            .append("computingTime", getComputingTime())
            .append("alternateField1", getAlternateField1())
            .append("alternateField2", getAlternateField2())
            .append("alternateField3", getAlternateField3())
            .toString();
    }
}
