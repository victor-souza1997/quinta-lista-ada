----------------------------------------------------------
-- STR, Lista 05, Exercicio 10, Lista encadeada generic
----------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Queuemod_Template;

procedure strl03ex10 is
   package I is new Queuemod_Template (Element => Integer);
   Q:  I.Queue;

begin
   I.create(Q);
   I.Insert(Q, 2);
   Put_Line ("Lista encadeada generic!");
end strl03ex10;
