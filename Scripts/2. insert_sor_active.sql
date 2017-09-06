TRUNCATE TABLE Employee_Attunity_CT;


INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'John',
    'Smith',
    'Perth,WA',
    'I',
    '15161053440',
    '2017-09-01 08:22:56',
    '201703010650086',
    'I',
    98539423,
    GETDATE(),
    '2017-09-01 08:22:56',
    '15161053440',
    MD5('John' + 'Smith' + 'Perth,WA');
  
 --------------------Update 1 -------------------------------- 

INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'John',
    'Smith',
    'Perth,WA',
    
    'B',
    '15161053441',
    '2017-09-02 08:22:56',
    '201703010650087',
    
    'B',
    98539424,
    GETDATE(),
    '2017-09-02 08:22:56',
    '15161053441',
    MD5('John' + 'Smith' + 'Perth,WA');
    
    INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'John',
    'Smith',
    'Hobart, TA',
    
    'U',
    '15161053441',
    '2017-09-02 08:22:56',
    '201703010650087',
    
    'U',
    98539425,
    GETDATE(),
    '2017-09-02 08:22:56',
    '15161053441',
    MD5('John' + 'Smith' + 'Hobart, TA');

----------------------Update 2-----------------------------------

  
  INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'John',
    'Smith',
    'Hobart, TA',
    
    'B',
    '15161053442',
    '2017-09-02 10:22:56',
    '201703010650088',
    
    'B',
    98539426,
    GETDATE(),
    '2017-09-02 10:22:56',
    '15161053442',
    MD5('John' + 'Smith' + 'Hobart, TA');
    
    
  INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'John',
    'Smith',
    'Brisbane, QLD',
    
    'U',
    '15161053442',
    '2017-09-02 10:22:56',
    '201703010650088',
    
    'U',
    98539426,
    GETDATE(),
    '2017-09-02 10:22:56',
    '15161053442',
    MD5('John' + 'Smith' + 'Brisbane, QLD');
    
	----------------End of John Smith---------------------------
	
	
   -----------Piter New Insert----------------   
   INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'Piter',
    'Jones',
    'Sydney, NSW',
    'I',
    '15161053446',
    '2017-09-03 08:22:56',
    '201703010650089',
    'I',
    98539429,
    GETDATE(),
    '2017-09-03 08:22:56',
    '15161053446',
    MD5('John' + 'Smith' + 'Sydney, NSW');
    
   --------------Piter Deleted-------------------------
   INSERT INTO Employee_Attunity_CT
  (
    first_name,
    last_name,
    location,
    
    header_change_oper,
    header_transaction_id,
    header_timestamp,
    header_change_seq,
    
    sys_operation_cd,
    sys_transaction_id,
    sys_inserted_dttm,
    sys_source_transaction_dttm,
    sys_source_transaction_id,
    sys_key_id
  )
SELECT  
    'Piter',
    'Jones',
    'Sydney, NSW',
    'D',
    '15161053447',
    '2017-09-04 08:22:56',
    '201703010650090',
    'D',
    98539430,
    GETDATE(),
    '2017-09-04 08:22:56',
    '15161053447',
    MD5('John' + 'Smith' + 'Sydney, NSW');
       
    


 