module digital_clock #(parameter CLK_FREQ = 50000000)(
    input clk,
    input reset,
    output reg [5:0] sec,
    output reg [5:0] min,
    output reg [4:0] hour
);

reg [31:0] count;
wire one_sec_pulse;


always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 0;
    end 
    else if (count == CLK_FREQ - 1) begin
        count <= 0;
    end 
    else begin
        count <= count + 1;
    end
end

assign one_sec_pulse = (count == CLK_FREQ - 1);


always @(posedge clk or posedge reset) begin
    if (reset) begin
        sec  <= 0;
        min  <= 0;
        hour <= 0;
    end 
    else if (one_sec_pulse) begin
        if (sec == 59) begin
            sec <= 0;

            if (min == 59) begin
                min <= 0;

                if (hour == 23)
                    hour <= 0;
                else
                    hour <= hour + 1;

            end 
            else begin
                min <= min + 1;
            end

        end 
        else begin
            sec <= sec + 1;
        end
    end
end

endmodule
