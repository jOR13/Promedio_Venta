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
        tablaItemLedger.SetFilter(Quantity, '<>0');
        tablaItemLedger.SetFilter("Sales Amount (Actual)", '0');

        if tablaItemLedger.FindSet() then begin
            tablaItemLedger.Init();
            if (tablaItemLedger.Quantity <> 0) and (tablaItemLedger."Sales Amount (Actual)" <> 0) then begin
                tablaItemLedger."Precio promedio" := tablaItemLedger."Sales Amount (Actual)" / tablaItemLedger.Quantity;
                tablaItemLedger.Modify();
            end;
        end;

    end;

    var
        myInt: Integer;
}