# MyMDCard Mobile — System Architecture

## Project

- **Framework:** Flutter (Dart)
- **SDK:** ^3.11.1
- **Package name:** `mobile`
- **Version:** 0.1.0+1

## Dependencies

- `go_router` — Declarative routing
- `provider` — State management
- `flutter_inappwebview` — WebView for auth pages

## Directory Structure

```
lib/
  main.dart                     # Entry point, Provider setup
  app.dart                      # MaterialApp.router + theme
  routes/
    app_router.dart             # GoRouter route definitions
  screens/
    splash_screen.dart          # 3s splash with logo
    welcome_screen.dart         # Get Started → /login
    auth/
      login_screen.dart         # WebView rendering mymdcard.com/auth/login
assets/
  logo.png                      # App logo
```

## Routing

GoRouter with routes:
- `/` → SplashScreen (auto-navigates to /welcome after 3s)
- `/welcome` → WelcomeScreen
- `/login` → LoginScreen (WebView)

## Auth Flow

Authentication pages are rendered via WebView pointing to `https://mymdcard.com/auth/login`. No native auth forms.

## Theme

- Primary color: `#4CAF50` (green)
- Material 3 enabled
- ColorScheme seeded from primary green
