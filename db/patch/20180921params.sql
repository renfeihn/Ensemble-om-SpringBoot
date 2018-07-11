INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('WTD_RB101', '13', 'ATTR', 'AGENT_FLAG', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('WTD_RB101', '14', 'ATTR', 'FUND_TRAN_TYPE', 'C', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('WTD_RB101', '15', 'ATTR', 'SG_MAX_AMT', '10000', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('WTD_RB101', '16', 'ATTR', 'SG_MIN_AMT', '100', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('WTD_RB101', '17', 'ATTR', 'KEEP_MIN_BAL', '300', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '11', 'ATTR', 'AGENT_FLAG', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '12', 'ATTR', 'CHECK_INIT_AMT', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '13', 'ATTR', 'SG_DEP_MIN_AMT', '100', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '14', 'ATTR', 'SG_DEP_MAX_AMT', '10000', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '15', 'ATTR', 'KEEP_MIN_BAL', '1000', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('DEP_RB101', '16', 'ATTR', 'KEEP_MAX_BAL', '999999', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('CLOSE_RB101', '7', 'ATTR', 'AGENT_FLAG', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('OPEN_RB101', '17', 'ATTR', 'CHECK_RESTRAINT', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('OPEN_RB101', '18', 'ATTR', 'AGENT_FLAG', 'Y', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('OPEN_RB101', '19', 'ATTR', 'MAX_BACK_DATE_DAYS', '20', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('CYCLE_RB101', '1', 'ATTR', 'CYCLE_FREQ', '2M', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('CYCLE_RB101', '2', 'ATTR', 'INT_DAY', '2', 'A');
INSERT INTO mb_event_attr (EVENT_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, ATTR_VALUE, ASSEMBLE_RULE) VALUES ('CYCLE_RB101', '3', 'ATTR', 'INT_CAP', 'Y', 'A');
INSERT INTO mb_prod_define (PROD_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, EVENT_DEFAULT, ATTR_KEY, ATTR_VALUE, STATUS) VALUES ('RB101', '172', 'ATTR', 'FIXED_CALL', NULL, 'FIXED_CALL', 'C', 'A');
INSERT INTO mb_prod_define (PROD_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, EVENT_DEFAULT, ATTR_KEY, ATTR_VALUE, STATUS) VALUES ('RB101', '171', 'ATTR', 'WITHDRAWAL_TYPE', NULL, 'WITHDRAWAL_TYPE', 'O', 'A');
INSERT INTO mb_prod_define (PROD_TYPE, SEQ_NO, ASSEMBLE_TYPE, ASSEMBLE_ID, EVENT_DEFAULT, ATTR_KEY, ATTR_VALUE, STATUS) VALUES ('RB101', '173', 'ATTR', 'DOC_FALG', NULL, 'DOC_FLAG', 'N', 'A');

UPDATE mb_prod_define SET PROD_TYPE='RB101', SEQ_NO='112', ASSEMBLE_TYPE='ATTR', ASSEMBLE_ID='ACCT_TYPE', EVENT_DEFAULT=NULL, ATTR_KEY='ACCT_TYPE', ATTR_VALUE='C', STATUS='A' WHERE (PROD_TYPE='RB101') AND (SEQ_NO='112');
UPDATE mb_prod_define SET PROD_TYPE='RB101', SEQ_NO='110', ASSEMBLE_TYPE='ATTR', ASSEMBLE_ID='PROD_BRANCH', EVENT_DEFAULT=NULL, ATTR_KEY='PROD_BRANCH', ATTR_VALUE='ALL', STATUS='A' WHERE (PROD_TYPE='RB101') AND (SEQ_NO='110');


commit;
