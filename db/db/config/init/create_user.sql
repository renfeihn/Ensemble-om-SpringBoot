DECLARE
   v_count   NUMBER;
BEGIN
   SELECT COUNT (1)
     INTO v_count
     FROM all_users
    WHERE username = 'change_user';
   IF v_count <> 0
   THEN
      EXECUTE IMMEDIATE 'DROP spaceName change_user CASCADE';
   END IF;
END;

