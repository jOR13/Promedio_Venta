query 80162 Ventas
{
    QueryType = Normal;


    elements
    {
        dataitem(Item_Ledger_Entry; "Item Ledger Entry")


        {
            DataItemTableFilter = "Entry Type" = filter(= 'Sale'), Quantity = filter(<> '-1'), Quantity = filter(<> '1'), Quantity = filter(<> '-7.605');

            column(Document_No_; "Document No.")
            {

            }
            column(Sales_Amount__Actual_; "Sales Amount (Actual)")
            {

            }
            column(Quantity; Quantity)
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Entry_Type; "Entry Type")
            {

            }






            // filter(FilterName; SourceFieldName)
            // {

            // } -13093.433 + 125574.9200

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}