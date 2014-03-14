DELIMITER $$
DROP FUNCTION IF EXISTS das_functionen $$
CREATE FUNCTION das_functionen (the_param VARCHAR(10)) RETURNS varchar(10)
    DETERMINISTIC
    BEGIN
    declare l_value VARCHAR(10);

    if the_param = 'A' then

       set l_value := 'This was A';

    elseif the_param = 'B' then

       set l_value := 'This was B';

    else

       set l_value := 'Not A or B';

    end if;

    return l_value;
    END$$
DELIMITER ;
