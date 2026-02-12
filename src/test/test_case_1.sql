insert into kudu."{{ params.game_id }}_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."{{ params.game_id }}_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;