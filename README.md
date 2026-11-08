<div align="center">

# 📋 Task Manager App

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![GetX](https://img.shields.io/badge/GetX-%238E44AD.svg?style=for-the-badge&logo=flutter&logoColor=white)](https://pub.dev/packages/get)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

*A feature-rich, modern, and intuitive Task Management application built with Flutter.*

</div>

---

## ✨ Overview

**Task Manager** is a cross-platform mobile application designed to help users organize, track, and manage their daily tasks effortlessly. Featuring a sleek Material/Cupertino design, smooth animations, secure authentication flows, and a comprehensive user dashboard, it provides a seamless productivity experience.

---

## 🚀 Key Features

- **📱 Onboarding Experience**: Engaging multi-step onboarding screens introducing core app capabilities.
- **🔐 Authentication & Security**: Complete auth suite including Login, Signup, Email Verification, OTP verification via `pinput`, and Password Reset / Change workflows.
- **📊 Interactive Dashboard & Task Management**:
  - View task lists with customized item tiles and status indicators.
  - Add new tasks with detailed inputs and success toasts.
  - Edit existing tasks and review comprehensive task details.
- **👤 Profile & Account Settings**:
  - Dedicated profile management and editing screens (`MyProfile`, `EditProfile`).
  - Account security settings, Privacy Policy, and Terms & Conditions.
- **❓ Help & Support**: Built-in FAQ section powered by `flutter_easy_faq` for quick user assistance.
- **🎨 Modern UI & Navigation**: Styled with `google_fonts`, animated bottom navigation using `motion_tab_bar_v2`, custom clippers, and smooth page indicators.

---

## 🛠️ Tech Stack & Packages

- **Framework**: [Flutter](https://flutter.dev) (Dart)
- **State Management & Routing**: [GetX](https://pub.dev/packages/get) (`get: ^4.7.3`)
- **Typography**: [Google Fonts](https://pub.dev/packages/google_fonts) (`google_fonts: ^9.0.0`)
- **UI & Layout Utilities**:
  - [Gap](https://pub.dev/packages/gap) (`^3.0.1`)
  - [Smooth Page Indicator](https://pub.dev/packages/smooth_page_indicator) (`^1.2.0`)
  - [Motion Tab Bar V2](https://pub.dev/packages/motion_tab_bar_v2) (`^3.0.0`)
  - [Pinput](https://pub.dev/packages/pinput) (`^5.0.0`)
  - [Flutter Easy FAQ](https://pub.dev/packages/flutter_easy_faq) (`^1.0.1`)
  - [Text Divider](https://pub.dev/packages/text_divider) (`^1.0.0`)

---

## 📁 Project Directory Structure

```text
lib/
├── app.dart                   # Main application root & theme configuration
├── main.dart                  # Entry point
├── constant/                  # App constants, assets, colors, and OTP themes
│   ├── app_assets.dart
│   ├── app_colors.dart
│   ├── app_otp_themes.dart
│   └── page_dot.dart
├── utils/                     # Reusable widgets, buttons, input fields, headers, & templates
│   ├── app_button.dart
│   ├── app_input_fields.dart
│   ├── dashboard.dart
│   ├── dialog_template.dart
│   ├── header_clipper.dart
│   └── task_details_template.dart
└── views/                     # Feature-based views and screens
    ├── account_setting/       # Account preferences & settings
    ├── add_task_view/         # Create task & success toaster
    ├── auth_view/             # Login, Signup, OTP, & Password recovery
    ├── change_password/       # Password modification workflow
    ├── edit_profile_view/     # Profile editing screens
    ├── edit_task_view/        # Task modification screen
    ├── faq_view/              # Help & FAQ section
    ├── home_view/             # Main home dashboard & task models
    ├── myprofile_view/        # User profile display
    ├── onboarding_view/       # Onboarding introduction screens
    ├── privacy_policy_view/   # Privacy policy documentation
    ├── profile_view/          # Main profile hub
    ├── splash_view/           # Splash screen animation
    ├── task_details_view/     # Detailed task view
    └── terms_and_condition_view/ # Terms and conditions
```

---

## 🏁 Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.13.5 or higher)
- Android Studio / VS Code with Flutter and Dart plugins
- An emulator or physical device (Android/iOS)

### Installation & Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/task_manager.git
   cd task_manager
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check out the [issues page](https://github.com/your-username/task_manager/issues).

---

## 📝 License

This project is licensed under the terms of the [MIT License](LICENSE).
