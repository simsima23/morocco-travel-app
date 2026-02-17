#Morocco Travel App
A travel application built with Flutter and Dart.
## Features
- Explore four cities (Marrakech, Casablanca, Fes, Chefchaouen)
- Explore activities you can try as well as time estimates

## Technologies used

- **Flutter** - UI framework
- **Dart** - Programming language
- **Material Design** - Design system
- **ListView.builder** - Optimized list rendering
- **Custom Navigation** - Route-based navigation

## Getting Started
### Prerequisites
- Flutter SDK
- Android Studio / VS Code
- Android Emulator or physical device
### Installation
1. Clone this repository
```bash
git clone https://github.com/simsima23/travel-app.git
```

2. Navigate to project directory
```bash
cd travel-app
```

3. Install dependencies
```bash
flutter pub get
```

4. Run the app
```bash
flutter run

## Project Structure
```
lib/
├── main.dart                
├── models/
│   ├── city.dart             
│   └── activity.dart          
├── screens/
│   ├── home_screen.dart        
│   └── city_detail_screen.dart  
└── data/
    └── morocco_data.dart