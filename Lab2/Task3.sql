create or replace TRIGGER CASCADE_FK 
AFTER DELETE ON GROUPS
FOR EACH ROW
BEGIN
  DELETE FROM students WHERE group_id=:OLD.id;
END;