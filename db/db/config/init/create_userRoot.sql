create user change_user
identified by change_pwd
default tablespace spaceName
temporary tablespace spaceTemp;

grant connect to change_user with admin option;
grant resource to change_user with admin option;
grant alter any table to change_user;
grant alter session to change_user with admin option;
grant create table to change_user with admin option;
grant delete any table to change_user;
grant drop any index to change_user;
grant drop any table to change_user with admin option;
grant insert any table to change_user;
grant lock any table to change_user;
grant select any table to change_user with admin option;
grant unlimited tablespace to change_user with admin option;
grant update any table to change_user;
