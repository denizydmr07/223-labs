`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 05:43:54 PM
// Design Name: 
// Module Name: ControlUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ControlUnit(
    input logic instruction_we,
    input logic clk,
    input logic clr,
    input logic [11:0] instruction_sd,
    //input logic [3:0] switch_data, // new
    input logic execute_from_memory,
    input logic execute_from_switch,
    input logic switch_to_register, // new
    output logic load_high_alu_low,
    output logic adder_high_sorter_low,
    output logic sub_high_add_low,
    output logic [3:0] DM_a, // 4-bit address // load
    output logic DM_we, DM_re, // write and read enables // store
    //output logic [3:0] DM_rd, // 4-bit read data
    //input logic [3:0] DM_wd, // 4-bit write data
    output logic RF_we, // write enable 
    output logic [2:0] RF_ra1, RF_ra2, RF_wa, // read and write addresses // load
    //output logic [3:0] RF_rd1, RF_rd2, // read data //hmm
    //input logic [3:0] RF_wd // write data
    //AS
    output logic asc_high_des_low,
    output logic AS_sort,
    output logic AS_we,
    output logic AS_re,
    output logic [2:0] AS_wa,
    output logic [2:0] AS_ra,
    output logic [2:0] AS_constant,
    //switch to register
    output logic load_from_switch,
    //display
    output logic display_add_or_sub,
    output logic display_sorter,
    output logic display, // for DISPLAY state
    output logic [3:0] states, //debugging
    output logic [2:0] count
    //output logic [2:0] PC // debugging
    );
    
    reg [11:0] instruction; // main instruction data
    wire [11:0] instruction_md; // memory instruction data
    //reg read;
    reg [2:0] PC;
    reg [3:0] constant; // for asc and des
    logic enable;
    logic ex;
    reg [2:0] countw;
    reg [2:0] countd;
    
    InstructionMemory instractionmemory(clk,clr,instruction_we, instruction_sd, PC, instruction_md,count);
    
    typedef enum logic [3:0] {INIT,WAITS,FETCH,DECODE,LOAD,STORE,ADD,SUB,ASC,DES,READ,SORT,WRITE,DISPLAY,SWTORF,DISPLAY2} statetype;
    
    statetype currentstate;
    statetype nextstate;
        
    logic stateflag = 0;
    
    always_ff@(posedge clk) begin
        if (clr) begin
            currentstate <= INIT;
        end
        else begin
          currentstate <= nextstate;
          if (currentstate == READ && nextstate == READ) begin
            stateflag <= ~stateflag;
          end
          if (currentstate == WRITE && nextstate == WRITE) begin
            stateflag <= ~stateflag;
          end
          
          else begin
          end
            
        end
    end
    
    always@(currentstate, stateflag,execute_from_memory, execute_from_switch,switch_to_register)  begin
    //always_ff@(posedge clk) begin
        if (currentstate == INIT) begin
            display = 0;
            countw = 0;
            PC = 0;
            constant = 0;
            RF_we = 0;
            DM_we = 0;
            DM_re = 0;
            RF_ra1 = 0;
            RF_ra2 = 0;
            RF_wa = 0;
            load_high_alu_low = 1;
            adder_high_sorter_low = 1;
            sub_high_add_low = 0;
            states = 0;
            display_add_or_sub = 0;
            display_sorter = 0;
            ex = 0;
            
            load_from_switch = 0;
            nextstate = WAITS;
        end
    
        else if (currentstate == WAITS) begin // look for variable updates
            RF_we = 0;
            DM_re = 0;
            DM_we = 0;
            display = 0;
            
            display_add_or_sub = 0;
            display_sorter = 0;
            
            load_from_switch = 0;
            states = 1;
            if (execute_from_memory && !ex) begin
                instruction = instruction_md;
                PC = PC + 1;
                ex= 1;
                nextstate = FETCH;
            end
            else if (execute_from_switch) begin
                instruction = instruction_sd;
                nextstate = FETCH;    
            end
            else if(switch_to_register) begin // new
                instruction = instruction_sd;
                nextstate = SWTORF;
            end
            else begin
                nextstate = WAITS;
            end
        end
        
    else if (currentstate == FETCH) begin
            nextstate = DECODE;
            ex = 0;
            states = 2;
    end
    
    else if (currentstate == DECODE) begin
        case (instruction[11:9])
            3'b000 : nextstate = LOAD;
            3'b001 : nextstate = STORE;
            3'b010 : nextstate = SUB;
            3'b011 : nextstate = ADD;
            3'b100 : nextstate = ASC;
            3'b101 : nextstate = DES;
            3'b110 : nextstate = DISPLAY;
        endcase
        states = 3;
    end
    
    else if (currentstate == LOAD) begin
        load_high_alu_low = 1;
        RF_wa = instruction[6:4];
        DM_a = instruction[3:0];
        
        DM_we = 0;
        DM_re = 1;
        

        RF_we = 1;

        nextstate = WAITS;
        states = 4;
    end
    
    else if (currentstate == STORE) begin
        RF_ra1 = instruction[6:4];
        DM_a = instruction[3:0];
        
        DM_we = 1;
        //DM_re = 0;
        //RF_we = 0;
        
        nextstate = WAITS;
        states = 5;
    end  
          
    else if (currentstate == SUB) begin
        load_high_alu_low = 0;
        adder_high_sorter_low = 1;
        sub_high_add_low = 1;
        
        display_add_or_sub = 1;
        
        RF_we = 1;
        RF_wa = instruction[8:6];
        RF_ra1 = instruction[5:3];
        RF_ra2 = instruction[2:0];
        
        nextstate = WAITS;
        states = 6;
    end
    
    else if (currentstate == ADD) begin  // testbench done

        load_high_alu_low = 0;
        adder_high_sorter_low = 1;
        sub_high_add_low = 0;
        
        display_add_or_sub = 1;
        
        RF_we = 1;
        RF_wa = instruction[8:6];
        RF_ra1 = instruction[5:3];
        RF_ra2 = instruction[2:0];
        
        nextstate = WAITS;
        states = 7;
    end
    
    else if (currentstate == ASC) begin
        asc_high_des_low = 1;
        adder_high_sorter_low = 0;
        load_high_alu_low = 0;
        
        RF_wa = instruction[8:6];
        RF_ra2 = instruction[5:3];
        AS_constant = instruction[2:0];
        
        AS_wa = 0;
        AS_ra = 0;
        
        AS_we = 1;
        AS_re = 0;
        
        AS_sort = 0;
        
        nextstate = READ;
        states = 8;
    end
    
    else if (currentstate == DES) begin
        asc_high_des_low = 0;
        adder_high_sorter_low = 0;
        load_high_alu_low = 0;
        
        RF_wa = instruction[8:6];
        RF_ra2 = instruction[5:3];
        AS_constant = instruction[2:0];
        
        AS_wa = 0;
        AS_ra = 0;
        
        AS_we = 1;
        AS_re = 0;
        
        AS_sort = 0;
        
        nextstate = READ;
        states = 9;
    end
    
    else if (currentstate == DISPLAY) begin
        //
        RF_ra1 = instruction[8:6];
        AS_constant = instruction[2:0];
        display = 1;
        nextstate = DISPLAY2;
    end
    
    else if (currentstate == DISPLAY2) begin
        //
        RF_ra1 = RF_ra1 + 1;
        AS_constant = AS_constant + 1;
        
        countd = countd + 1;
        if (!(RF_ra1 < 7 && countd < AS_constant)) begin
            nextstate = WAITS;
        end
        else begin
            stateflag <= ~stateflag;
        end
    end
    
    else if (currentstate == READ) begin
        RF_ra2 = RF_ra2 + 1;
        AS_wa = AS_wa + 1;
        
        constant = constant + 1;
        
        if (!(RF_ra2 < 7 && constant < AS_constant-1)) begin
            nextstate = SORT;    
        end
        else begin
            nextstate = READ;
            //stateflag = ~stateflag;
        end
        
    states = 10;
    end
    
    else if (currentstate == SORT) begin
        AS_sort = 1;
        
        AS_we = 0;
        AS_re = 1;
        RF_we = 1;

        display_sorter = 1;
        nextstate = WRITE;
        states = 11;
    end
    
    else if (currentstate == WRITE) begin
        AS_sort = 0;
        
        AS_ra <= AS_ra + 1;
        RF_wa <= RF_wa + 1;
        constant <= constant - 1;
        countw = countw + 1;
        
        if (!(RF_wa < 8 && countw < AS_constant)) begin
            nextstate = WAITS;
        end
        else begin
            nextstate = WRITE;
        end
        states = 12;
    end
    
    
    else if (currentstate == SWTORF) begin
        RF_wa = instruction[11:9];
        load_from_switch = 1;
        RF_we = 1;
        
        nextstate = WAITS;
        states = 13;
    end
    else begin
        nextstate = nextstate;
    end
    
    end

    
endmodule
