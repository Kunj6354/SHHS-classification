**Title: Sleep Stage Classification Using ECG Signals on SHHS Dataset**

**Authors:**
- Dr. Manish Sharma
- Mayank Vyas
- Kunj Patel

**Objective:**
The project aims to classify Polysomnographic data into 6 sleep stages using ECG signals from the SHHS dataset.

**Method:**
Utilizing Wavelet Scattering and LSTM models, the ECG signals are analyzed to extract features for sleep stage classification. Wavelet Scattering is applied to 30-second epochs of ECG data, resulting in 1,51,103 epochs, while LSTM model categorizes raw data and extracts feature Amp for classification.

**Results:**
Validation figures show the accuracy, precision, and F1 score of the models. KNN achieved an accuracy of 87.14%, outperforming the LSTM model with 71% accuracy. ROC curves and AUC metrics further validate the models' performance.

**Conclusion:**
Wavelet Scattering combined with FINE KNN presents superior accuracy in sleep stage classification compared to the LSTM model, offering insights into sleep patterns and aiding disease diagnosis.