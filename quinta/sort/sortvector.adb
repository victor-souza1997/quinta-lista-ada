with Ada.Text_IO;

procedure VectorSum is
    A : array(1 .. 5) of Integer := (1, 2, 10, 4, 5); -- Vetor A com tamanho m e valores de exemplo
    temp: Integer := 0;

begin
   -- Realizando a soma dos elementos de A e B
   for I in 2 .. A'Length loop
        if A (I-1) > A(I) then
            temp := A(I);
            A(I) := A(I-1);
            A(I-1) := temp;
        end if;

   end loop;

    for I in 1 .. A'Length loop
        Ada.Text_IO.Put(A(I)'Image);

    end loop;
    
end VectorSum;
