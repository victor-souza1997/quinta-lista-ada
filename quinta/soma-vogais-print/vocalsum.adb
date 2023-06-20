with Ada.Text_IO;

procedure CountVowels is
   -- Declare the string
   Str : String := "hello";
   Vowels : String (1 .. 10);
   -- Counter for vowels
   VowelCount : Integer := 0;
begin

   for I in Str'Range loop
      case Str(I) is
         when 'a' | 'A' | 'e' | 'E' | 'i' | 'I' | 'o' | 'O' | 'u' | 'U' =>
            VowelCount := VowelCount + 1;
            Vowels(VowelCount) := Str(I);
         when others =>
            null; -- Ignore non-vowel characters
      end case;
   end loop;

   -- Display the count of vowels
   Ada.Text_IO.Put_Line("Number of vowels: " & VowelCount'Image);
    
   -- Display vowels

   for I in 1 .. VowelCount loop
    Ada.Text_IO.Put(Vowels(I));
   end loop;
end CountVowels;
