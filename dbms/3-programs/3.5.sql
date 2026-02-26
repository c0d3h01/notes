DECLARE
    CURSOR c1 IS
        SELECT ename, job FROM emp
        WHERE job = 'MANAGER';
    v_name emp.ename%TYPE;
    v_job emp.job%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_name, v_job;
        EXIT WHEN c1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name || ' Job: ' || v_job);
    END LOOP;
    CLOSE c1;
END;
/
