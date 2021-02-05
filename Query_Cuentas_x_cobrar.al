query 80166 MyQuery
{
    QueryType = Normal;

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {


            column(PostingDate; "Posting Date")
            {
            }
            column(DueDate; "Due Date")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(Open; Open)
            {
            }
            column(RemainingAmtLCY; "Remaining Amt. (LCY)")
            {
            }
            column(DimensionSetID; "Dimension Set ID")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }

            dataitem(Customer; Customer)
            {

                DataItemLink = "No." = Cust__Ledger_Entry."Customer No.";


                column(Responsibility_Center; "Responsibility Center")
                {
                }
                column(Name; Name)
                {
                }



            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}