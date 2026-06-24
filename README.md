# digital-clock-24hours-verilog
24-hour digital clock using Verilog with clock divider and RTL verification.
# 🕒 Digital Clock using Verilog

## 📌 Overview

This project implements a **24-hour digital clock (HH:MM:SS)** using Verilog HDL.
The design includes a parameterized clock divider and sequential logic for time tracking.

---

## ⚙️ Features

* 24-hour format clock
* Parameterized clock divider
* Seconds, minutes, hours counters
* Proper rollover handling (59 → 0, 23 → 0)
* Verified using testbench and waveform

---

## 🧪 Simulation

* Tool: EDA Playground / Icarus Verilog
* Waveform verified using EPWave

---

## 📂 Files

* `design.sv.txt` → Main clock design
* `testbench.sv.txt` → Testbench for verification

---

## ▶️ How to Run

```bash
iverilog -o clock testbench.sv design.sv
vvp clock
```

---

## 📊 Output Example

```
Time=... | 00:00:01  
Time=... | 00:00:02  
```

---

## 🧠 Learning Outcomes

* RTL design using Verilog
* Sequential logic and counters
* Clock division
* Simulation and debugging

---

## 🚀 Future Improvements

* 7-segment display integration
* Alarm feature
* 12-hour format

---

## 🔗 Author

Shafiya Siddiqua R
