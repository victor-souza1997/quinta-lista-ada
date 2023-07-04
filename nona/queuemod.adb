
package body queuemod is
    type Queue_Node_T; --declaração mais adiante
    type Queue_Node_Ptr_T is access Queue_Node_T;
    type Element_Array is array(Positive range <>) of Element;
        
    type Queue_Node_T is
    record
        Contents : Element;
        Next : Queue_Node_Ptr_T;
    end record;
    
    type Queue_T is
    record
        Front : Queue_Node_Ptr_T;
        Back : Queue_Node_Ptr_T;
    end record;


    type Queue_Ptr_T is access Queue_T;
    
    
    Q : Queue_Ptr_T;
    
    
    
    procedure Create is
    begin
        Q := new Queue_T;
        Q.Front := null; --não necessariamente um ponteiro
        Q.Back := null; --são sempre inicializados como null
    end Create;
    
    function Empty return Boolean is
    
    begin
        return Q.Front = null;
    end Empty;

    procedure Insert(E : Element) is
        New_Node : Queue_Node_Ptr_T;
        begin
        New_Node := new Queue_Node_T;
        New_Node.Contents := E;
        New_Node.Next := null;
        if Empty then
        Q.Front := New_Node;
        else
        Q.Back.Next := New_Node;
        end if;
        Q.Back := New_Node;
    end Insert;
    
    
    procedure Remove(E : out Element) is
        Old_Node : Queue_Node_Ptr_T;
    begin
        Old_Node := Q.Front;
        E := Old_Node.Contents;
        Q.Front := Q.Front.Next;
        if Q.Front = null then
        Q.Back := null;
        end if;
    end Remove;
    



begin
    Create;

   
end queuemod;