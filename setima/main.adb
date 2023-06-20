with Ada.Text_IO;

procedure Person_Type_Derivation is
   type Month_Name is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
   
   type Date is record
      Day   : Integer range 1..31;
      Month : Month_Name;
      Year  : Integer;
   end record;

   type Person is record
      Birth : Date;
   end record;

   type Man is record
      Birth    : Date;
      HasBeard : Boolean;
   end record;

   type Woman is record
      Birth       : Date;
      NumChildren : Integer range 0..100;
   end record;

   Man1 : Man;
   Woman1 : Woman;
begin
   Man1.Birth := (Day => 12, Month => Oct, Year => 1990);
   Man1.HasBeard := True;

   Woman1.Birth := (Day => 3, Month => Mar, Year => 1985);
   Woman1.NumChildren := 2;

   Ada.Text_IO.Put_Line("Details of Man1:");
   Ada.Text_IO.Put_Line("Birth: " & Man1.Birth.Day'Image & " " & Man1.Birth.Month'Image & " " & Man1.Birth.Year'Image);
   Ada.Text_IO.Put_Line("HasBeard: " & Boolean'Image(Man1.HasBeard));

   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line("Details of Woman1:");
   Ada.Text_IO.Put_Line("Birth: " & Woman1.Birth.Day'Image & " " & Woman1.Birth.Month'Image & " " & Woman1.Birth.Year'Image);
   Ada.Text_IO.Put_Line("NumChildren: " & Woman1.NumChildren'Image);
end Person_Type_Derivation;
