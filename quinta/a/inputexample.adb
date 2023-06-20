with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure InputExample is


   Message : constant String := "hello";
   Reversed : String(1 .. Message'Length);
-- Hello, World! program in ada

begin
    for I in Message'Range loop
      Reversed(Reversed'First + Message'Last - I) := Message(I);
   end loop;
   Ada.Text_IO.Put_Line(Message);
   Ada.Text_IO.Put_Line(Reversed);
   
   
   if Message = Reversed then
      Ada.Text_IO.Put_Line("Eh palidromo");
   else
      Ada.Text_IO.Put_Line("Nao eh palidromo");
   end if;

end InputExample;
