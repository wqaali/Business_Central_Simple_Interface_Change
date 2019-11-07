# Business_Central_Simple_Interface_Change
1:Open your AL project folder in Visual Studio Code.
2:In Visual Studio Code's Explorer pane, right-click and create a new file named Customer Card Ext.al as committed in this respository.
3:Add Table Extension Code and pageextesion as well
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
  4:Ctrl+Shift+b to build your project if it successfully built then run your extension ctrl_shift_p
  5:In business central open customer list and select any customer customer column should apear in generat tab of customer Card.
  
