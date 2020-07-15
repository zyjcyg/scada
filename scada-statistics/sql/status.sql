SELECT
    t.turbine_id,
    (
            MAX( t.total_time_length ) - MIN( t.total_time_length )) total_time_length,
    (
            MAX( t.total_suspended_time_length ) - MIN( t.total_suspended_time_length )) total_suspended_time_length,
    (
            MAX( t.total_production_time_length ) - MIN( t.total_production_time_length )) total_production_time_length,
    (
            MAX( t.total_mannul_stop_time_length ) - MIN( t.total_mannul_stop_time_length )) total_mannul_stop_time_length,
    (
            MAX( t.total_wether_stop_time_length ) - MIN( t.total_wether_stop_time_length )) total_wether_stop_time_length,
    (
            MAX( t.total_force_majeure_time_length ) - MIN( t.total_force_majeure_time_length )) total_force_majeure_time_length,
    (
            MAX( t.total_grid_fault_stop_time_length ) - MIN( t.total_grid_fault_stop_time_length )) total_grid_fault_stop_time_length,
    (
            MAX( t.total_full_performance_time_length ) - MIN( t.total_full_performance_time_length )) total_full_performance_time_length,
    (
            MAX( t.total_technical_standby_time_length ) - MIN( t.total_technical_standby_time_length )) total_technical_standby_time_length,
    (
            MAX( t.total_turbine_fault_stop_time_length ) - MIN( t.total_turbine_fault_stop_time_length )) total_turbine_fault_stop_time_length,
    (
            MAX( t.total_shceduled_maintenance_time_length ) - MIN( t.total_shceduled_maintenance_time_length )) total_shceduled_maintenance_time_length,
    (
            MAX( t.total_information_unavailable_time_length ) - MIN( t.total_information_unavailable_time_length )) total_information_unavailable_time_length,
    (
            MAX( t.total_planned_corrective_action_time_length ) - MIN( t.total_planned_corrective_action_time_length )) total_planned_corrective_action_time_length
FROM
    t_main_state_log t
WHERE
    t.create_time BETWEEN DATE_ADD( DATE_SUB( CURDATE(), INTERVAL 1 DAY ), INTERVAL 0 HOUR )
        AND DATE_ADD( CURDATE(), INTERVAL 10 SECOND )
GROUP BY
    t.turbine_id;
#查询可利用率日统计
SELECT
    a.turbine_id,
    b.turbine_name,
    a.total_time_length,
    a.total_available_time_length,
    b.line_id,
    b.line_name,
    b.wind_field_id,
    b.wind_field_name
FROM
    (
        SELECT
            t.turbine_id,
            (MAX( t.total_time_length ) - MIN( t.total_time_length )) total_time_length,
            (
                (MAX( t.total_suspended_time_length ) - MIN( t.total_suspended_time_length )) * 1 +
                (MAX( t.total_production_time_length ) - MIN( t.total_production_time_length )) * 1 +
                (MAX( t.total_mannul_stop_time_length ) - MIN( t.total_mannul_stop_time_length )) * 1 +
                (MAX( t.total_wether_stop_time_length ) - MIN( t.total_wether_stop_time_length )) * 1 +
                (MAX( t.total_force_majeure_time_length ) - MIN( t.total_force_majeure_time_length )) * 1 +
                (MAX( t.total_grid_fault_stop_time_length ) - MIN( t.total_grid_fault_stop_time_length )) * 1 +
                (MAX( t.total_full_performance_time_length ) - MIN( t.total_full_performance_time_length )) * 1 +
                (MAX( t.total_technical_standby_time_length ) - MIN( t.total_technical_standby_time_length )) * 1 +
                (MAX( t.total_turbine_fault_stop_time_length ) - MIN( t.total_turbine_fault_stop_time_length )) * 1 +
                (MAX( t.total_shceduled_maintenance_time_length ) - MIN( t.total_shceduled_maintenance_time_length )) * 1 +
                (MAX( t.total_information_unavailable_time_length ) - MIN( t.total_information_unavailable_time_length )) * 1 +
                (MAX( t.total_planned_corrective_action_time_length ) - MIN( t.total_planned_corrective_action_time_length )) * 1
            ) total_available_time_length
        FROM
            t_main_state_log t
        WHERE
            t.create_time BETWEEN DATE_ADD( DATE_SUB( CURDATE(), INTERVAL 1 DAY ), INTERVAL 0 HOUR )
                AND DATE_ADD( CURDATE(), INTERVAL 10 SECOND )
        GROUP BY
            t.turbine_id
    ) AS a
        LEFT JOIN t_turbine_info b ON a.turbine_id = b.turbine_id;
