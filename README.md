# 🔬 VLSI Design & Automation: RTL-to-GDSII Portfolio

![VLSI](https://img.shields.io/badge/Domain-VLSI-blue)
![Cadence](https://img.shields.io/badge/Tools-Cadence%20Genus%20|%20Innovus-orange)
![Flow](https://img.shields.io/badge/Flow-RTL--to--GDSII-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview
This repository documents a comprehensive **VLSI Design and Automation** internship journey. The work spans from fundamental waveform analysis to the physical implementation (GDSII) of a complex ASIC.

The project highlights the transition from generating **50+ waveforms** in the first week to executing the full backend flow—including **Synthesis, Floorplanning, CTS, and STA**—for various digital architectures.

---

## 🗓️ 6-Week Technical Roadmap

### **Week 1: High-Volume Waveform Generation**
- Mastered **Cadence Xcelium** for high-performance functional verification.
- Generated and analyzed **50+ waveforms** to verify logic transitions and timing behavior.

### **Week 2: Logic Synthesis & Reporting**
- Synthesized **10+ digital circuits** using **Cadence Genus**.
- Documented comprehensive outputs for each:
  - Gate-level Netlists.
  - Area, Power, and Timing Reports.
  - Schematic Gate Visualizations.

### **Week 3: Floorplanning & Area Planning**
- Focus on 3 core circuits: **Full Adder** (Combinational), **Sequence Detector** (Sequential), and **Traffic Light Controller** (System).
- Defined core/die boundaries, aspect ratios, and I/O pin placement in **Cadence Innovus**.

### **Week 4: Power Planning, CTS & Routing**
- Applied advanced physical design steps to the 3 target circuits:
  - **Power Planning:** Designing VDD/VSS rings and stripes for robust power delivery.
  - **Clock Tree Synthesis (CTS):** Balancing clock skew and minimize insertion delay.
  - **Routing:** Detailed signal routing with zero DRC violations.



### **Week 5: Static Timing Analysis (STA)**
- Performed sign-off timing verification on the 3 primary designs.
- Analyzed Setup/Hold constraints and critical paths to ensure frequency targets were met.

### **Week 6: Capstone Project - Digital Safe**
- Executed the **entire RTL-to-GDSII flow** for a custom Verilog-based **Digital Safe System**.
- Integrated multi-layer security features: 32-bit comparison, Master Code, and Duress Alarm logic.

---

## 🛡️ Featured Project: Digital Safe System
A Verilog-based security system designed for ASIC implementation, featuring multi-layer authentication and emergency state-machine logic.

### **Key Logic Features**
- **32-bit Encryption:** High-width code comparison logic.
- **Master Code Override:** Integrated emergency access protocol.
- **Duress Alarm:** Triggers a silent **alert** signal if a specific duress code is entered.
- **Auto-Lockout:** Timer-based lock triggers after 3 failed attempts.

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

**Priyanshu Aggarwal**  
Electronics & Communication Engineering  

📧 Email: Priyanshuaggarwal.in@gmail.com  
🔗 LinkedIn: https://linkedin.com/in/priyanshu1201  
💻 GitHub: https://github.com/AggarwalPriyanshu  

---

⭐ If you find this repository useful, feel free to star it!
