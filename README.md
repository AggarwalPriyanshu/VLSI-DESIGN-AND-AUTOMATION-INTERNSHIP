# 🔬 VLSI Design & Automation: RTL-to-GDSII Portfolio

![VLSI](https://img.shields.io/badge/Domain-VLSI-blue)
![Cadence](https://img.shields.io/badge/Tools-Cadence%20Genus%20|%20Innovus-orange)
![Flow](https://img.shields.io/badge/Flow-RTL--to--GDSII-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview
This repository documents a comprehensive **VLSI Design and Automation** internship journey. The work spans from fundamental waveform analysis and transistor-level logic to the complete physical implementation (GDSII) of a complex ASIC.

The project highlights the transition from generating **50+ waveforms** to synthesizing architectures and performing full **Floorplanning, Power Planning, Routing, and Static Timing Analysis (STA)** using industry-standard Cadence tools.

---

## 🗓️ 6-Week Technical Roadmap

### **Week 1: High-Volume Waveform Generation**
- Mastered the **Cadence Xcelium/Virtuoso** environment for functional verification.
- Generated and verified **50+ signal waveforms** to analyze propagation delays and logic transitions.

### **Week 2 & 3: Logic Synthesis (Cadence Genus)**
- Executed logic synthesis for **10 distinct digital circuits**.
- Generated gate-level netlists and professional reports for **Area, Power, and Timing**.

### **Week 4: Physical Design & Area Planning (Cadence Innovus)**
- Performed end-to-end Physical Design for three core architectures:
  - **Full Adder** (Combinational Logic Optimization).
  - **Sequence Detector** (Sequential Logic & FSM).
  - **Traffic Light Controller** (Complex System Routing).
- Completed **Floorplanning, Power Planning (VDD/VSS Rings & Stripes), and Detailed Routing**.

### **Week 5: Timing Closure (STA)**
- Conducted **Static Timing Analysis (STA)** on all physical layouts to ensure hardware reliability.
- Verified **Setup and Hold times** across critical paths to achieve sign-off with zero violations.

### **Week 6: Capstone Project - Digital Safe**
- Implemented a complete **RTL-to-GDSII** flow for a hardware-ready Digital Safe system.

---

## 🛡️ Featured Project: Digital Safe System
A Verilog-based security system designed for ASIC implementation, featuring multi-layer authentication and emergency state-machine logic.

### **Key Logic Features**
- **32-bit Encryption:** High-width code comparison logic for secure access.
- **Master Code Override:** Integrated emergency access protocol for administrative override.
- **Duress Alarm:** Triggers a silent **alert** signal if a specific duress code is entered.
- **Auto-Lockout:** A sequential timer-based lock triggers a hard-lock state after 3 failed attempts.



### **Verilog Implementation (Authentication Logic)**
```verilog
// Logic for Duress and Master Code Authentication
if (entered_code == current_code || entered_code == master_code) begin
    unlocked <= 1;
    alert <= 0;
    attempts <= 0;
end else if (entered_code == duress_code) begin
    unlocked <= 1;
    alert <= 1; // Silent Alert Triggered
    attempts <= 0;
end
```
---

## 🛠️ Tools & Technologies

- **Hardware Description Language:** Verilog HDL
- **Simulation & Verification:** - **Cadence Xcelium:** Used for high-performance functional simulation and generating 50+ waveforms.
  - **Proteus VSM:** Used for initial digital logic verification and schematic capture.
- **Logic Synthesis:** **Cadence Genus** – Performed RTL-to-gate-level mapping with area and power optimization.
- **Physical Design:** **Cadence Innovus** – Handled the complete backend flow including Floorplanning, Power Planning, and Placement & Routing (P&R).
- **Timing Analysis:** **Static Timing Analysis (STA)** – Conducted sign-off timing checks to ensure zero setup/hold violations.

---
```
📂 Repository Structure
├── 📈 01_Waveforms/             # 50+ Simulation Result Screenshots
├── ⚙️ 02_Synthesis_Genus/       # Netlists & Reports (10 Circuits)
├── 🏗️ 03_Physical_Design/       # Innovus Layouts (Adder, Seq Det, TLC)
├── 🛡️ 04_Capstone_DigitalSafe/  # Digital Safe RTL & Implementation
└── 🎓 05_Documentation/
    ├── Weekly_Reports_1_6.pdf   # Weekly milestone logs
    ├── Training_Diary.pdf       # Daily activity log
    └── Final_Project_Report.pdf # Comprehensive Technical Thesis
```

## 📚 Learning Outcomes

- **Expert Proficiency:** Mastery of the industry-standard **Cadence RTL-to-GDSII** toolchain (Genus/Innovus).
- **Physical Design Mastery:** Practical experience in Floorplanning, Power Planning, and complex Routing for ASICs.
- **Timing Closure:** Advanced understanding of Static Timing Analysis and methodologies for closing timing on digital designs.
- **Professional Engineering Standards:** Developed high-quality technical documentation, daily diaries, and internship project reports.

---

## 👤 Author

**Priyanshu Aggarwal** *Electronics & Communication Engineering* 📧 **Email:** [Priyanshuaggarwal.in@gmail.com](mailto:Priyanshuaggarwal.in@gmail.com)  
🔗 **LinkedIn:** [priyanshu1201](https://linkedin.com/in/priyanshu1201)  
💻 **GitHub:** [AggarwalPriyanshu](https://github.com/AggarwalPriyanshu)

---

⭐ **If you find this repository useful, feel free to star it!**
