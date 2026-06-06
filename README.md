# Verilog HDL Designs

A collection of digital design implementations in Verilog HDL, covering combinational circuits, sequential circuits, memory elements, and finite state machines.

---

## About Me

- **Name:** Nevil Sheth
- **Degree:** B.Tech ECE | Semester 5
- **University:** Institute of Technology, Nirma University
- **LinkedIn:** [linkedin.com/in/nevil-sheth-577382326](https://www.linkedin.com/in/nevil-sheth-577382326/)

---

## Tools Used

- **Quartus II** — Synthesis and implementation
- **DE2 FPGA Board** — Hardware target and verification
- **ModelSim/Quartus Simulator** — Functional simulation and waveform analysis

---

## Designs

### 01 — Full Adder
1-bit Full Adder implemented across multiple modeling styles.

| File | Modeling Style |
|---|---|
| `full_adder_gate.v` | Gate Level |
| `full_adder_dataflow.v` | Dataflow |
| `full_adder_behavioral_if.v` | Behavioural (If-Else) |
| `full_adder_behavioral_case.v` | Behavioural (Case) |
| `full_adder_behavioral_opt.v` | Behavioural (Optimum) |

---

### 02 — 4x1 Multiplexer
4-to-1 MUX implemented using Gate Level and Dataflow modeling.

| File | Modeling Style |
|---|---|
| `mux_4x1_gate.v` | Gate Level |
| `mux_4x1_dataflow.v` | Dataflow |

---

### 03 — 16x1 Multiplexer
16-to-1 MUX built hierarchically using four instances of the 4x1 MUX — demonstrates structural/component-reuse design thinking.

| File | Modeling Style |
|---|---|
| `mux_16x1_structural.v` | Structural |

---

### 04 — 4-bit Full Adder
4-bit ripple carry adder built by instantiating four 1-bit Full Adder modules — demonstrates hierarchical RTL design.

| File | Modeling Style |
|---|---|
| `full_adder_4bit_structural.v` | Structural |

---

### 05 — 2x4 Decoder
2-to-4 line decoder implemented using Dataflow modeling.

| File | Modeling Style |
|---|---|
| `decoder_2x4_dataflow.v` | Dataflow |

---

### 06 — Counter and Frequency Divider
Implementation of a binary counter and a clock frequency divider on FPGA.

| File | Description |
|---|---|
| `counter.v` | Binary counter |

---

### 07 — Shift Register
4-bit Universal Shift Register with all four modes of operation.

| File | Description |
|---|---|
| `siso.v` | Serial In Serial Out |
| `sipo.v` | Serial In Parallel Out |
| `piso.v` | Parallel In Serial Out |
| `pipo.v` | Parallel In Parallel Out |
| `universal_shift_register.v` | All modes combined |

---

### 08 — Memory (RAM and ROM)
Design and implementation of RAM and ROM on FPGA.

| File | Description |
|---|---|
| `ram.v` | Random Access Memory |
| `rom.v` | Read Only Memory |

---

### 09 — Flip Flops
Key flip-flop types implemented in Verilog — essential building blocks of sequential digital design.

| File | Description |
|---|---|
| `dff_sync_reset.v` | D Flip-Flop with Synchronous Reset |
| `dff_async_reset.v` | D Flip-Flop with Asynchronous Reset |
| `sr_flipflop.v` | SR Flip-Flop |
| `jk_flipflop.v` | JK Flip-Flop |
| `t_flipflop.v` | T Flip-Flop |

---

### 10 — FSM Sequence Detector (101)
Sequence detector for the binary pattern **101** implemented using all four FSM variants — Mealy and Moore, with and without overlap detection.

| File | Description |
|---|---|
| `mealy_with_overlap.v` | Mealy FSM — overlapping sequences detected |
| `mealy_without_overlap.v` | Mealy FSM — non-overlapping |
| `moore_with_overlap.v` | Moore FSM — overlapping sequences detected |
| `moore_without_overlap.v` | Moore FSM — non-overlapping |

---

## Connect

- **LinkedIn:** [Nevil Sheth](https://www.linkedin.com/in/nevil-sheth-577382326/)
