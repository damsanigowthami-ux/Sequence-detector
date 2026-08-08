module sequence_detector(
    input clk,
    input rst,
    input din,
    output reg detected
);

parameter S0=0,S1=1,S2=2,S3=3,S4=4;

reg [2:0] state,next_state;

always @(posedge clk or posedge rst)
begin
    if(rst)
        state <= S0;
    else
        state <= next_state;
end

always @(*)
begin
    case(state)

    S0:
        if(din) next_state=S1;
        else next_state=S0;

    S1:
        if(din) next_state=S1;
        else next_state=S2;

    S2:
        if(din) next_state=S3;
        else next_state=S0;

    S3:
        if(din) next_state=S4;
        else next_state=S2;

    S4:
        if(din) next_state=S1;
        else next_state=S2;

    default:
        next_state=S0;

    endcase
end

always @(*)
begin
    if(state==S4)
        detected=1;
    else
        detected=0;
end

endmodule
