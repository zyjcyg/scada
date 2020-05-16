package com.scada.project.statistics.domain;

import com.scada.framework.aspectj.lang.annotation.Excel;

/**
 * 状态码日志对象 t_state_code_log
 * 
 * @author 张继勇
 * @date 2020-05-15
 */
public class StateCodeLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 机组ID */
    @Excel(name = "机组ID")
    private String turbineId;

    /** 状态码 */
    @Excel(name = "状态码")
    private Long statusCode;

    /** 状态名称 */
    @Excel(name = "状态名称")
    private String name;

    /** 状态 */
    @Excel(name = "状态")
    private Long state;

    /** 类别 */
    @Excel(name = "类别")
    private String cataLog;

    /** 备用字段1 */
    @Excel(name = "备用字段1")
    private String backup1;

    /** 备用字段1 */
    @Excel(name = "备用字段1")
    private String backup2;

    /** 备用字段1 */
    @Excel(name = "备用字段1")
    private String backup3;

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
    public void setStatusCode(Long statusCode) 
    {
        this.statusCode = statusCode;
    }

    public Long getStatusCode() 
    {
        return statusCode;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setState(Long state) 
    {
        this.state = state;
    }

    public Long getState() 
    {
        return state;
    }
    public void setCataLog(String cataLog) 
    {
        this.cataLog = cataLog;
    }

    public String getCataLog() 
    {
        return cataLog;
    }
    public void setBackup1(String backup1) 
    {
        this.backup1 = backup1;
    }

    public String getBackup1() 
    {
        return backup1;
    }
    public void setBackup2(String backup2) 
    {
        this.backup2 = backup2;
    }

    public String getBackup2() 
    {
        return backup2;
    }
    public void setBackup3(String backup3) 
    {
        this.backup3 = backup3;
    }

    public String getBackup3() 
    {
        return backup3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("turbineId", getTurbineId())
            .append("statusCode", getStatusCode())
            .append("name", getName())
            .append("state", getState())
            .append("cataLog", getCataLog())
            .append("backup1", getBackup1())
            .append("backup2", getBackup2())
            .append("backup3", getBackup3())
            .toString();
    }
}
