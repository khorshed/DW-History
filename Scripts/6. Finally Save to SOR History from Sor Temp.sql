
INSERT INTO Employee_SOR_History
  (
    first_name,
    last_name,
    location,
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_updated_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id,
    current_flg,
    delete_flg,
    effective_dttm,
    expiry_dttm
  )
SELECT first_name,
       last_name,
       location,
       sys_operation_cd,
       sys_transaction_id,
       sys_inserted_dttm,
       sys_updated_dttm,
       sys_source_transaction_dttm,
       sys_source_transaction_id,
       sys_key_id,
       current_flg,
       delete_flg,
       effective_dttm,
       expiry_dttm
FROM   Employee_SOR_History_Temp t