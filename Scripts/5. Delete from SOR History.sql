
DELETE 
FROM   Employee_SOR_History
       USING Employee_SOR_History_Temp
WHERE  Employee_SOR_History.sys_key_id = Employee_SOR_History_Temp.sys_key_id
       AND Employee_SOR_History.current_flg = 'Y'
       AND Employee_SOR_History_Temp.current_flg = 'N';
       