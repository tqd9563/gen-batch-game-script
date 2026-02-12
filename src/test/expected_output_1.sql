insert into kudu."10043_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10043_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10046_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10046_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10048_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10048_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10064_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10064_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10066_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10066_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10076_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10076_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10078_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10078_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;

insert into kudu."10091_bi_ods".total_account_attr_all (
    acc_id, risk_attr, risk_tags
)

select  acc_id, 
        udf_json_pop(risk_attr, 'resolution') as risk_behavior,
        udf_array_pop(risk_tags, 'ATTR_Device_LowResolution') as risk_tags
from kudu."10091_bi_ods".total_account_attr_all
where acc_create_time >= '2026-01-11'
    and regexp_like(risk_tags, 'ATTR_Device_LowResolution')
    and acc_create_os != 'android'
;