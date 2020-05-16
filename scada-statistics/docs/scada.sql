/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/4/18 22:17:08                           */
/*==============================================================*/


drop table if exists l_mainstate;

drop table if exists l_statecode;

drop table if exists l_tenminute;

drop table if exists s_day_availability;

drop table if exists s_day_component;

drop table if exists s_day_down_state;

drop table if exists s_day_power_curve;

drop table if exists s_day_wind_regime;

drop table if exists s_month_availability;

drop table if exists s_year_availability;

/*==============================================================*/
/* Table: l_mainstate                                           */
/*==============================================================*/
create table l_mainstate
(
   ID                   int not null,
   create_time          datetime,
   TimeNanosec          timestamp,
   TurbineID            varchar(50),
   MainState            int,
   SubState             int,
   ActiveCode           int,
   Availbility          float,
   ActPowerProduction   float,
   ActPowerConsumption  float,
   ReactPowerProduction float,
   ReactPowerConsumption float,
   TotalProductionTime  float,
   TotalRuningTime      float,
   TotalMannulStopTime  float,
   TotalWetherStopTime  float,
   TotalGridFaultStopTime float,
   TotalTurbineFaultStopTime float,
   TotalTime            float,
   TotalAvailability    float,
   StatResetTimeStamp   float,
   WindSpd              float,
   YawErr               float,
   ActivePower          float,
   ReactivePower        float,
   PitAngleAve          float,
   RotorSpd             float,
   GenSpd               float,
   ConverterSpd         float,
   TwistAngle           float,
   GeroWindVane         float,
   backup1              float,
   backup2              float,
   backup3              float,
   primary key (ID)
);

/*==============================================================*/
/* Table: l_statecode                                           */
/*==============================================================*/
create table l_statecode
(
   ID                   Int not null,
   create_time          datetime,
   TurbineID            int,
   StatusCode           int,
   Name                 varchar(50),
   State                int,
   Catalog              varchar(50),
   backup1              varchar(50),
   backup2              varchar(50),
   backup3              varchar(50),
   primary key (ID)
);

/*==============================================================*/
/* Table: l_tenminute                                           */
/*==============================================================*/
create table l_tenminute
(
   ID                   int not null,
   create_time          datetime not null,
   TurbineID            float not null,
   StatusBitMask        float,
   ActivePowerAvg       float,
   ActivePowerMin       float,
   ActivePowerMax       float,
   WindSpdAvg           float,
   WindSpdMin           float,
   WindSpdMax           float,
   WindTurbulence       float,
   StandWindspd         float,
   AirTempAvg           float,
   AirDensityAvg        float,
   GeoWindDirectionAvg  float,
   GeoWindDirectionMin  float,
   GeoWindDirectionMax  float,
   RotorRpmMax          float,
   GenRpmMax            float,
   CableTwistAngleMax   float,
   TowerSidebySideVibMax float,
   TowerForeAfterVibMax float,
   DriveTrainHozVibMax  float,
   DriveTrainVertVibMax float,
   PitchMotor1TempMax   float,
   PitchMotor2TempMax   float,
   PitchMotor3TempMax   float,
   GenStatorWindTempMax float,
   GenDriveGearTempMax  float,
   GenNDriveGearTempMax float,
   UL1L2Min             float,
   UL1L2Max             float,
   UL2L3Min             float,
   UL2L3Max             float,
   UL3L1Min             float,
   UL3L1Max             float,
   FreqMin              float,
   FreqMax              float,
   YawErrAvg            float,
   backup1              float,
   backup2              float,
   backup3              float,
   primary key (ID)
);

/*==============================================================*/
/* Table: s_day_availability                                    */
/*==============================================================*/
create table s_day_availability
(
   id                   varchar(8) not null,
   wind_field_id        int,
   wind_field_name      varchar(50),
   line_id              int,
   line_name            varchar(50),
   machine_set_id       int,
   machine_set_name     varchar(50),
   availiable_time_length int,
   statistical_time_length int,
   availablity          decimal(4,2),
   statistical_time     varchar(8),
   computing_time       timestamp,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_day_component                                       */
/*==============================================================*/
create table s_day_component
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   clockwise_yaw_activation_time_length int not null,
   clockwise_yaw_activation_count int,
   coutterclockwise_yaw_activation_time_length int,
   coutterclockwise_yaw_activation_count int,
   brake_offer_time     int,
   brake_offer_count    int,
   generator_heater_work_time_length int,
   generator_heater_work_count int,
   generator_frame1_work_time_length int,
   generator_frame1_work_count int,
   generator_frame2_work_time_length int,
   generator_frame2_work_count int,
   gearbox_lubrication_heat_time int,
   gearbox_lubrication_heat_count int,
   gearbox_frame_work_time_length int,
   gearbox_frame_work_time_cout int,
   gearbox_pump_work_time_length int,
   gearbox_pump_work_count int not null,
   hydraulic_pump_work_time_length int,
   hydraulic_pump_work_count int,
   anemometer_heater_work_time_length int,
   anemometer_heater_work_count int,
   statistical_time     varchar(8),
   statistical_time_length int,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_day_down_state                                      */
/*==============================================================*/
create table s_day_down_state
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   down_count           int not null,
   down_time_length     int,
   down_category        varchar(50),
   down_state_code      int,
   down_state_name      bigint not null,
   statistical_time_length char(10),
   statistical_time     varchar(8) not null,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_day_power_curve                                     */
/*==============================================================*/
create table s_day_power_curve
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   wind_speed           decimal(3,2) not null,
   pover                decimal(3,2),
   count                int,
   statistical_time_length int,
   statistical_time     varchar(8) not null,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_day_wind_regime                                     */
/*==============================================================*/
create table s_day_wind_regime
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   frequency            decimal(3,2) not null,
   avg_wind_speed       decimal(3,2),
   power                decimal(3,2),
   avg_overfall         decimal(3,2) not null,
   statistical_time     varchar(8),
   statistical_time_length int,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_month_availability                                  */
/*==============================================================*/
create table s_month_availability
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   availiable_time_length int not null,
   statistical_time_length int not null,
   availablity          decimal(4,2) not null,
   statistical_time     varchar(6) not null,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

/*==============================================================*/
/* Table: s_year_availability                                   */
/*==============================================================*/
create table s_year_availability
(
   id                   varchar(8) not null,
   wind_field_id        int not null,
   wind_field_name      varchar(50) not null,
   line_id              int not null,
   line_name            varchar(50) not null,
   machine_set_id       int not null,
   machine_set_name     varchar(50) not null,
   availiable_time_length int not null,
   statistical_time_length int not null,
   availablity          decimal(4,2) not null,
   statistical_time     varchar(4) not null,
   computing_time       timestamp not null,
   alternate_field1     varchar(30),
   alternate_field2     varchar(30),
   alternate_field3     varchar(30),
   primary key (id)
);

