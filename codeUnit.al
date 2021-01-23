codeunit 80541 codes
{
    Permissions = TableData 32 = rimd;
    trigger OnRun()
    begin

    end;


    procedure calcularPrecio()
    var
        tablaItemLedger: Record "Item Ledger Entry";
    begin
        tablaItemLedger.SetFilter("Precio promedio", '0');
        if tablaItemLedger.FindSet() then begin
            tablaItemLedger.Init();
            tablaItemLedger."Precio promedio" := tablaItemLedger."Sales Amount (Actual)" / tablaItemLedger.Quantity;
            tablaItemLedger.Modify();
        end;

    end;

    var
        myInt: Integer;
}