module dmemmuxes(
  input logic writeback,
  input logic jalr_en,
  input logic bands,
  input logic [31:0]aluoutput,
  input logic [31:0]dmemout,
  input logic [31:0]pcreg,
  output logic [31:0]writein_reg
);
  logic [31:0]r1;
  logic [31:0]r2;
  always_comb begin
  case(writeback)
        1'b0:r1=aluoutput;
        1'b1:r1=dmemout;
        default:;
      endcase
      case(jalr_en)
        1'b0:r2=r1;
        1'b1:r2=pcreg+4;
      endcase
      case(bands)
        1'b0:writein_reg=r2;
        //1'b1:writein_reg=32'b?;
        default:;
      endcase
  end
endmodule