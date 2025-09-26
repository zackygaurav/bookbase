# 📚 Book Finder App

[![Flutter Version](https://img.shields.io/badge/flutter-3.24.0-blue.svg?logo=flutter)](https://flutter.dev)  
[![Build](https://img.shields.io/github/actions/workflow/status/yourusername/book_finder_app/flutter.yml?branch=main&logo=github)](https://github.com/yourusername/book_finder_app/actions)  
[![License](https://img.shields.io/github/license/yourusername/book_finder_app)](LICENSE)  
[![Code Style: Lints](https://img.shields.io/badge/style-lints-blue.svg)](https://pub.dev/packages/flutter_lints)

---

## ✨ Overview

**Book Finder App** is a demo assignment project built with **Flutter**.  
It demonstrates clean architecture, state management, REST API integration, and local persistence using SQLite.  

The app allows users to:  
- 🔍 Search for books by title using the [Open Library API](https://openlibrary.org/developers/api).  
- 📖 View details of a selected book with a smooth cover rotation animation.  
- 💾 Save books locally for offline access using SQLite.  

---

## 🎯 Features

- **Search Screen**
  - Search bar with text input
  - Display results with title, author, and thumbnail
  - Pull-to-refresh
  - Shimmer loading animation
  - Pagination support

- **Details Screen**
  - Book details view
  - Animated book cover (rotation effect)
  - Save book locally using SQLite

- **Architecture & Patterns**
  - Clean Architecture (Data, Domain, Presentation layers)
  - State Management (BLoC pattern)
  - REST API integration with Dio
  - Error handling and async loading
  - Local persistence with SQLite
  - Unit testing (use case coverage)

---

## 🛠️ Tech Stack

- [Flutter](https://flutter.dev)  
- [Dio](https://pub.dev/packages/dio) (API client)  
- [Freezed](https://pub.dev/packages/freezed) + [json_serializable](https://pub.dev/packages/json_serializable) (data classes)  
- [Flutter BLoC](https://bloclibrary.dev/) (state management)  
- [SQLite / sqflite](https://pub.dev/packages/sqflite) (local storage)  
- [fpdart](https://pub.dev/packages/fpdart) (functional error handling with `Either`)  
- [mocktail](https://pub.dev/packages/mocktail) + [flutter_test](https://api.flutter.dev/flutter/flutter_test/flutter_test-library.html) (testing)  

---

## 🚀 Getting Started

### 📋 Prerequisites
- Flutter 3.24.0 or above
- Dart 3.x
- Android Studio / VSCode with Flutter plugin



### ⚙️ Setup

```bash
# Clone the repo
git clone https://github.com/yourusername/book_finder_app.git

# Navigate to project folder
cd book_finder_app

# Install dependencies
flutter pub get

# Run code generation
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run