#查询可利用率月统计
SELECT
    a.turbine_id,
    b.turbine_name,
    a.statistical_time_length,
    a.availiable_time_length,
    b.line_id,
    b.line_name,
    b.wind_field_id,
    b.wind_field_name
FROM
    (
        SELECT
            t.turbine_id,
            SUM( t.statistical_time_length ) statistical_time_length,
            SUM( t.availiable_time_length ) availiable_time_length
        FROM
            t_availability_day_statistics t
        WHERE
                MONTH ( t.statistical_time ) = MONTH (
                    DATE_SUB( CURDATE(), INTERVAL 1 DAY ))
          AND YEAR ( t.statistical_time ) = YEAR (
                DATE_SUB( CURDATE(), INTERVAL 1 DAY ))
        GROUP BY
            t.turbine_id
    ) AS a
        INNER JOIN t_availability_day_statistics b ON a.turbine_id = b.turbine_id;
#查询可利用率年统计
SELECT
    a.turbine_id,
    b.turbine_name,
    a.statistical_time_length,
    a.availiable_time_length,
    b.line_id,
    b.line_name,
    b.wind_field_id,
    b.wind_field_name
FROM
    (
        SELECT
            t.turbine_id,
            SUM( t.statistical_time_length ) statistical_time_length,
            SUM( t.availiable_time_length ) availiable_time_length
        FROM
            t_availability_month_statistics t
        WHERE
                YEAR ( t.statistical_time ) = YEAR (
                    DATE_SUB( CURDATE(), INTERVAL 1 DAY ))
        GROUP BY
            t.turbine_id
    ) AS a
        INNER JOIN t_availability_month_statistics b ON a.turbine_id = b.turbine_id;

SELECT
    a.turbine_id,
    b.turbine_name,
    a.stop_time,
    a.stop_time_length,
    a.stop_state_code,
    a.stop_category,
    b.line_id,
    b.line_name,
    b.wind_field_id,
    b.wind_field_name
FROM
    (
        SELECT
            t.`turbine_id`,
            t.`availbility_status` AS stop_category,
            t.`active_code` AS stop_state_code,
            MIN( t.create_time ) AS stop_time,
            (MAX( t.total_mannul_stop_time_length ) - MIN( t.total_mannul_stop_time_length ) +
             MAX( t.total_wether_stop_time_length ) - MIN( t.total_wether_stop_time_length ) +
             MAX( t.total_grid_fault_stop_time_length ) - MIN( t.total_grid_fault_stop_time_length ) +
             MAX( t.total_turbine_fault_stop_time_length ) - MIN( t.total_turbine_fault_stop_time_length )
            ) stop_time_length
        FROM
            t_main_state_log t
        WHERE
                t.`availbility_status` != '运行'
          AND t.`create_time` BETWEEN DATE_SUB( NOW(), INTERVAL 1 HOUR )
            AND NOW()
        GROUP BY
            t.`turbine_id`,
            t.`availbility_status`,
            t.`active_code`
    ) AS a
        LEFT JOIN t_turbine_info b ON a.turbine_id = b.turbine_id;


SELECT
    a.turbine_id,
    b.turbine_name,
    a.count_num,
    a.active_power_avg,
    b.line_id,
    b.line_name,
    b.wind_field_id,
    b.wind_field_name
FROM
    (
        SELECT
            t.`turbine_id`,
            COUNT(*) AS count_num,
            t.`active_power_avg`
        FROM
            t_ten_minute_log t
        WHERE
                t.`status_bit_mask` = 12
          AND t.`create_time` BETWEEN DATE_SUB( CURDATE(), INTERVAL 1 DAY )
            AND CURDATE()
          AND t.`stand_wind_spd` BETWEEN 0.25
            AND 0.75
        GROUP BY
            t.`turbine_id`,
            t.`active_power_avg`
    ) AS a
        LEFT JOIN t_turbine_info b ON a.turbine_id = b.turbine_id;

