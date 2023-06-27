with queuemod;
with Ada.Text_IO; use Ada.Text_IO;


procedure Main is
   
begin
   queuemod.Insert(1);
   --I.Remove(0);
   Put_Line ("Value is initialized");

end Main;
