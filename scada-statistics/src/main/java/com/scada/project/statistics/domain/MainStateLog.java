package com.scada.project.statistics.domain;

import java.util.Date;
import com.scada.framework.aspectj.lang.annotation.Excel;
import com.scada.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 主状态日志对象 t_main_state_log
 * 
 * @author 张继勇
 * @date 2020-07-11
 */
public class MainStateLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 索引 */
    private Long id;

    /** 纳秒时间 */
    @Excel(name = "纳秒时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date timeNanoSec;

    /** 机组号 */
    @Excel(name = "机组号")
    private String turbineId;

    /** 主状态 */
    @Excel(name = "主状态")
    private Long mainState;

    /** 子状态 */
    @Excel(name = "子状态")
    private Long subState;

    /** 当前激活的状态码 */
    @Excel(name = "当前激活的状态码")
    private Long activeCode;

    /** 风机可利用率 */
    @Excel(name = "风机可利用率")
    private String availbilityStatus;

    /** 风机有功发电量 */
    @Excel(name = "风机有功发电量")
    private Double actPowerProduction;

    /** 风机有功耗电量 */
    @Excel(name = "风机有功耗电量")
    private Double actPowerConsumption;

    /** 风机无功发电量 */
    @Excel(name = "风机无功发电量")
    private Double reactPowerProduction;

    /** 风机无功耗电量 */
    @Excel(name = "风机无功耗电量")
    private Double reactPowerConsumption;

    /** 总发电时长 */
    @Excel(name = "总发电时长")
    private Double totalProductionTimeLength;

    /** 总运行时长 */
    @Excel(name = "总运行时长")
    private Double totalRuningTimeLength;

    /** 总人工停机时长 */
    @Excel(name = "总人工停机时长")
    private Double totalMannulStopTimeLength;

    /** 总天气原因停机时长 */
    @Excel(name = "总天气原因停机时长")
    private Double totalWetherStopTimeLength;

    /** 总电网故障停机时长 */
    @Excel(name = "总电网故障停机时长")
    private Double totalGridFaultStopTimeLength;

    /** 总自由发电时长 */
    @Excel(name = "总自由发电时长")
    private Double totalFullPerformanceTimeLength;

    /** 总限功率发电时长 */
    @Excel(name = "总限功率发电时长")
    private Double totalPartialPorformanceTimeLength;

    /** 总待机时长 */
    @Excel(name = "总待机时长")
    private Double totalTechnicalStandbyTimeLength;

    /** 总计划维护时长 */
    @Excel(name = "总计划维护时长")
    private Double totalShceduledMaintenanceTimeLength;

    /** 总计划故障检修时长 */
    @Excel(name = "总计划故障检修时长")
    private Double totalPlannedCorrectiveActionTimeLength;

    /** 总不可抗原因停机时长 */
    @Excel(name = "总不可抗原因停机时长")
    private Double totalForceMajeureTimeLength;

    /** 总无法获取我信息-通讯故障时长 */
    @Excel(name = "总无法获取我信息-通讯故障时长")
    private Double totalInformationUnavailableTimeLength;

    /** 总挂起时长 */
    @Excel(name = "总挂起时长")
    private Double totalSuspendedTimeLength;

    /** 总风机故障停机时长 */
    @Excel(name = "总风机故障停机时长")
    private Double totalTurbineFaultStopTimeLength;

    /** 总时长 */
    @Excel(name = "总时长")
    private Double totalTimeLength;

    /** 总可利用率 */
    @Excel(name = "总可利用率")
    private Double totalAvailability;

    /** 复位总数据时间戳 */
    @Excel(name = "复位总数据时间戳")
    private Double statResetTime;

    /** 风速 */
    @Excel(name = "风速")
    private Double windSpd;

    /** 相对风向 */
    @Excel(name = "相对风向")
    private Double yawErr;

    /** 有功功率 */
    @Excel(name = "有功功率")
    private Double activePower;

    /** 无功功率 */
    @Excel(name = "无功功率")
    private Double reactivePower;

    /** 平均桨角 */
    @Excel(name = "平均桨角")
    private Double pitAngleAve;

    /** 主轴转速 */
    @Excel(name = "主轴转速")
    private Double rotorSpd;

    /** 发电机转速 */
    @Excel(name = "发电机转速")
    private Double genSpd;

    /** 交流器转速 */
    @Excel(name = "交流器转速")
    private Double converterSpd;

    /** 牛栏角度 */
    @Excel(name = "牛栏角度")
    private Double twistAngle;

    /** 地理风向 */
    @Excel(name = "地理风向")
    private Double geroWindVane;

    /** 备用字段1 */
    @Excel(name = "备用字段1")
    private Double backup1;

    /** 备用字段2 */
    @Excel(name = "备用字段2")
    private Double backup2;

    /** 备用字段3 */
    @Excel(name = "备用字段3")
    private Double backup3;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTimeNanoSec(Date timeNanoSec) 
    {
        this.timeNanoSec = timeNanoSec;
    }

    public Date getTimeNanoSec() 
    {
        return timeNanoSec;
    }
    public void setTurbineId(String turbineId) 
    {
        this.turbineId = turbineId;
    }

    public String getTurbineId() 
    {
        return turbineId;
    }
    public void setMainState(Long mainState) 
    {
        this.mainState = mainState;
    }

    public Long getMainState() 
    {
        return mainState;
    }
    public void setSubState(Long subState) 
    {
        this.subState = subState;
    }

    public Long getSubState() 
    {
        return subState;
    }
    public void setActiveCode(Long activeCode) 
    {
        this.activeCode = activeCode;
    }

    public Long getActiveCode() 
    {
        return activeCode;
    }
    public void setAvailbilityStatus(String availbilityStatus) 
    {
        this.availbilityStatus = availbilityStatus;
    }

    public String getAvailbilityStatus() 
    {
        return availbilityStatus;
    }
    public void setActPowerProduction(Double actPowerProduction) 
    {
        this.actPowerProduction = actPowerProduction;
    }

    public Double getActPowerProduction() 
    {
        return actPowerProduction;
    }
    public void setActPowerConsumption(Double actPowerConsumption) 
    {
        this.actPowerConsumption = actPowerConsumption;
    }

    public Double getActPowerConsumption() 
    {
        return actPowerConsumption;
    }
    public void setReactPowerProduction(Double reactPowerProduction) 
    {
        this.reactPowerProduction = reactPowerProduction;
    }

    public Double getReactPowerProduction() 
    {
        return reactPowerProduction;
    }
    public void setReactPowerConsumption(Double reactPowerConsumption) 
    {
        this.reactPowerConsumption = reactPowerConsumption;
    }

    public Double getReactPowerConsumption() 
    {
        return reactPowerConsumption;
    }
    public void setTotalProductionTimeLength(Double totalProductionTimeLength) 
    {
        this.totalProductionTimeLength = totalProductionTimeLength;
    }

    public Double getTotalProductionTimeLength() 
    {
        return totalProductionTimeLength;
    }
    public void setTotalRuningTimeLength(Double totalRuningTimeLength) 
    {
        this.totalRuningTimeLength = totalRuningTimeLength;
    }

    public Double getTotalRuningTimeLength() 
    {
        return totalRuningTimeLength;
    }
    public void setTotalMannulStopTimeLength(Double totalMannulStopTimeLength) 
    {
        this.totalMannulStopTimeLength = totalMannulStopTimeLength;
    }

    public Double getTotalMannulStopTimeLength() 
    {
        return totalMannulStopTimeLength;
    }
    public void setTotalWetherStopTimeLength(Double totalWetherStopTimeLength) 
    {
        this.totalWetherStopTimeLength = totalWetherStopTimeLength;
    }

    public Double getTotalWetherStopTimeLength() 
    {
        return totalWetherStopTimeLength;
    }
    public void setTotalGridFaultStopTimeLength(Double totalGridFaultStopTimeLength) 
    {
        this.totalGridFaultStopTimeLength = totalGridFaultStopTimeLength;
    }

    public Double getTotalGridFaultStopTimeLength() 
    {
        return totalGridFaultStopTimeLength;
    }
    public void setTotalFullPerformanceTimeLength(Double totalFullPerformanceTimeLength) 
    {
        this.totalFullPerformanceTimeLength = totalFullPerformanceTimeLength;
    }

    public Double getTotalFullPerformanceTimeLength() 
    {
        return totalFullPerformanceTimeLength;
    }
    public void setTotalPartialPorformanceTimeLength(Double totalPartialPorformanceTimeLength) 
    {
        this.totalPartialPorformanceTimeLength = totalPartialPorformanceTimeLength;
    }

    public Double getTotalPartialPorformanceTimeLength() 
    {
        return totalPartialPorformanceTimeLength;
    }
    public void setTotalTechnicalStandbyTimeLength(Double totalTechnicalStandbyTimeLength) 
    {
        this.totalTechnicalStandbyTimeLength = totalTechnicalStandbyTimeLength;
    }

    public Double getTotalTechnicalStandbyTimeLength() 
    {
        return totalTechnicalStandbyTimeLength;
    }
    public void setTotalShceduledMaintenanceTimeLength(Double totalShceduledMaintenanceTimeLength) 
    {
        this.totalShceduledMaintenanceTimeLength = totalShceduledMaintenanceTimeLength;
    }

    public Double getTotalShceduledMaintenanceTimeLength() 
    {
        return totalShceduledMaintenanceTimeLength;
    }
    public void setTotalPlannedCorrectiveActionTimeLength(Double totalPlannedCorrectiveActionTimeLength) 
    {
        this.totalPlannedCorrectiveActionTimeLength = totalPlannedCorrectiveActionTimeLength;
    }

    public Double getTotalPlannedCorrectiveActionTimeLength() 
    {
        return totalPlannedCorrectiveActionTimeLength;
    }
    public void setTotalForceMajeureTimeLength(Double totalForceMajeureTimeLength) 
    {
        this.totalForceMajeureTimeLength = totalForceMajeureTimeLength;
    }

    public Double getTotalForceMajeureTimeLength() 
    {
        return totalForceMajeureTimeLength;
    }
    public void setTotalInformationUnavailableTimeLength(Double totalInformationUnavailableTimeLength) 
    {
        this.totalInformationUnavailableTimeLength = totalInformationUnavailableTimeLength;
    }

    public Double getTotalInformationUnavailableTimeLength() 
    {
        return totalInformationUnavailableTimeLength;
    }
    public void setTotalSuspendedTimeLength(Double totalSuspendedTimeLength) 
    {
        this.totalSuspendedTimeLength = totalSuspendedTimeLength;
    }

    public Double getTotalSuspendedTimeLength() 
    {
        return totalSuspendedTimeLength;
    }
    public void setTotalTurbineFaultStopTimeLength(Double totalTurbineFaultStopTimeLength) 
    {
        this.totalTurbineFaultStopTimeLength = totalTurbineFaultStopTimeLength;
    }

    public Double getTotalTurbineFaultStopTimeLength() 
    {
        return totalTurbineFaultStopTimeLength;
    }
    public void setTotalTimeLength(Double totalTimeLength) 
    {
        this.totalTimeLength = totalTimeLength;
    }

    public Double getTotalTimeLength() 
    {
        return totalTimeLength;
    }
    public void setTotalAvailability(Double totalAvailability) 
    {
        this.totalAvailability = totalAvailability;
    }

    public Double getTotalAvailability() 
    {
        return totalAvailability;
    }
    public void setStatResetTime(Double statResetTime) 
    {
        this.statResetTime = statResetTime;
    }

    public Double getStatResetTime() 
    {
        return statResetTime;
    }
    public void setWindSpd(Double windSpd) 
    {
        this.windSpd = windSpd;
    }

    public Double getWindSpd() 
    {
        return windSpd;
    }
    public void setYawErr(Double yawErr) 
    {
        this.yawErr = yawErr;
    }

    public Double getYawErr() 
    {
        return yawErr;
    }
    public void setActivePower(Double activePower) 
    {
        this.activePower = activePower;
    }

    public Double getActivePower() 
    {
        return activePower;
    }
    public void setReactivePower(Double reactivePower) 
    {
        this.reactivePower = reactivePower;
    }

    public Double getReactivePower() 
    {
        return reactivePower;
    }
    public void setPitAngleAve(Double pitAngleAve) 
    {
        this.pitAngleAve = pitAngleAve;
    }

    public Double getPitAngleAve() 
    {
        return pitAngleAve;
    }
    public void setRotorSpd(Double rotorSpd) 
    {
        this.rotorSpd = rotorSpd;
    }

    public Double getRotorSpd() 
    {
        return rotorSpd;
    }
    public void setGenSpd(Double genSpd) 
    {
        this.genSpd = genSpd;
    }

    public Double getGenSpd() 
    {
        return genSpd;
    }
    public void setConverterSpd(Double converterSpd) 
    {
        this.converterSpd = converterSpd;
    }

    public Double getConverterSpd() 
    {
        return converterSpd;
    }
    public void setTwistAngle(Double twistAngle) 
    {
        this.twistAngle = twistAngle;
    }

    public Double getTwistAngle() 
    {
        return twistAngle;
    }
    public void setGeroWindVane(Double geroWindVane) 
    {
        this.geroWindVane = geroWindVane;
    }

    public Double getGeroWindVane() 
    {
        return geroWindVane;
    }
    public void setBackup1(Double backup1) 
    {
        this.backup1 = backup1;
    }

    public Double getBackup1() 
    {
        return backup1;
    }
    public void setBackup2(Double backup2) 
    {
        this.backup2 = backup2;
    }

    public Double getBackup2() 
    {
        return backup2;
    }
    public void setBackup3(Double backup3) 
    {
        this.backup3 = backup3;
    }

    public Double getBackup3() 
    {
        return backup3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("timeNanoSec", getTimeNanoSec())
            .append("turbineId", getTurbineId())
            .append("mainState", getMainState())
            .append("subState", getSubState())
            .append("activeCode", getActiveCode())
            .append("availbilityStatus", getAvailbilityStatus())
            .append("actPowerProduction", getActPowerProduction())
            .append("actPowerConsumption", getActPowerConsumption())
            .append("reactPowerProduction", getReactPowerProduction())
            .append("reactPowerConsumption", getReactPowerConsumption())
            .append("totalProductionTimeLength", getTotalProductionTimeLength())
            .append("totalRuningTimeLength", getTotalRuningTimeLength())
            .append("totalMannulStopTimeLength", getTotalMannulStopTimeLength())
            .append("totalWetherStopTimeLength", getTotalWetherStopTimeLength())
            .append("totalGridFaultStopTimeLength", getTotalGridFaultStopTimeLength())
            .append("totalFullPerformanceTimeLength", getTotalFullPerformanceTimeLength())
            .append("totalPartialPorformanceTimeLength", getTotalPartialPorformanceTimeLength())
            .append("totalTechnicalStandbyTimeLength", getTotalTechnicalStandbyTimeLength())
            .append("totalShceduledMaintenanceTimeLength", getTotalShceduledMaintenanceTimeLength())
            .append("totalPlannedCorrectiveActionTimeLength", getTotalPlannedCorrectiveActionTimeLength())
            .append("totalForceMajeureTimeLength", getTotalForceMajeureTimeLength())
            .append("totalInformationUnavailableTimeLength", getTotalInformationUnavailableTimeLength())
            .append("totalSuspendedTimeLength", getTotalSuspendedTimeLength())
            .append("totalTurbineFaultStopTimeLength", getTotalTurbineFaultStopTimeLength())
            .append("totalTimeLength", getTotalTimeLength())
            .append("totalAvailability", getTotalAvailability())
            .append("statResetTime", getStatResetTime())
            .append("windSpd", getWindSpd())
            .append("yawErr", getYawErr())
            .append("activePower", getActivePower())
            .append("reactivePower", getReactivePower())
            .append("pitAngleAve", getPitAngleAve())
            .append("rotorSpd", getRotorSpd())
            .append("genSpd", getGenSpd())
            .append("converterSpd", getConverterSpd())
            .append("twistAngle", getTwistAngle())
            .append("geroWindVane", getGeroWindVane())
            .append("backup1", getBackup1())
            .append("backup2", getBackup2())
            .append("backup3", getBackup3())
            .toString();
    }
}
