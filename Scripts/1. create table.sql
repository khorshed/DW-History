
DROP TABLE Employee_Attunity_CT;

CREATE TABLE Employee_Attunity_CT
(
	-- Business
	first_name                      VARCHAR(50),
	last_name                       VARCHAR(50),
	location                        VARCHAR(200),
	--Attunity Metadata	
	header_change_oper              VARCHAR(1),
	header_transaction_id           VARCHAR(35),
	header_timestamp                DATETIME,
	header_change_seq               BIGINT,
		
	sys_operation_cd                VARCHAR(1),
	sys_transaction_id              VARCHAR(35),
	sys_inserted_dttm               DATETIME,
	sys_source_transaction_dttm     DATETIME,
	sys_source_transaction_id       VARCHAR(35),
	sys_key_id                      VARCHAR(50)
);

DROP TABLE Employee_SOR_History;

CREATE TABLE Employee_SOR_History
(
	first_name                      VARCHAR(50),
	last_name                       VARCHAR(50),
	location                        VARCHAR(200),
	sys_operation_cd                VARCHAR(1),
	sys_transaction_id              VARCHAR(35),
	sys_inserted_dttm               DATETIME,
	sys_updated_dttm                DATETIME,
	sys_source_transaction_dttm     DATETIME,
	sys_source_transaction_id       VARCHAR(40),
	sys_key_id                      VARCHAR(40),
	current_flg                     VARCHAR(1),
	delete_flg                      VARCHAR(1),
	effective_dttm                  DATETIME,
	expiry_dttm                     DATETIME
);