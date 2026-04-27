// Arithmetic Logic Unit (ALU) Simulation
// Computer Organization & Architecture Project

function [result] = alu_operation(A, B, opcode)
    // opcode: 0=Add, 1=Sub, 2=AND, 3=OR, 4=XOR, 5=NOT (on A)
    
    select opcode
    case 0 then
        result = A + B;
        disp("Operation: Addition");
    case 1 then
        result = A - B;
        disp("Operation: Subtraction");
    case 2 then
        result = bitand(A, B);
        disp("Operation: Bitwise AND");
    case 3 then
        result = bitor(A, B);
        disp("Operation: Bitwise OR");
    case 4 then
        result = bitxor(A, B);
        disp("Operation: Bitwise XOR");
    case 5 then
        result = bitnot(A);
        disp("Operation: Bitwise NOT (Input A)");
    else
        disp("Invalid OpCode!");
        result = %nan;
    end
endfunction

// --- Main Program Execution ---
clc;
printf("--- Scilab ALU Project ---\n");

// Input Values (Assume 8-bit integers for simulation)
valA = input("Enter Integer A: ");
valB = input("Enter Integer B: ");

printf("\nSelect OpCode:\n0: ADD | 1: SUB | 2: AND | 3: OR | 4: XOR | 5: NOT\n");
op = input("Enter OpCode (0-5): ");

// Execute ALU
res = alu_operation(valA, valB, op);

// Output result
printf("\n--------------------------\n");
printf("Result: %d\n", res);
printf("--------------------------\n");
