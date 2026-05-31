# Audio Blind Source Separation using PCA & ICA
Blind source separation system for recovering independent audio sources from noisy linear mixtures using PCA and ICA

![MATLAB](https://img.shields.io/badge/MATLAB-DSP-8A2BE2.svg)
![Signal Processing](https://img.shields.io/badge/Signal-Processing-4B0082.svg)
![License](https://img.shields.io/badge/License-Academic-2E0854.svg)

<div align="center">

━━━━━━━━━━━━━━ ✦ ✧ ✦ ━━━━━━━━━━━━━━

</div>

## 🟣 Overview

This project implements a Blind Source Separation (BSS) system that extracts original audio signals (voice and music) from noisy linear mixtures without prior knowledge of the mixing process.

The system simulates a real-world cocktail party problem and applies two statistical techniques: Principal Component Analysis (PCA) and Independent Component Analysis (ICA). Performance is evaluated using waveform reconstruction, histogram analysis, correlation metrics, and kurtosis.

The results demonstrate that ICA provides significantly better separation of independent audio sources compared to PCA, especially under Gaussian noise conditions.

<br><br>

## 🟣 Key Features

- Blind source separation of mixed audio signals
- PCA-based signal decorrelation and reconstruction
- ICA-based independent component extraction (FastICA)
- Gaussian noise injection for real-world simulation
- Statistical evaluation using correlation and kurtosis
- Waveform and histogram-based visual analysis
<br><br>

## 🔧 System Pipeline

| Stage | Description |
|------|-------------|
| Signal Acquisition | Load voice and music audio sources |
| Preprocessing | Normalization and standardization |
| Mixing | Linear mixing using predefined matrix |
| Noise Model | Gaussian noise injection |
| PCA Separation | Variance-based signal decorrelation |
| ICA Separation | Statistical independence maximization |
| Evaluation | Metrics + visualization |

<br><br>

<div align="center">

<svg width="900" height="140" viewBox="0 0 900 140" xmlns="http://www.w3.org/2000/svg">

  <defs>
    <style>
      .box { fill: #12121e; stroke: #8a2be2; stroke-width: 2; rx: 10; }
      .text { fill: #ffffff; font-size: 14px; font-family: Arial, sans-serif; text-anchor: middle; }
      .arrow { stroke: #8a2be2; stroke-width: 2; marker-end: url(#arrowhead); }
    </style>

    <marker id="arrowhead" markerWidth="10" markerHeight="7" 
      refX="10" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="#8a2be2"/>
    </marker>
  </defs>

  <!-- Boxes -->
  <rect x="20" y="40" width="140" height="50" class="box"/>
  <text x="90" y="70" class="text">Audio Sources</text>

  <rect x="180" y="40" width="140" height="50" class="box"/>
  <text x="250" y="70" class="text">Preprocessing</text>

  <rect x="340" y="40" width="140" height="50" class="box"/>
  <text x="410" y="70" class="text">Signal Mixing</text>

  <rect x="500" y="40" width="140" height="50" class="box"/>
  <text x="570" y="70" class="text">Noise Injection</text>

  <rect x="660" y="40" width="100" height="50" class="box"/>
  <text x="710" y="70" class="text">PCA / ICA</text>

  <rect x="780" y="40" width="100" height="50" class="box"/>
  <text x="830" y="70" class="text">Evaluation</text>

  <!-- Arrows -->
  <line x1="160" y1="65" x2="180" y2="65" class="arrow"/>
  <line x1="320" y1="65" x2="340" y2="65" class="arrow"/>
  <line x1="480" y1="65" x2="500" y2="65" class="arrow"/>
  <line x1="640" y1="65" x2="660" y2="65" class="arrow"/>
  <line x1="760" y1="65" x2="780" y2="65" class="arrow"/>

</svg>

</div>

## 🟣 Evaluation Metrics

The system performance is evaluated using:

- Signal Correlation (Reconstruction similarity)
- Kurtosis (Non-Gaussianity measure)
- Waveform comparison
- Histogram distribution analysis
<br><br>

## 🟣 Key Results

- ICA achieves significantly better source separation than PCA
- PCA preserves variance but fails to isolate independent signals
- ICA successfully extracts non-Gaussian independent components
- Performance remains robust under additive Gaussian noise
<br><br>

## 🟣 System Architecture

The system follows a modular signal processing pipeline:
Source Signals → Mixing → Noise Injection → PCA / ICA → Evaluation


Each module is independently designed for experimentation and scalability.
<br><br>

## 🟣 Limitations

- Limited to two-source mixing scenario
- ICA performance depends on signal independence assumptions
- Sensitivity to noise level and mixing matrix configuration
<br><br>

## 🟣 Future Improvements

- Extend to multi-source (N > 2) blind source separation
- Real-time audio processing implementation
- Deep learning-based separation comparison
- Adaptive noise cancellation techniques
<br><br>

## 🟣 Technologies Used

- MATLAB
- Signal Processing Toolbox
- FastICA Algorithm
- Statistical Signal Processing
- Linear Algebra & Stochastic Methods
