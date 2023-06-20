with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 2, 1 .. 2) of Integer := ((1, 2 ), (1,2)); -- Vetor A com tamanho m e valores de exemplo
    RowsA : Natural := A'Last(1) - A'First(1) + 1;
    ColsA : Natural := A'Last(2) - A'First(2) + 1;
    B : array(1 .. 2, 1 .. 2) of Integer := ((1, 2 ), (1,2)); -- Vetor A com tamanho m e valores de exemplo
    RowsB : Natural := B'Last(1) - B'First(1) + 1;
    ColsB : Natural := B'Last(2) - B'First(2) + 1;
    
    mean : Float;
    sum: Integer := 0;

    C : array (1 .. ColsA, 1 .. RowsA) of Integer;
begin
   -- Realizando a soma dos elementos de A e B
   if RowsA = RowsB and ColsA = ColsB then
   
        for col in 1 .. ColsA loop
            for row in 1 .. RowsA loop
                C(col, row) := A(col, row) + B(col, row);
                
            end loop;
        
        
   end loop;
end if;



        for col in 1 .. ColsA loop
            for row in 1 .. RowsA loop
                    Ada.Text_IO.Put(C(col, row)'Image);
                
            end loop;
        
         Ada.Text_IO.New_Line;
           end loop;
    
    
end VectorSum;
