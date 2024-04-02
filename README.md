# All-Digital-Phase-Locked-Loop

## CSIE ADIC LAB--All-Digital Phase-Locked Loop(ADPLL)

Design **ADPLL** to keep tracking the phase and frequency of referance clock.  

Correct **PLL Behavior Simulation**    

Correct **AMS-Ultra PLL Simulation**  

1.**Phase and Frequency Detector(PFD)**：Compare the phase and frequecy error.   
The architecture of PFD is designed by Reference[1](https://ieeexplore.ieee.org/document/1175517).

2.**PLL Controller**：Update the output frequency for tracking.  
 
3.**Digital Controlled Oscillator(DCO)**：Provide 128 different frequencies.  
The architecture of DCO is designed by Reference[2](https://ieeexplore.ieee.org/document/933795).

4.**Frequency Divider**：Provide the divided frequency to PFD.  


ADPLL系統架構：  
![ADPLL系統架構](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/d94644fe-e788-4f8e-a7b2-d88ef8e2ad9a)


![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/e3378d02-6c2f-4120-9854-7a75a0b3f767)


Period jitter(s)：
![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/d532fe04-45f8-4cbe-a4df-b26b110b0d0b)

 
Cycle-to-Cycle jitter(ns)：
![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/38a6d929-67c5-4443-86be-80fb901bf20a)

 
## Reference  
[1](https://ieeexplore.ieee.org/document/1175517) Ching-Che Chung and Chen-Yi Lee, "An all-digital phase-locked loop for high-speed clock generation," in IEEE Journal of Solid-State Circuits, vol. 38, no. 2, pp. 347-351, Feb. 2003, doi: 10.1109/JSSC.2002.807398.  

[2](https://ieeexplore.ieee.org/document/933795)Hsu, T. Y., Wang, C. C., & Lee, C. Y. (2001). Design and analysis of a portable high-speed clock generator. IEEE Transactions on circuits and systems II: analog and digital signal processing, 48(4), 367-375.
