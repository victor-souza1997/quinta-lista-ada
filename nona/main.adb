with queuemod;
with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

   package I is new queuemod (Element => Integer);

begin
   I.Insert(1);
   I.Insert(2);
   --I.Remove(0);
   Put_Line ("Value is initialized");

end Main;
