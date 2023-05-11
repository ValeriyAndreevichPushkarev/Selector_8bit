//test of full module with converter
module tb;
reg [7:0] addr;
wire [255:0] decoded;


Selector_8 dut (addr, decoded);

integer i;
integer j;

initial
begin

$display("test addr decoder");
addr <= 8'b00000001;

$display("test addr decoder");

# 10000000
if (decoded[1]!=1'b1)
			begin
				$display ("ERROR: incorrect result, %d", addr);
				for (i=0; i<255; i=i+1)
				begin
					if (decoded[i]==1'b1)
					begin
						$display ("Output is active on, %d", i);
					end
				end
			end;
			
			
$display("manual smoke test:");

addr = 1;

# 10000000
if (decoded[1]!=1'b1)
			begin
				$display ("ERROR: incorrect result, %d", addr);
			end;
		if (decoded[0]!=1'b0)
			begin
				$display ("ERROR: incorrect result, %d", addr+1);
			end;
		if (decoded[2]!=1'b0)
			begin
				$display ("ERROR: incorrect result, %d", addr-1);
			end;
			

$display("10 autotests:");
for (i=0; i<10; i=i+1)
	begin
		j = $urandom%255; 
		addr<=j;

		# 10000000

		if (decoded[j]!=1'b1)
			begin
				$display ("ERROR: incorrect result, %d", j);
				for (i=0; i<255; i=i+1)
				begin
					if (decoded[i]==1'b1)
					begin
						$display ("Output is active on, %d", i);
					end
				end
			end;
		if (decoded[j+1]!=1'b0)
			begin
				$display ("ERROR: incorrect result, %d", j);

			end;
		if (decoded[j-1]!=1'b0)
			begin
				$display ("ERROR: incorrect result, %d", j-1);
			end;
	end;
$finish;
end
endmodule

