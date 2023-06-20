with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 5) of Integer := (1, 2, 3, 4, 5); -- Vetor A com tamanho m e valores de exemplo
    max: Integer := 0;
begin
   -- Realizando a soma dos elementos de A e B
   for I in 1 .. A'Length loop
        if max < A(I) then
            max := A(I);
        end if;

   end loop;

   -- Exibindo o vetor C
   Ada.Text_IO.Put_Line(max'Image);
    
end VectorSum;
