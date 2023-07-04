----------------------------------------------------------
-- STR, Lista 05, Exercicio 10, Lista encadeada generic
----------------------------------------------------------

package body stackmod_Template is


    procedure Create (S : in out Stack) is 

    begin 
        S.Top := null;
    end Create; 

    procedure Push (S: in out Stack; E : Element) is
    New_Node : Stack_Node_Ptr_T;

    begin
        New_Node := new Stack_Node_T;
        New_Node.Contents := E;
        New_Node.Next := S.Top;
        S.Top := New_Node;
    end Push;

    procedure Pop (S:in out Stack; E: Element) is

        Old_Node : Stack_Node_Ptr_T;
    begin
        Old_Node := S.Top;
        E := Old_Node.Contents;
        S.Top := S.Top.Next;
    end Pop;
   procedure Create (Q : in out Queue) is
   begin
      Q.Front := null; --nao necessariamente um ponteiro
      Q.Back := null; --sao sempre inicializados como null
   end Create;

   function Empty (Q : Queue) return Boolean is
   begin
      return Q.Front = null;
   end Empty;

   procedure Insert (Q : in out Queue; E : Element) is
      New_Node : Queueptr;
   begin
      New_Node := new Queuenode;
      New_Node.Contents := E;
      New_Node.Next := null;
      if Empty(Q) then
         Q.Front := New_Node;
      else
         Q.Back.Next := New_Node;
      end if;
      Q.Back := New_Node;
   end Insert;

   procedure Remove (Q : in out Queue; E : out Element) is
      Old_Node : Queueptr;
   begin
      Old_Node := Q.Front;
      E := Old_Node.Contents;
      Q.Front := Q.Front.Next;
      if Q.Front = null then
         Q.Back := null;
      end if;
   end Remove;

   Q : Queue;
begin
   Create(Q);

end Queuemod_Template;