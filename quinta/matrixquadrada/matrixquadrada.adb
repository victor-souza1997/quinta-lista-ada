with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 2, 1 .. 2) of Integer := ((1, 2 ), (1,2)); -- Vetor A com tamanho m e valores de exemplo
    sum: Integer := 0;
    Rows : Natural := A'Last(1) - A'First(1) + 1;
    Cols : Natural := A'Last(2) - A'First(2) + 1;
   
begin
    -- check if it a square matrix

    if Rows = Cols then

        Ada.Text_IO.Put_Line("is a square matrix then");

        for I in 1 .. Cols loop

            sum := sum + A(I, I);

        end loop;
        Ada.Text_IO.Put( sum'Image);

    else
        Ada.Text_IO.Put_Line("Not a square matrix");
        
   
    end if;
end VectorSum;
