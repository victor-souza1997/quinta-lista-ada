----------------------------------------------------------
-- STR, Lista 05, Exercicio 10, Lista encadeada generic
----------------------------------------------------------

generic type Element is private;

package Queuemod_Template is

   type Queue is limited private;  --is limited private;
   procedure Create (Q : in out Queue);
   function Empty(Q : Queue) return Boolean;
   procedure Insert(Q : in out Queue; E : Element);
   procedure Remove(Q : in out Queue; E : out Element);

private
   type Queuenode;
   type Queueptr is access Queuenode;
   type Queuenode is
      record
         Contents : Element;
         Next : Queueptr;
      end record;
   type Queue is
      record
         Front : Queueptr;
         Back : Queueptr;
      end record;

end Queuemod_Template;