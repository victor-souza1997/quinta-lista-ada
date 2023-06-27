

package queuemod is

   type Element;
   type Element is new  Integer;
   function Empty return Boolean;
   procedure Insert(E: Element);
   procedure Remove(E: out Element);
   
end queuemod;