//Create and customer column for customer table which will hold Country information.
tableextension 50100 "Customer Share Details" extends Customer
{
    fields
    {
        field(50100; "Customer Second Country"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = US,IND,UK;
        }
    }
}
//Add a options dropdown to the general fast tab of customer Card.
pageextension 50100 "CustomerCardExtension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Customer Second Country"; "Customer Second Country")
            {
                ApplicationArea = All;
            }
        }
    }

}

