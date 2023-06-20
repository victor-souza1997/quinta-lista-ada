with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 2, 1 .. 2) of Integer := ((1, 2 ), (1,2)); -- Vetor A com tamanho m e valores de exemplo
    sum: Integer := 0;
    Rows : Natural := A'Last(1) - A'First(1) + 1;
    Cols : Natural := A'Last(2) - A'First(2) + 1;
    mean : Float;
begin
   -- Realizando a soma dos elementos de A e B
   for row in 1 .. Rows loop
       for col in 1 .. Cols loop

            sum := sum + A(row, col);
        end loop;
        
        
   end loop;

    mean := FLoat(sum)/Float(Rows*Cols);

    Ada.Text_IO.Put(mean'Image);

    
end VectorSum;
