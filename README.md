
# Arduino Brush Application

This repository contains the **Arduino Brush** application, developed using Flutter with Firebase integration. The project serves as a user-friendly graphical interface to complement an Arduino-based system for monitoring and data control.

## Features

- **Authentication**: Login screen integrated with Firebase.
- **Interactive Graphs**: Visualization of data through bar charts.
- **Firebase Connectivity**: Real-time synchronization with Firebase database.
- **Responsive Interface**: Adaptable design for various mobile devices.

## Project Structure

Below is an overview of the project's directory structure:

```
lib/
├── main.dart          # Main entry point of the application
├── pages/             # Core components of the interface
│   ├── Auth/          # Authentication screens
│   ├── barGraph/      # Bar chart components
│   ├── common_widgets/ # Reusable widgets
│   ├── homePages/     # Main application screens
```

## Setup and Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/FabianoJanisch/aplicativo-arduino-brush.git
   cd aplicativo-arduino-brush
   ```

2. **Install dependencies**:
   Make sure [Flutter](https://flutter.dev/docs/get-started/install) is installed on your system.
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**:
   - Add the `google-services.json` file (for Android) or `GoogleService-Info.plist` (for iOS) to the `android/app` or `ios/Runner` directories.
   - Ensure the configuration matches the details in `firebase_options.dart`.

4. **Run the application**:
   ```bash
   flutter run
   ```
## Login Screen

<img src="https://github.com/user-attachments/assets/4a79c17c-ada9-4fcf-9e4f-52140137e6fe" alt="Login Screen" width="300" />

## Registration Screen

<img src="https://github.com/user-attachments/assets/bbfa044a-8e82-416d-8a3f-73bee45ac0f1" alt="Registration Screen" width="300" />

## Graph Preview

<img src="https://github.com/user-attachments/assets/1a483d80-f9c2-4d00-9996-13b1803b00d2" alt="Graph Preview" width="600" />


## Technologies Used

- **Flutter**: The main framework for application development.
- **Firebase**: Backend for authentication and real-time database.
- **Dart**: The programming language used by Flutter.

## Relation to Another Project
his project is part of a larger solution, which includes an Arduino-based system using Python to collect and send data to Firebase. The Arduino system leverages the HC-SR04 ultrasonic sensor to monitor distances and updates the Firebase database in real-time.

You can check out the Arduino and Python project's code in the following GitHub repository:

[HC-SR04 Firebase Integration (Python & Arduino)](https://github.com/FabianoJanisch/HC-SR04-firebase)


## Awards 
This project was awarded 1st place in the **"PIBITI"** category at the **X Seminário de Iniciação Científica (SEMIC)**, held at Faculdade São Leopoldo Mandic in Campinas, São Paulo on October 4, 2023.
