tableextension 50100 "EBS Resource" extends Resource
{
    fields
    {
        field(50101; "EBS Resource Type"; Option)
        {
            OptionMembers = Internal,External;
            DataClassification = CustomerContent;
            Caption = 'Resource Type';
        }
        field(50102; "EBS maximum Participants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Maximum Participants';
        }
        field(50103; "EBS Quantity per day"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity per day';
        }

        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }

    }

    var
        myInt: Integer;
}