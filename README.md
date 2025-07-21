# 🎵 Spotify Clone - Flutter App

A feature-rich Spotify clone built using **Flutter 3.29.1**, implementing the **MVC architecture** to keep UI, business logic, and data layers clean and scalable.

---

## 📱 Features

- 🎧 Music streaming UI
- 🔍 Search interface
- 🏠 Home, Library, and Playlist screens
- 📻 Mini player & full player view
- 🔄 Dark theme
- 🎯 Responsive for Android, iOS, Web, and macOS

---


## 🧠 Architecture: MVVM

This project follows the **Model-View-ViewModel (MVVM)** pattern:

- **Model** – Defines the app’s data structure (e.g., songs, artists)
- **View** – UI rendering & layout
- **ViewModel** – Handles logic, state, and connects View with Model

---

## 🗂 Folder Structure

lib/
│
├── core/                   # Global utilities, themes, constants, etc.
│   ├── config/             # App configuration (e.g., routes, environment)
│   ├── constants/          # App-wide constant values
│   ├── utils/              # Helpers, extensions
│   └── themes/             # Theme & styling
│
├── data/                   # Data layer
│   ├── models/             # Data models
│   ├── datasources/        # APIs, local DBs
│   └── repositories/       # Abstract & concrete data fetching logic
│
├── domain/                 # Business logic layer
│   ├── entities/           # Business entities (optional if different from models)
│   ├── repositories/       # Repository contracts (abstract classes)
│   └── usecases/           # Business use cases
│
├── presentation/           # UI layer
│   ├── views/              # Screens/pages
│   │   └── home/
│   │       ├── home_view.dart
│   │       └── widgets/
│   ├── viewmodels/         # ViewModels for state management
│   │   └── home_viewmodel.dart
│   └── components/         # Reusable widgets (buttons, cards, etc.)
│
├── services/               # Services like navigation, dialogs, etc.
│
├── main.dart               # App entry point
└── app.dart                # App setup (routes, providers, themes)

---


## 🛠️ Developer Environment

| Tool                 | Version / Info                                   |
|----------------------|--------------------------------------------------|
| **Flutter SDK**      | 3.29.1 (Channel stable)                          |
| **Dart SDK**         | 3.7.0                                            |
| **DevTools**         | 2.42.2                                           |
| **Android SDK**      | 35.0.0                                           |
| **Build Tools**      | 35.0.0                                           |
| **Java**             | OpenJDK 21.0.5 (Android Studio bundled JDK)      |
| **Xcode**            | 16.0 (Build 16A242d)                             |
| **CocoaPods**        | 1.16.2                                           |
| **Android Studio**   | Hedgehog (2024.3)                                |
| **VS Code**          | 1.96.2                                           |

---