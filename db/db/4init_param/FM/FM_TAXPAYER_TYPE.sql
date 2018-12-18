TRUNCATE TABLE fm_taxpayer_type;
INSERT INTO fm_taxpayer_type (REF_LANG, FIELD_VALUE, MEANING, NARRATIVE1) VALUES ('CHINESE', '1', '一般纳税人', '纳税人类型');
INSERT INTO fm_taxpayer_type (REF_LANG, FIELD_VALUE, MEANING, NARRATIVE1) VALUES ('CHINESE', '2', '小规模纳税人', '纳税人类型');
INSERT INTO fm_taxpayer_type (REF_LANG, FIELD_VALUE, MEANING, NARRATIVE1) VALUES ('CHINESE', '3', '个人', '纳税人类型');
INSERT INTO fm_taxpayer_type (REF_LANG, FIELD_VALUE, MEANING, NARRATIVE1) VALUES ('CHINESE', '4', '国企', '纳税人类型');

COMMIT;
