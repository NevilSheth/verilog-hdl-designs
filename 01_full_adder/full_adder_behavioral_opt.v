module full_adder_behavioral_opt(a,b,cin,sum,cout);

input a,b,cin;
output reg sum,cout;

always @(*)
begin
    if(a+b+cin==0)
    begin
        sum=0;
        cout=0;
    end

    else if(a+b+cin==1)
    begin
        sum=1;
        cout=0;
    end

    else if(a+b+cin==2)
    begin
        sum=0;
        cout=1;
    end

    else if(a+b+cin==3)
    begin
        sum=1;
        cout=1;
    end
end

endmodule