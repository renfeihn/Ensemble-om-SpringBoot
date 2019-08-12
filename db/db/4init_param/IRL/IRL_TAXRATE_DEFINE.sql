TRUNCATE TABLE irl_taxrate_define;
INSERT INTO irl_taxrate_define (TAXRATE_TYPE, TAXRATE_DESC, START_METHOD) VALUES ('DKJ', '代扣代缴企业所得税', 'A');
INSERT INTO irl_taxrate_define (TAXRATE_TYPE, TAXRATE_DESC, START_METHOD) VALUES ('LXS', '个人利息税', 'A');

COMMIT;
