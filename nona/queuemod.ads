
generic type Element is private;


package queuemod is
-- assuma que o tipo Element está no escopo
function Empty return Boolean;
    procedure Insert (E : Element);
    procedure Remove (E : out Element);
end queuemod;
