# Taxi Driver BW - Unified Ride-Sharing App

A single Flutter app with **3 login types**: Passenger, Driver, and Admin. Inspired by Yango for Botswana.

## Project Structure

```
taxi-driver-bw/
├── lib/
│   ├── main.dart
│   ├── config/
│   │   ├── theme.dart
│   │   ├── app_routes.dart
│   │   └── env_config.dart
│   ├── models/
│   │   ├── user.dart
│   │   ├── driver.dart
│   │   ├── passenger.dart
│   │   ├── trip.dart
│   │   └── admin.dart
│   ├── providers/
│   │   ├── auth_provider.dart
│   │   ├── user_provider.dart
│   │   └── trip_provider.dart
│   ├── screens/
│   │   ├── auth/
│   │   │   ├── login_type_screen.dart
│   │   │   ├── phone_login_screen.dart
│   │   │   └── admin_login_screen.dart
│   │   ├── passenger/
│   │   │   ├── home_screen.dart
│   │   │   ├── ride_options_screen.dart
│   │   │   └── trip_screen.dart
│   │   ├── driver/
│   │   │   ├── home_screen.dart
│   │   │   ├── request_popup_screen.dart
│   │   │   └── earnings_screen.dart
│   │   └── admin/
│   │       ├── dashboard_screen.dart
│   │       ├── drivers_management_screen.dart
│   │       ├── passengers_management_screen.dart
│   │       ├── pricing_screen.dart
│   │       └── settings_screen.dart
│   ├── widgets/
│   └── services/
│       ├── api_service.dart
│       ├── auth_service.dart
│       └── location_service.dart
├── assets/
├── pubspec.yaml
└── .env.example
```

## Key Features

### Passenger App
- Onboarding with OTP login
- Interactive map with auto-detect pickup
- Ride options: Economy (P8/passenger) & Special (P40/passenger)
- Live trip tracking
- Safety: SOS & Share Trip
- Payment methods: Wallet, Card, Cash, Orange Money, My Zaka

### Driver App
- OTP login with temp password → force change on first login
- Go Online/Offline toggle
- Ride request popup (10s timer)
- Navigation integration (Google Maps/Waze)
- Earnings dashboard (daily total + trip history)
- Wallet management (P20 minimum deposit)
- Document verification (License, PrDP)

### Admin Panel
- Drivers: Add/Remove/Ban, view docs, reset password, see earnings
- Passengers: Add/Remove/Ban, view trip history
- Trips: Live map, cancel, refund/adjust fare
- Pricing: Economy & Special tabs (base fare, per km, per min, surge zones)
- Wallet: Platform total, commission %, approve cash-outs
- Notifications: Push to all/selected drivers/passengers
- Settings: Change password (bcrypt hashed, 12+ chars, letters+numbers)

## Tech Stack

- **Frontend**: Flutter (Dart) - Single app, 3 auth types
- **State Management**: Riverpod
- **Routing**: GoRouter with auth guards
- **Maps**: Google Maps SDK
- **Auth**: OTP + JWT
- **Local Storage**: Shared Preferences + Hive
- **Payments**: Orange Money / My Zaka API
- **Backend**: Node.js + Express (separate repo)

## Getting Started

### Prerequisites
- Flutter 3.10+
- Dart 3.0+

### Installation

```bash
flutter pub get
cp .env.example .env
# Configure .env with your values
flutter run
```

## Configuration

Create `.env` file:

```env
# Admin Credentials (Change on first login - DO NOT HARDCODE)
ADMIN_USERNAME=your_admin_username
ADMIN_PASSWORD=your_admin_password

# API
API_BASE_URL=http://localhost:3000

# Google Maps
GOOGLE_MAPS_API_KEY=your_key

# Payment Merchants
ORANGE_MONEY_MERCHANT=75995722
MY_ZAKA_MERCHANT=78414204
SMEGA_MERCHANT=73350660

# Fare Settings
ECONOMY_FARE=8.00
SPECIAL_FARE=40.00
DRIVER_DEPOSIT=20.00
COMMISSION_PERCENT=2.0
```

## Fare Calculation

```
Economy Fare = Number of Passengers × P8.00
Special Fare = Number of Passengers × P40.00

Surge Pricing = Base Fare × Surge Multiplier
```

## Security

- ✅ Passwords hashed with bcrypt
- ✅ Admin credentials in .env (never hardcoded)
- ✅ OTP-based phone authentication
- ✅ JWT token session management
- ✅ 15-minute inactivity auto-logout
- ✅ Login IP logging
- ✅ PrDP validation (future: DRTS API)
- ✅ 2FA support (Google Authenticator - future)

## Login Types

### Passenger Login
1. Phone number (BW format: 7XXXXXXX)
2. OTP verification
3. Access passenger features

### Driver Login
1. Phone number (BW format: 7XXXXXXX)
2. OTP verification
3. Temp password set
4. **Force password change on first login**
5. Upload documents (License, PrDP)
6. Access driver features

### Admin Login
1. Username + Password
2. **Force password change on first login**
3. Access admin dashboard
4. Manage drivers, passengers, pricing, etc.

## MVP Build Order

1. **Phase 1**: Auth system (3 login types) + Passenger home/map
2. **Phase 2**: Driver app (accept rides, navigate, earnings)
3. **Phase 3**: Admin panel (driver/passenger management, pricing)
4. **Phase 4**: Payments API, PrDP OCR, Shared taxi optimization

## License

Private - All Rights Reserved
