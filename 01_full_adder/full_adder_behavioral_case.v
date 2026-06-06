module full_adder_behavioral_case(a,b,cin,sum,cout);

input a,b,cin;
output reg sum,cout;

always @(*)
begin
    case({a,b,cin})
        0: begin
            sum=0;
            cout=0;
        end

        1: begin
            sum=1;
            cout=0;
        end

        2: begin
            sum=1;
            cout=0;
        end

        3: begin
            sum=0;
            cout=1;
        end

        4: begin
            sum=1;
            cout=0;
        end

        5: begin
            sum=0;
            cout=1;
        end

        6: begin
            sum=0;
            cout=1;
        end

        7: begin
            sum=1;
            cout=1;
        end
    endcase
end

endmodule