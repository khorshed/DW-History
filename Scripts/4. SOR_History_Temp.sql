
DROP TABLE IF EXISTS Employee_SOR_History_Temp;

select  ht.first_name, 
        ht.last_name,
        ht.location,
        ht.sys_operation_cd,
        ht.sys_transaction_id,        
        CASE WHEN h.current_flg IS NULL THEN ht.sys_inserted_dttm ELSE h.sys_inserted_dttm END AS sys_inserted_dttm,
        GETDATE() AS sys_updated_dttm,
        ht.sys_source_transaction_dttm,
        ht.sys_source_transaction_id,
        ht.sys_key_id,
        ht.current_flg,
        CASE WHEN ht.sys_operation_cd = 'D' THEN 'Y' ELSE 'N' END AS delete_flg,
        GETDATE() AS effective_dttm,
        CASE WHEN ht.current_flg='N' THEN GETDATE() ELSE NULL END AS expiry_dttm             
INTO Employee_SOR_History_Temp
from Employee_Attunity_CT_Temp ht
   left outer join Employee_SOR_History h
        on ht.sys_key_id=h.sys_key_id
        and h.current_flg='Y';
        
 SELECT * FROM Employee_SOR_History_Temp ORDER BY sys_inserted_dttm;