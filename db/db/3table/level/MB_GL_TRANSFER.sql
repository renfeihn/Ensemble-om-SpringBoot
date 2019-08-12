drop table if exists MB_GL_TRANSFER;
/*==============================================================*/
/* Table: MB_GL_TRANSFER                                           */
/*==============================================================*/
create table MB_GL_TRANSFER
(
    SEQ_NO varchar(50) not null comment '搴忓彿',
    GL_CLIENT_NO varchar(20) comment '鎬昏处瀹㈡埛鍙�',
    GL_ACCT_TYPE varchar(10) comment '鎬昏处绫诲瀷',
    GL_CODE varchar(20) comment '绉戠洰',
    GL_CCY varchar(3) comment '鎬昏处甯佺',
    GL_SEQ_NO varchar(8) comment '鎬昏处搴忓彿',
    GL_PROFIT_CENTRE varchar(12) comment '鎬昏处鍒╂鼎涓績',
    GL_BRANCH varchar(20) comment '鎬昏处鏈烘瀯',
    ACCT_NO varchar(150) comment '璐﹀彿',
    INTERNAL_KEY Decimal(15) comment '璐︽埛鏍囪瘑绗�',
    BASE_ACCT_NO varchar(150) comment '璐﹀彿',
    PROD_TYPE varchar(50) comment '浜у搧绫诲瀷',
    CCY varchar(3) comment '甯佺',
    ACCT_SEQ_NO varchar(8) comment '璐︽埛搴忓垪鍙�',
    BRANCH varchar(20) comment '鏈烘瀯',
    TRAN_DATE varchar(8) comment '浜ゆ槗鏃ユ湡',
    VALUE_DATE varchar(8) comment '璧锋伅鏃�',
    TRAN_AMT Decimal(17,2) comment '浜ゆ槗閲戦',
    REFERENCE varchar(50) not null comment '浜ゆ槗鍙傝€冨彿',
    TRAN_TYPE varchar(10) comment '浜ゆ槗绫诲瀷',
    NARRATIVE varchar(300) comment '浜ゆ槗璇存槑',
    USER_ID varchar(30) comment '鏌滃憳鍙�',
    AUTH_USER_ID varchar(30) comment '鎺堟潈鏌滃憳鍙�',
    BANK_SEQ_NO varchar(50) comment ' 閾惰浜ゆ槗搴忓彿',
    REVERSAL varchar(1) default 'N' comment '鍐叉鏍囧織',
    REVERSE_TRAN_TYPE varchar(10) comment '浜ゆ槗绫诲瀷',
    REVERSE_DATE varchar(8) comment '鍐叉鏃ユ湡',
    REVERSE_USER_ID varchar(30) comment '鍐叉鏌滃憳',
    REVERSE_AUTH_USER varchar(30) comment '鍐叉浜ゆ槗鎺堟潈鏌滃憳',
    TRAN_SEQ_NO varchar(50) comment '浜ゆ槗搴忓彿,璁板綍MB_TRAN_HIST.SEQ_NO',
    GL_POSTED varchar(1) default 'N' comment '杩囪处鏍囧織',
    SOURCE_TYPE varchar(10) comment '娓犻亾绫诲瀷,瑙丗M_CHANNEL琛ㄧ殑娓犻亾瀹氫箟',
    CHANNEL_SEQ_NO varchar(50) comment '娓犻亾娴佹按鍙�',
    TRAN_TIMESTAMP varchar(17) comment '浜ゆ槗鏃堕棿鎴�',
    TRAN_TIME Decimal(11,0) comment '浜ゆ槗鏃堕棿',
    ROUTER_KEY varchar(100) comment '鍒嗗簱璺敱鍏抽敭瀛�',
    COMPANY varchar(20) comment '娉曚汉浠ｇ爜',
    primary  key (SEQ_NO)
);
alter table MB_GL_TRANSFER comment '璧勯噾鍒掓嫧鐧昏琛� undefined';