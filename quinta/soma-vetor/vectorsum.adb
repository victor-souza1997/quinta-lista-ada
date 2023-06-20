with Ada.Text_IO;

procedure VectorSum is
   A : array(1 .. 5) of Integer := (1, 2, 3, 4, 5); -- Vetor A com tamanho m e valores de exemplo
   B : array(1 .. 5) of Integer := (6, 7, 8, 9, 10); -- Vetor B com tamanho n e valores de exemplo
   m : Integer := A'Length;
   n : Integer := B'Length;
   
begin
   if m > n then
      C : array(1 .. m ) of Integer; -- Vetor C para armazenar a soma de A e B
   else
      C : array(1 .. n ) of Integer; -- Vetor C para armazenar a soma de A e B

   end if;
   -- Realizando a soma dos elementos de A e B
   for I in C'Range loop
      C(I) := A(I) + B(I);
   end loop;

   -- Exibindo o vetor C
   Ada.Text_IO.Put("Vetor C: ");
   for I in C'Range loop
      Ada.Text_IO.Put(C(I)'Image & " ");
   end loop;
   Ada.Text_IO.New_Line;
end VectorSum;
