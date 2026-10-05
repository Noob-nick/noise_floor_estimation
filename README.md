# noise_floor_estimation
This project develops noise floor which help to predict whether a incoming signal is  noise or a actual signal .
# Noise Floor Estimation Using Median Method

## 📌 Overview

This project implements **noise floor estimation using the median method** in MATLAB.

Noise floor estimation is an important step in **digital signal processing, spectrum sensing, wireless communication, radar, and Software Defined Radio (SDR)** applications. It helps determine the background noise level present in a received signal so that signals can be detected reliably above the noise.

The project uses the **median of the measured power spectrum** to estimate the noise floor. The median-based approach is relatively robust against strong signal components because a few high-power signals have less influence on the median than on the mean.

---

## 🎯 Objectives

* Estimate the noise floor of a received signal.
* Convert the signal into the frequency domain using FFT.
* Calculate the power spectral density.
* Use the **median method** to estimate the noise level.
* Visualize the spectrum and estimated noise floor.
* Provide a foundation for future **signal detection and SDR applications**.

---

## 🧠 Methodology

The basic processing flow is:

```text
Input Signal
     ↓
Preprocessing
     ↓
FFT
     ↓
Power Spectrum
     ↓
Convert Power to dB
     ↓
Median Calculation
     ↓
Noise Floor Estimate
     ↓
Spectrum + Noise Floor Plot
```

### Median-Based Noise Floor Estimation

Let the power spectrum be:

[
P(f) = |X(f)|^2
]

where (X(f)) is the FFT of the received signal.

The spectrum is converted to the logarithmic scale:

[
P_{dB}(f) = 10\log_{10}(P(f))
]

The estimated noise floor is then:

[
N_{floor} = median(P_{dB}(f))
]

The median provides a robust estimate of the background noise level when the spectrum contains relatively few strong signals.

---

## 📂 Project Structure

```text
noise_floor_estimation/
│
├── main.m
├── README.md
└── sig_gen.m
└── add_noise.m
└── frame.m
└── floori.m
```

### `main.m`

The main MATLAB script contains functions which corresponds to function files:

1. Signal generation or acquisition code is in sig_gen.m file
2. Addition of noise code is in add_noise .m file
3. Framing and windowing is in frame.m file
4. FFT computation,Power spectrum calculation is also in frame.m file
5. Conversion to dB,Median-based noise floor estimation,Spectrum visualization is in floori.m file

---

## ⚙️ Requirements

* MATLAB
* MATLAB Signal Processing Toolbox *(if required by the implementation)*

Recommended MATLAB version:

```text
MATLAB R2023a or later
```

---

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/Noob-nick/noise_floor_estimation.git
```

### 2. Open the project in MATLAB

Navigate to the project directory:

```text
noise_floor_estimation/
```

### 3. Run the main script

In MATLAB:

```matlab
main
```

The program will process the signal and display the frequency spectrum along with the estimated noise floor.

---

## 📊 Expected Output

The output contains a frequency-domain spectrum with a horizontal reference line representing the estimated noise floor.

Conceptually:

```text
Power (dB)
   ↑
   │             Signal
   │              /\
   │             /  \
   │    /\      /    \       /\
   │___/  \____/      \_____/  \____
   │
   │----------------------------------  Estimated Noise Floor
   │
   └──────────────────────────────────→ Frequency
```

Signals significantly above the estimated noise floor can potentially be identified for further processing.

---

## 🔬 Why Median Method?

The **mean** of the spectrum can be strongly affected by high-power signals.

For example:

```text
Noise:    -90 dB
Noise:    -91 dB
Noise:    -89 dB
Signal:   -30 dB
Noise:    -90 dB
```

The strong signal can increase the mean significantly.

The median is less affected:

```text
Median ≈ -90 dB
```

Therefore, the median can provide a more robust estimate of the background noise level when only a small portion of the spectrum contains signals.This works for burst signals not continuous ones.

---

## 📡 Applications

Noise floor estimation is useful in:

* Software Defined Radio (SDR)
* Spectrum sensing
* Wireless communication
* Radar systems
* Electronic warfare
* Signal detection
* Cognitive radio
* RF monitoring
* Automatic signal classification
* Interference detection

---

## 🔮 Future Improvements

Possible extensions of this project include:

* Adaptive noise floor estimation
* Moving median filtering
* CFAR-based signal detection
* Automatic signal detection above the noise floor
* Real-time SDR input
* GNU Radio integration
* Detection of multiple signals
* Comparison of mean, median, percentile, and CFAR methods
* Noise floor tracking for time-varying environments

---

## 🛠️ Future SDR Implementation

The project can eventually be extended from simulated signals to real RF data:

```text
      SDR
       ↓
 RF Received Signal
       ↓
    FFT / PSD
       ↓
Noise Floor Estimation
       ↓
 Signal Detection
       ↓
 Frequency / Band Identification
```

This would make the project applicable to **real-world RF spectrum monitoring and signal detection**.

---

## 📚 Key Concepts

The project demonstrates concepts related to:

* Digital Signal Processing (DSP)
* Fast Fourier Transform (FFT)
* Power Spectrum
* Decibel representation
* Statistical estimation
* Noise floor
* Signal detection
* RF spectrum analysis

---

## 👨‍💻 Author

**Naman Goel**

GitHub: **Noob-nick**

---

## 📄 License

This project is open-source and available for educational and research purposes.
