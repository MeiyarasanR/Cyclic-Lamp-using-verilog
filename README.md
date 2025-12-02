#🚦 Cyclic Lamp FSM (Verilog)
# Verilog
FSM Based verilog coding
Cyclic_lamp
  src/
     └── Cyclic_lamp.v        // Main FSM design
  tb/
     └── Cyclic_lamp_TB.v     // Testbench for simulation

=> Using one always block makes both state and output registered.
   So synthesis tool creates 2 FFs for state + 3 FFs for light = 5 FFs.

=> Using two always blocks (state register + combinational output logic) keeps output combinational.
   So only 2 FFs are needed (for state).

<img width="461" height="363" alt="Cyclic_lamp_state_diagram" src="https://github.com/user-attachments/assets/3b2d14ff-9229-4a13-b803-cbdd83b3a682" />



 <img width="1067" height="643" alt="image" src="https://github.com/user-attachments/assets/2fd6dee2-f018-45c9-a089-bed9bd0616d6" />
 

<img width="1491" height="228" alt="Screenshot 2025-12-02 095930" src="https://github.com/user-attachments/assets/99782560-0116-4d68-9a7e-9733b21cb7bc" />


<img width="1044" height="349" alt="Screenshot 2025-12-02 095955" src="https://github.com/user-attachments/assets/8cbabd9e-3ce9-49eb-8658-53398bd3ae1e" />
