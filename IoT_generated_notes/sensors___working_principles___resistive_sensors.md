---

# Class Notes: Resistive Sensors – How Resistance Change is Used for Sensing Physical Parameters like Temperature or Gas Levels

---

## Introduction: Why Resistive Sensors Matter in IoT

Welcome everyone! Today, we are diving into a fundamental class of sensors widely used in the Internet of Things (IoT) systems — **Resistive Sensors**. 

In IoT, sensors are our eyes and ears; they capture data about the physical world (temperature, humidity, gas levels, pressure, etc.) and feed it to devices for processing and decision-making. Among various sensor types, resistive sensors are extremely important because of their simplicity, low cost, reliability, and ease of integration with electronics.

Imagine a smart home system that adjusts heating automatically based on temperature or an air quality monitor that detects harmful gases instantly. Resistive sensors make these applications possible by converting changes in environmental conditions directly into changes in electrical resistance. This change can be easily measured and interpreted by microcontrollers or other IoT hardware.

---

## What is a Resistive Sensor?

A **resistive sensor** is a device that transduces (converts) a physical quantity into a change in electrical resistance. The fundamental principle here is:

> **Physical Change** → **Resistance Change** → **Electrical Signal Change**

Think of resistance as a kind of electrical "friction" that resists the flow of current through a material. When certain physical parameters change (like temperature or gas concentration), they influence the internal structure of a special material or composite, thereby changing its resistance.

---

## How Does Resistance Change with Physical Parameters?

The resistance of a material is given by the formula:

\[
R = \rho \frac{L}{A}
\]

Where:  
- \( R \) is the resistance (ohms, Ω)  
- \( \rho \) (rho) is the resistivity of the material (ohm-meter)  
- \( L \) is the length of the material (meters)  
- \( A \) is the cross-sectional area (square meters)

In resistive sensors, the key parameter that changes the resistance is the **resistivity ( \(\rho\) )** because the physical quantities we measure tend to affect the intrinsic material properties rather than just geometry.

---

## Examples of Resistive Sensors and Their Working Principles

### 1. **Temperature Sensors – Thermistors**

- **Thermistor = Thermal Resistor.**
- It’s a temperature-sensitive resistor whose resistance changes sharply with temperature.
- Two types:  
  - **NTC (Negative Temperature Coefficient):** Resistance decreases as temperature increases.  
  - **PTC (Positive Temperature Coefficient):** Resistance increases as temperature increases.
  
**Working:**

When the temperature rises, the thermistor’s internal material changes how easily electrons flow. In an NTC thermistor, molecules vibrate more at high temperature, allowing electrons to move more freely, thus lowering resistance.

**Application:**

Used in smart thermostats (e.g., Nest), wearable health devices to measure body temperature, and in industrial systems for temperature control.

**Analogy:**  
Think of a crowded hallway (the material) — at low temperature, people (electrons) find it harder to move. At higher temperature, the crowd thins or moves more energetically, making it easier to walk through, just like low resistance.

---

### 2. **Gas Sensors – Metal-Oxide Semiconductor (MOS) Sensors**

- Made of semiconductor materials like tin dioxide (SnO₂).
- Their resistance varies when exposed to certain gases like CO, methane, or LPG.
  
**Working:**

Gas molecules interact with the sensor surface and change the number of charge carriers inside the semiconductor. For example, oxygen molecules usually adsorb on the surface, trapping electrons (higher resistance). When a reducing gas (like carbon monoxide) reacts, it releases these electrons back, decreasing resistance.

**Application:**

Used in air quality monitoring, smart gas leak detectors in homes, and industrial safety systems.

**Analogy:**  
Picture the sensor surface as a busy street. Oxygen molecules are like "roadblocks" that slow traffic (electrons), increasing resistance. When gas reacts and removes these blocks, traffic flows better, so resistance drops.

---

### 3. **Strain Gauges**

