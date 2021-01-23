tableextension 80562 ItemLedgerExt extends "Item Ledger Entry"
{
    fields
    {
        field(80562; "Precio promedio"; Decimal)
        {

        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        if ("Precio promedio" = 0) then begin
            "Precio promedio" := rec."Sales Amount (Actual)" / rec.Quantity;
        end;
    end;

    var
        myInt: Integer;
}

pageextension 80262 ItemLedgerPageExt extends "Item Ledger Entries"
{
    layout
    {
        addafter("Sales Amount (Actual)")
        {
            field("Precio promedio"; rec."Precio promedio")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage()
    var
        codes: Codeunit codes;
    begin
        codes.calcularPrecio();
    end;

    var
        myInt: Integer;
}