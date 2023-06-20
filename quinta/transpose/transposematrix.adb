with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 2, 1 .. 2) of Integer := ((1, 2 ), (1,2)); -- Vetor A com tamanho m e valores de exemplo
    sum: Integer := 0;
    Rows : Natural := A'Last(1) - A'First(1) + 1;
    Cols : Natural := A'Last(2) - A'First(2) + 1;
    Result : array(1 .. Cols, 1 .. Rows) of Integer;
begin
   -- Realizando a soma dos elementos de A e B
   for row in 1 .. Rows loop
       for col in 1 .. Cols loop

            Result(row, col) := A(col, row);
        end loop;
        
        
   end loop;

    for col in 1 .. Cols loop
            for row in 1 .. Rows loop
                    Ada.Text_IO.Put(Result(col, row)'Image);
                
            end loop;
        
         Ada.Text_IO.New_Line;
           end loop;

    
end VectorSum;
