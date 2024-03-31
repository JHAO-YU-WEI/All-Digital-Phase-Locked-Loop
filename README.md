# All-Digital-Phase-Locked-Loop

## CSIE DIC LAB--All-Digital Phase-Locked Loop(ADPLL)

Design **ADPLL** to keep tracking the phase and frequency of referance clock.  

Correct **PLL Behavior Simulation**    

Correct **AMS-Ultra PLL Simulation**  

1.**Phase and Frequency Detector(PFD)**：Compare the phase and frequecy error.   
The architecture of PFD is designed by Reference[1](https://ieeexplore.ieee.org/document/1175517).

2.**PLL Controller**：Update the output frequency for tracking.  
 
3.**Digital Controlled Oscillator(DCO)**：Provide 128 different frequencies.  
The architecture of DCO is designed by Reference[2](https://ieeexplore.ieee.org/document/933795).

4.**Frequency Divider**：Provide the divided frequency to PFD.  

![ADICdemo2系統架構](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/bb5d78ce-08e0-49d9-a720-3ca1c1d41e9d)

![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/b5bea130-b408-41ef-9836-f205627cb98b)  

Period jitter(s)：
![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/5a218744-aa49-41e7-ae76-1b4dbaa80de8)

 
Cycle-to-Cycle jitter(ns)：
![image](https://github.com/JHAO-YU-WEI/All-Digital-Phase-Locked-Loop/assets/100525884/894e5b5e-f462-4deb-9c5d-82420f969f3a)

 
## Reference  
[1](https://ieeexplore.ieee.org/document/1175517) Ching-Che Chung and Chen-Yi Lee, "An all-digital phase-locked loop for high-speed clock generation," in IEEE Journal of Solid-State Circuits, vol. 38, no. 2, pp. 347-351, Feb. 2003, doi: 10.1109/JSSC.2002.807398.  

[2](https://ieeexplore.ieee.org/document/933795)Hsu, T. Y., Wang, C. C., & Lee, C. Y. (2001). Design and analysis of a portable high-speed clock generator. IEEE Transactions on circuits and systems II: analog and digital signal processing, 48(4), 367-375.
