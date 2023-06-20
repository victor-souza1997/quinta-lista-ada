with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure vectorwithin is
    A : constant String := "hellow"; -- Vetor A com tamanho m e valores de exemplo
    B : constant String := "hello"; -- Vetor B com tamanho n e valores de exemplo
    m : Integer := A'Length;
    n : Integer := B'Length;
    Found : Boolean := False;   
    I, J : Natural;
    begin

    I := A'First;
    J := B'First;

    if Ada.Strings.Fixed.Index(A, B, From => A'First) > 0 then
      Found := True;
    end if;

 if Found then
      Ada.Text_IO.Put_Line("String B is contained in string A.");
   else
      Ada.Text_IO.Put_Line("String B is not contained in string A.");
   end if;
end vectorwithin;
