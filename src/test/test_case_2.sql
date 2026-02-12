insert into kudu."{{ game_id }}_bi_ods".total_account_attr_all (
    acc_id, risk_behavior, risk_tags
)

select  acc_id,
        udf_json_pop(risk_behavior, 'device_create_acc_cnt_24h') as risk_behavior,
        udf_array_pop(risk_tags, 'BEHAV_AccCreate_DeviceCreateAcc24H') as risk_tags
from kudu."{{ params.game_id }}_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'BEHAV_AccCreate_DeviceCreateAcc24H')
    and udf_json_extract(risk_behavior, 'device_create_acc_cnt_24h') = '2'
;