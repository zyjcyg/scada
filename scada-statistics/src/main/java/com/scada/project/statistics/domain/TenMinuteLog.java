package com.scada.project.statistics.domain;

import com.scada.framework.aspectj.lang.annotation.Excel;
import com.scada.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 十分钟日志对象 t_ten_minute_log
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public class TenMinuteLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 机组号 */
    @Excel(name = "机组号")
    private String turbineId;

    /** 机组状态 */
    @Excel(name = "机组状态")
    private Long statusBitMask;

    /** TML有功功率平均值 */
    @Excel(name = "TML有功功率平均值")
    private Double activePowerAvg;

    /** TML有功功率最小值 */
    @Excel(name = "TML有功功率最小值")
    private Double activePowerMin;

    /** TML有功功率最大值 */
    @Excel(name = "TML有功功率最大值")
    private Double activePowerMax;

    /** TML风速平均值 */
    @Excel(name = "TML风速平均值")
    private Double windSpdAvg;

    /** TML风速最小值 */
    @Excel(name = "TML风速最小值")
    private Double windSpdMin;

    /** TML风速最大值 */
    @Excel(name = "TML风速最大值")
    private Double windSpdMax;

    /** TML风速湍流 */
    @Excel(name = "TML风速湍流")
    private Double windTurbulence;

    /** TML标准风速 */
    @Excel(name = "TML标准风速")
    private Double standWindSpd;

    /** TML平均气温 */
    @Excel(name = "TML平均气温")
    private Double airTempAvg;

    /** TML平均空气密度 */
    @Excel(name = "TML平均空气密度")
    private Double airDensityAvg;

    /** TML地理风向平均值 */
    @Excel(name = "TML地理风向平均值")
    private Double geoWindDirectionAvg;

    /** TML地理风向最小值 */
    @Excel(name = "TML地理风向最小值")
    private Double geoWindDirectionMin;

    /** TML地理风向最大值 */
    @Excel(name = "TML地理风向最大值")
    private Double geoWindDirectionMax;

    /** TML主轴转速最大值 */
    @Excel(name = "TML主轴转速最大值")
    private Double rotorRpmMax;

    /** TML发电机组转速最大值 */
    @Excel(name = "TML发电机组转速最大值")
    private Double genRpmMax;

    /** TML扭缆角度最大值 */
    @Excel(name = "TML扭缆角度最大值")
    private Double cableTwistAngleMax;

    /** TML塔筒振动左右最大值 */
    @Excel(name = "TML塔筒振动左右最大值")
    private Double towerSideBySideVibMax;

    /** TML塔筒振动前后最大值 */
    @Excel(name = "TML塔筒振动前后最大值")
    private Double towerForeAfterVibMax;

    /** TML传动链振动水平最大值 */
    @Excel(name = "TML传动链振动水平最大值")
    private Double driveTrainHozVibMax;

    /** TML传动链振动垂直最大值 */
    @Excel(name = "TML传动链振动垂直最大值")
    private Double driveTrainVertVibMax;

    /** TML变桨电机1温度最大值 */
    @Excel(name = "TML变桨电机1温度最大值")
    private Double pitchMotor1TempMax;

    /** TML变桨电机2温度最大值 */
    @Excel(name = "TML变桨电机2温度最大值")
    private Double pitchMotor2TempMax;

    /** TML变桨电机3温度最大值 */
    @Excel(name = "TML变桨电机3温度最大值")
    private Double pitchMotor3TempMax;

    /** TML发电机定子绕组温度最大值 */
    @Excel(name = "TML发电机定子绕组温度最大值")
    private Double genStatorWindTempMax;

    /** TML发电机驱动端轴承温度最大值 */
    @Excel(name = "TML发电机驱动端轴承温度最大值")
    private Double genDriveGearTempMax;

    /** TML发电机非驱动端轴承温度最大值 */
    @Excel(name = "TML发电机非驱动端轴承温度最大值")
    private Double genNdriveGearTempMax;

    /** TML电压L1L2最小值 */
    @Excel(name = "TML电压L1L2最小值")
    private Double ul1l2Min;

    /** TML电压L1L2最大值 */
    @Excel(name = "TML电压L1L2最大值")
    private Double ul1l2Max;

    /** TML电压L2L3最小值 */
    @Excel(name = "TML电压L2L3最小值")
    private Double ul2l3Min;

    /** TML电压L2L3最大值 */
    @Excel(name = "TML电压L2L3最大值")
    private Double ul2l3Max;

    /** TML电压L3L1最小值 */
    @Excel(name = "TML电压L3L1最小值")
    private Double ul3l1Min;

    /** TML电压L3L1最大值 */
    @Excel(name = "TML电压L3L1最大值")
    private Double ul3l1Max;

    /** TML电网频率最小值 */
    @Excel(name = "TML电网频率最小值")
    private Double freqMin;

    /** TML电网频率最大值 */
    @Excel(name = "TML电网频率最大值")
    private Double freqMax;

    /** TML相对风向平均值 */
    @Excel(name = "TML相对风向平均值")
    private Double yawErrAvg;

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
    public void setTurbineId(String turbineId) 
    {
        this.turbineId = turbineId;
    }

    public String getTurbineId() 
    {
        return turbineId;
    }
    public void setStatusBitMask(Long statusBitMask) 
    {
        this.statusBitMask = statusBitMask;
    }

    public Long getStatusBitMask() 
    {
        return statusBitMask;
    }
    public void setActivePowerAvg(Double activePowerAvg) 
    {
        this.activePowerAvg = activePowerAvg;
    }

    public Double getActivePowerAvg() 
    {
        return activePowerAvg;
    }
    public void setActivePowerMin(Double activePowerMin) 
    {
        this.activePowerMin = activePowerMin;
    }

    public Double getActivePowerMin() 
    {
        return activePowerMin;
    }
    public void setActivePowerMax(Double activePowerMax) 
    {
        this.activePowerMax = activePowerMax;
    }

    public Double getActivePowerMax() 
    {
        return activePowerMax;
    }
    public void setWindSpdAvg(Double windSpdAvg) 
    {
        this.windSpdAvg = windSpdAvg;
    }

    public Double getWindSpdAvg() 
    {
        return windSpdAvg;
    }
    public void setWindSpdMin(Double windSpdMin) 
    {
        this.windSpdMin = windSpdMin;
    }

    public Double getWindSpdMin() 
    {
        return windSpdMin;
    }
    public void setWindSpdMax(Double windSpdMax) 
    {
        this.windSpdMax = windSpdMax;
    }

    public Double getWindSpdMax() 
    {
        return windSpdMax;
    }
    public void setWindTurbulence(Double windTurbulence) 
    {
        this.windTurbulence = windTurbulence;
    }

    public Double getWindTurbulence() 
    {
        return windTurbulence;
    }
    public void setStandWindSpd(Double standWindSpd) 
    {
        this.standWindSpd = standWindSpd;
    }

    public Double getStandWindSpd() 
    {
        return standWindSpd;
    }
    public void setAirTempAvg(Double airTempAvg) 
    {
        this.airTempAvg = airTempAvg;
    }

    public Double getAirTempAvg() 
    {
        return airTempAvg;
    }
    public void setAirDensityAvg(Double airDensityAvg) 
    {
        this.airDensityAvg = airDensityAvg;
    }

    public Double getAirDensityAvg() 
    {
        return airDensityAvg;
    }
    public void setGeoWindDirectionAvg(Double geoWindDirectionAvg) 
    {
        this.geoWindDirectionAvg = geoWindDirectionAvg;
    }

    public Double getGeoWindDirectionAvg() 
    {
        return geoWindDirectionAvg;
    }
    public void setGeoWindDirectionMin(Double geoWindDirectionMin) 
    {
        this.geoWindDirectionMin = geoWindDirectionMin;
    }

    public Double getGeoWindDirectionMin() 
    {
        return geoWindDirectionMin;
    }
    public void setGeoWindDirectionMax(Double geoWindDirectionMax) 
    {
        this.geoWindDirectionMax = geoWindDirectionMax;
    }

    public Double getGeoWindDirectionMax() 
    {
        return geoWindDirectionMax;
    }
    public void setRotorRpmMax(Double rotorRpmMax) 
    {
        this.rotorRpmMax = rotorRpmMax;
    }

    public Double getRotorRpmMax() 
    {
        return rotorRpmMax;
    }
    public void setGenRpmMax(Double genRpmMax) 
    {
        this.genRpmMax = genRpmMax;
    }

    public Double getGenRpmMax() 
    {
        return genRpmMax;
    }
    public void setCableTwistAngleMax(Double cableTwistAngleMax) 
    {
        this.cableTwistAngleMax = cableTwistAngleMax;
    }

    public Double getCableTwistAngleMax() 
    {
        return cableTwistAngleMax;
    }
    public void setTowerSideBySideVibMax(Double towerSideBySideVibMax) 
    {
        this.towerSideBySideVibMax = towerSideBySideVibMax;
    }

    public Double getTowerSideBySideVibMax() 
    {
        return towerSideBySideVibMax;
    }
    public void setTowerForeAfterVibMax(Double towerForeAfterVibMax) 
    {
        this.towerForeAfterVibMax = towerForeAfterVibMax;
    }

    public Double getTowerForeAfterVibMax() 
    {
        return towerForeAfterVibMax;
    }
    public void setDriveTrainHozVibMax(Double driveTrainHozVibMax) 
    {
        this.driveTrainHozVibMax = driveTrainHozVibMax;
    }

    public Double getDriveTrainHozVibMax() 
    {
        return driveTrainHozVibMax;
    }
    public void setDriveTrainVertVibMax(Double driveTrainVertVibMax) 
    {
        this.driveTrainVertVibMax = driveTrainVertVibMax;
    }

    public Double getDriveTrainVertVibMax() 
    {
        return driveTrainVertVibMax;
    }
    public void setPitchMotor1TempMax(Double pitchMotor1TempMax) 
    {
        this.pitchMotor1TempMax = pitchMotor1TempMax;
    }

    public Double getPitchMotor1TempMax() 
    {
        return pitchMotor1TempMax;
    }
    public void setPitchMotor2TempMax(Double pitchMotor2TempMax) 
    {
        this.pitchMotor2TempMax = pitchMotor2TempMax;
    }

    public Double getPitchMotor2TempMax() 
    {
        return pitchMotor2TempMax;
    }
    public void setPitchMotor3TempMax(Double pitchMotor3TempMax) 
    {
        this.pitchMotor3TempMax = pitchMotor3TempMax;
    }

    public Double getPitchMotor3TempMax() 
    {
        return pitchMotor3TempMax;
    }
    public void setGenStatorWindTempMax(Double genStatorWindTempMax) 
    {
        this.genStatorWindTempMax = genStatorWindTempMax;
    }

    public Double getGenStatorWindTempMax() 
    {
        return genStatorWindTempMax;
    }
    public void setGenDriveGearTempMax(Double genDriveGearTempMax) 
    {
        this.genDriveGearTempMax = genDriveGearTempMax;
    }

    public Double getGenDriveGearTempMax() 
    {
        return genDriveGearTempMax;
    }
    public void setGenNdriveGearTempMax(Double genNdriveGearTempMax) 
    {
        this.genNdriveGearTempMax = genNdriveGearTempMax;
    }

    public Double getGenNdriveGearTempMax() 
    {
        return genNdriveGearTempMax;
    }
    public void setUl1l2Min(Double ul1l2Min) 
    {
        this.ul1l2Min = ul1l2Min;
    }

    public Double getUl1l2Min() 
    {
        return ul1l2Min;
    }
    public void setUl1l2Max(Double ul1l2Max) 
    {
        this.ul1l2Max = ul1l2Max;
    }

    public Double getUl1l2Max() 
    {
        return ul1l2Max;
    }
    public void setUl2l3Min(Double ul2l3Min) 
    {
        this.ul2l3Min = ul2l3Min;
    }

    public Double getUl2l3Min() 
    {
        return ul2l3Min;
    }
    public void setUl2l3Max(Double ul2l3Max) 
    {
        this.ul2l3Max = ul2l3Max;
    }

    public Double getUl2l3Max() 
    {
        return ul2l3Max;
    }
    public void setUl3l1Min(Double ul3l1Min) 
    {
        this.ul3l1Min = ul3l1Min;
    }

    public Double getUl3l1Min() 
    {
        return ul3l1Min;
    }
    public void setUl3l1Max(Double ul3l1Max) 
    {
        this.ul3l1Max = ul3l1Max;
    }

    public Double getUl3l1Max() 
    {
        return ul3l1Max;
    }
    public void setFreqMin(Double freqMin) 
    {
        this.freqMin = freqMin;
    }

    public Double getFreqMin() 
    {
        return freqMin;
    }
    public void setFreqMax(Double freqMax) 
    {
        this.freqMax = freqMax;
    }

    public Double getFreqMax() 
    {
        return freqMax;
    }
    public void setYawErrAvg(Double yawErrAvg) 
    {
        this.yawErrAvg = yawErrAvg;
    }

    public Double getYawErrAvg() 
    {
        return yawErrAvg;
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
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("turbineId", getTurbineId())
            .append("statusBitMask", getStatusBitMask())
            .append("activePowerAvg", getActivePowerAvg())
            .append("activePowerMin", getActivePowerMin())
            .append("activePowerMax", getActivePowerMax())
            .append("windSpdAvg", getWindSpdAvg())
            .append("windSpdMin", getWindSpdMin())
            .append("windSpdMax", getWindSpdMax())
            .append("windTurbulence", getWindTurbulence())
            .append("standWindSpd", getStandWindSpd())
            .append("airTempAvg", getAirTempAvg())
            .append("airDensityAvg", getAirDensityAvg())
            .append("geoWindDirectionAvg", getGeoWindDirectionAvg())
            .append("geoWindDirectionMin", getGeoWindDirectionMin())
            .append("geoWindDirectionMax", getGeoWindDirectionMax())
            .append("rotorRpmMax", getRotorRpmMax())
            .append("genRpmMax", getGenRpmMax())
            .append("cableTwistAngleMax", getCableTwistAngleMax())
            .append("towerSideBySideVibMax", getTowerSideBySideVibMax())
            .append("towerForeAfterVibMax", getTowerForeAfterVibMax())
            .append("driveTrainHozVibMax", getDriveTrainHozVibMax())
            .append("driveTrainVertVibMax", getDriveTrainVertVibMax())
            .append("pitchMotor1TempMax", getPitchMotor1TempMax())
            .append("pitchMotor2TempMax", getPitchMotor2TempMax())
            .append("pitchMotor3TempMax", getPitchMotor3TempMax())
            .append("genStatorWindTempMax", getGenStatorWindTempMax())
            .append("genDriveGearTempMax", getGenDriveGearTempMax())
            .append("genNdriveGearTempMax", getGenNdriveGearTempMax())
            .append("ul1l2Min", getUl1l2Min())
            .append("ul1l2Max", getUl1l2Max())
            .append("ul2l3Min", getUl2l3Min())
            .append("ul2l3Max", getUl2l3Max())
            .append("ul3l1Min", getUl3l1Min())
            .append("ul3l1Max", getUl3l1Max())
            .append("freqMin", getFreqMin())
            .append("freqMax", getFreqMax())
            .append("yawErrAvg", getYawErrAvg())
            .append("backup1", getBackup1())
            .append("backup2", getBackup2())
            .append("backup3", getBackup3())
            .toString();
    }
}
