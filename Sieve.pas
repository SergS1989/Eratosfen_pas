PROGRAM Erastofen(INPUT,OUTPUT);
CONST
  Max = 50;
TYPE
  SieveType = SET OF 1 .. Max;        
VAR
  i, j: INTEGER;
  Sieve, Res: SieveType;
BEGIN  {Erastofen}
  Sieve :=  [1 .. 50];
  Res := Sieve - [1];
  i := 2;
  WHILE i IN Sieve
  DO
    BEGIN
      j := i*i;
      WHILE j IN Sieve
      DO
        BEGIN
          Res := Res - [j];
          j := j + i  
        END;
      i := i + 1
    END;
  i := 1;
  WHILE i IN Sieve
  DO
    BEGIN
      IF i IN Res
      THEN
        WRITE(i, ' ');
      i := i + 1  
     END         
END.  {Erastofen}
