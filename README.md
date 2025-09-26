⸻

📚 Book Finder App

⸻

✨ Overview

Book Finder App is a demo assignment project built with Flutter.
It demonstrates clean architecture, state management, REST API integration, and local persistence using SQLite.

The app allows users to:
	•	🔍 Search for books by title using the Open Library API.
	•	📖 View details of a selected book with a smooth cover rotation animation.
	•	💾 Save books locally for offline access using SQLite.

⸻

🎯 Features
	•	Search Screen
	•	Search bar with text input
	•	Display results with title, author, and thumbnail
	•	Pull-to-refresh
	•	Shimmer loading animation
	•	Pagination support
	•	Details Screen
	•	Book details view
	•	Animated book cover (rotation effect)
	•	Save book locally using SQLite
	•	Architecture & Patterns
	•	Clean Architecture (Data, Domain, Presentation layers)
	•	State Management (BLoC pattern)
	•	REST API integration with Dio
	•	Error handling and async loading
	•	Local persistence with SQLite
	•	Unit testing (use case coverage)

⸻

🛠️ Tech Stack
	•	Flutter
	•	Dio (API client)
	•	Freezed + json_serializable (data classes)
	•	Flutter BLoC (state management)
	•	SQLite / sqflite (local storage)
	•	fpdart (functional error handling with Either)
	•	mocktail + flutter_test (testing)

⸻

🚀 Getting Started

📋 Prerequisites
	•	Flutter 3.24.0 or above
	•	Dart 3.x
	•	Android Studio / VSCode with Flutter plugin

⚙️ Setup

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

🧪 Run Tests

flutter test


⸻

📱 Screenshots / Demo

Search Screen	Details Screen
	

🎥 Demo GIF:


⸻

🧩 Project Structure

lib/
│── core/                # Core utilities (theme, errors, widgets)
│── features/
│   └── book/
│       ├── data/        # Data sources, models, repositories
│       ├── domain/      # Entities, repositories, use cases
│       └── presentation # Bloc, UI widgets, pages
│── main.dart


⸻

✅ Evaluation Criteria (Assignment)
	•	REST API integration and pagination ✔️
	•	State management using BLoC ✔️
	•	Clean Architecture (Data, Domain, Presentation) ✔️
	•	SQLite local storage ✔️
	•	Error handling and async loading ✔️
	•	Shimmer animation ✔️
	•	Unit test for SearchBooks use case ✔️

⸻

🤝 Contributing

Contributions are welcome! Please open an issue or submit a pull request.

⸻

📜 License

This project is licensed under the MIT License.

⸻

⚡️ Built with ❤️ using Flutter

⸻