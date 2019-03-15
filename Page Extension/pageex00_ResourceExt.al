pageextension 50101 "EBS Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("EBS Resource Type"; "EBS Resource Type")
            {

            }
            field("EBS Quantity per day"; "EBS Quantity per day")
            {


            }


        }
        addlast(Content)
        {
            group("EBS Room")
            {
                Caption = 'Room';
                Visible = showRoom;

                field("EBS maximum Participants"; "EBS maximum Participants")
                {

                }
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        showRoom := (Type = Type::Machine);

    end;

    var
        [InDataSet]
        showRoom: Boolean;
}