- These detect mechanical deformation by measuring resistance changes.
- When stretched or compressed, the sensor material’s length \(L\) and area \(A\) change, affecting resistance.

**Working:**

Since \( R = \rho \frac{L}{A} \), stretching the sensor increases \(L\) and decreases \(A\), which increases resistance.

**Application:**

Used in structural health monitoring of smart bridges or wearable devices that detect movement by skin stretching.

---

## Measuring Resistance Change in IoT Systems

To make sense of resistance change, we typically connect the resistive sensor in a voltage divider circuit:

- The sensor resistance \(R_s\) is connected with a known resistor \(R_{ref}\).
- We apply a constant voltage \(V_{in}\) across the divider.
- Output voltage \(V_{out}\) changes depending on \(R_s\):

\[
V_{out} = V_{in} \times \frac{R_s}{R_s + R_{ref}}
\]

By measuring \(V_{out}\) with an analog-to-digital converter (ADC), the microcontroller calculates the sensor resistance and interprets the corresponding physical parameter.

---

## Summary

- **Resistive sensors** detect changes in physical parameters by measuring changes in electrical resistance.
- The fundamental sensor equation involves **resistance \(R\) = resistivity \(\rho\) × length/area**.
- Temperature changes affect resistivity in **thermistors** (NTC/PTC).
- Gas concentrations affect electrical properties of metal-oxide semiconductors, changing their resistance.
- Mechanical strain changes physical dimensions, altering resistance in **strain gauges**.
- Voltage divider circuits convert resistance changes into measurable voltage signals for IoT devices to process.
- These sensors are foundational for smart applications, offering simple, reliable, and low-cost sensing solutions.

---

## Practice Questions

1. **Short Answer:** What does NTC stand for in temperature sensors, and how does its resistance change with temperature?

2. **Conceptual:** Explain why resistance changes in a metal-oxide gas sensor when it is exposed to a reducing gas.

3. **Descriptive:** Describe how a strain gauge works using the resistance formula \( R = \rho \frac{L}{A} \).

4. **Application:** Why are resistive sensors popular in IoT applications compared to other types of sensors?

5. **Calculation:** A thermistor has a resistance of 10 kΩ at 25°C and 5 kΩ at 50°C. If connected in a voltage divider with a 10 kΩ resistor and 5 V supply, what is the output voltage at 50°C?

---

## Answers & Explanations

1. **NTC stands for Negative Temperature Coefficient.**  
In an NTC thermistor, resistance decreases as temperature increases because heat energizes electrons, allowing easier flow and thus lowering resistance.

2. **In a metal-oxide gas sensor, exposure to a reducing gas releases electrons trapped by oxygen molecules on the surface.**  
When the reducing gas reacts, it frees electrons, increasing charge carriers in the semiconductor and thus decreasing sensor resistance.

3. **A strain gauge works by physically deforming under strain, which changes \( L \) (length) and \( A \) (cross-sectional area).**  
Stretching increases \( L \) and decreases \( A \), so resistance \( R = \rho \frac{L}{A} \) increases. Compression would do the opposite.

4. **Resistive sensors are popular in IoT because they are simple, inexpensive, reliable, and easy to interface with electronics via voltage dividers and ADCs.**  
They also offer fast response and can be miniaturized effectively for many applications.

5. **Given:**  
- \( R_{thermistor} = 5~kΩ \)  
- \( R_{ref} = 10~kΩ \)  
- \( V_{in} = 5~V \)  
Output voltage:

\[
V_{out} = V_{in} \times \frac{R_{thermistor}}{R_{thermistor} + R_{ref}} = 5 \times \frac{5}{5 + 10} = 5 \times \frac{5}{15} = 1.67~V
\]

Output voltage at 50°C is approximately **1.67 V**.

---

That wraps up resistive sensors and their vital role in IoT sensing. Understanding this principle unlocks many doors in developing practical and effective sensor-based systems. Keep experimenting and exploring!

---

**End of Notes**