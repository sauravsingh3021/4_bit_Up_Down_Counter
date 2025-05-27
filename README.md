# 🔢 4-bit Up/Down Counter in Verilog

This project implements a 4-bit up/down counter using **Verilog**, simulated and tested using **EDA Playground**.

---

## 📌 Description

- The counter starts from value `3` when reset is activated.
- It counts **up** when `up_down = 1`.
- It counts **down** when `up_down = 0`.
- Wrap-around logic is included:
  - If counting up and value reaches `15`, it wraps back to `3`.
  - If counting down and value reaches `3`, it wraps back to `15`.

---

## ⚙️ Files Included

| File           | Description                       |
|----------------|---------------------------------|
| `design.v`     | The main Verilog module          |
| `testbench.v`  | The testbench used for simulation|
| `simulation_output.txt` | Console output from simulation (optional) |

---

## 🧪 Testbench Behavior

- Starts with `reset = 1` and `up_down = 1` (up-counting).
- Runs up counting for a period.
- Switches to down counting.
- Applies reset again.
- Counts up again.

Simulation output logs the signal changes over time.

---

## ▶️ View Online

🔗 [View This Project on EDA Playground](https://www.edaplayground.com/x/FhX4)  
👤 [My EDA Playground Profile](https://www.edaplayground.com/user/842333)

---

## 💡 How to Use

1. Run the design and testbench on your favorite Verilog simulator (e.g., ModelSim, Icarus Verilog).
2. Or simulate online using the EDA Playground link above.

---

## 🛠️ Requirements (If Running Locally)

- Verilog simulator such as ModelSim, Icarus Verilog, or others.
- Optional: VS Code with Verilog extension for editing.

---

## 📁 Repository Structure

