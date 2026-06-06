module full_adder_behavioral_if(a,b,cin,sum,cout);

input a,b,cin;
output reg sum,cout;

always @(*)
begin
    if(a==0 && b==0 && cin==0)
    begin
        sum=0;
        cout=0;
    end
    else if(a==0 && b==0 && cin==1)
    begin
        sum=1;
        cout=0;
    end
    else if(a==0 && b==1 && cin==0)
    begin
        sum=1;
        cout=0;
    end
    else if(a==0 && b==1 && cin==1)
    begin
        sum=0;
        cout=1;
    end
    else if(a==1 && b==0 && cin==0)
    begin
        sum=1;
        cout=0;
    end
    else if(a==1 && b==0 && cin==1)
    begin
        sum=0;
        cout=1;
    end
    else if(a==1 && b==1 && cin==0)
    begin
        sum=0;
        cout=1;
    end
    else if(a==1 && b==1 && cin==1)
    begin
        sum=1;
        cout=1;
    end
end

endmodule