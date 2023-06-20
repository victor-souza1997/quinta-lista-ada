with Ada.Text_IO;

package Objects is
   type Object is tagged record
      X_Coord : Float;
      Y_Coord : Float;
   end record;

   function Distance(O : Object) return Float;
   function Area(O : Object) return Float;
   procedure PrintArea(O : Object);
end Objects;

package body Objects is
   function Distance(O : Object) return Float is
   begin
        Ada.Text_IO.Put_Line("Not implemented");
   end Distance;

   function Area(O : Object) return Float is
   begin

   end Area;

   procedure PrintArea(O : Object) is
   begin
      Ada.Text_IO.Put_Line("Área do objeto: " & Area(O)'Image);
   end PrintArea;
end Objects;
