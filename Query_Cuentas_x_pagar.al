query 80167 QueryCXP
{
    QueryType = Normal;

    elements
    {
        dataitem(Vendor_Ledger_Entry; "Vendor Ledger Entry")
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
            column(Vendor_No_; "Vendor No.")
            {
            }

            dataitem(Vendor; Vendor)
            {

                DataItemLink = "No." = Vendor_Ledger_Entry."Vendor No.";


                column(Name; Name)
                {
                }
                column(ResponsibilityCenter; "Responsibility Center")
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