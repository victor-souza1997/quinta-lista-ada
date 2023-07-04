

package stackmod is

   type Element;
   type Element is new  Integer;
   function Empty return Boolean;
   procedure Push(E: Element);
   procedure Pop(E: out Element);
   
end stackmod;