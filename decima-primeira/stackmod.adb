package body stackmod is
    type Stack_Node_T; 
    type Stack_Node_Ptr_T is access Stack_Node_T;
    type Element_Array is array (Positive range <>) of Element;

    type Stack_Node_T is
        record
            Contents : Element;
            Next : Stack_Node_Ptr_T;
        end record;

    type Stack_T is
        record
            Top : Stack_Node_Ptr_T;
        end record;

    type Stack_Ptr_T is access Stack_T;

    S : Stack_Ptr_T;

    procedure Create is
    begin
        S := new Stack_T;
        S.Top := null;
    end Create;

    function Empty return Boolean is
    begin
        return S.Top = null;
    end Empty;

    procedure Push(E : Element) is
        New_Node : Stack_Node_Ptr_T;
    begin
        New_Node := new Stack_Node_T;
        New_Node.Contents := E;
        New_Node.Next := S.Top;
        S.Top := New_Node;
    end Push;

    procedure Pop(E : out Element) is
        Old_Node : Stack_Node_Ptr_T;
    begin
        Old_Node := S.Top;
        E := Old_Node.Contents;
        S.Top := S.Top.Next;
    end Pop;

begin
    Create;
end stackmod;
