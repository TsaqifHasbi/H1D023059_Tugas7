# H1D023059 Tugas 7 - Flutter App

Aplikasi Flutter yang mengimplementasikan **Routes**, **Side Menu**, **Login**, dan **Local Storage** dengan desain yang kreatif dan modern.

## Fitur Utama

### 1. **Named Routes**

- Navigasi menggunakan named routes (`/login`, `/home`, `/about`, `/profile`)
- Push dan replace navigation
- Route management yang bersih dan terstruktur

### 2. **Persistent Login (Auto-Login)**

- Menyimpan status login di SharedPreferences
- Otomatis login jika sudah pernah login sebelumnya
- Langsung ke home page tanpa perlu login ulang

### 3. **Side Menu (Drawer)**

- Menu navigasi dengan UserAccountsDrawerHeader
- Menampilkan username yang sedang login
- Gradient background yang menarik
- Menu: Home, Profile, About, dan Logout

### 4. **Local Storage (SharedPreferences)**

- Menyimpan username
- Menyimpan status login (isLoggedIn)
- Data persisten antar session

### 5. **Profile Management**

- Halaman khusus untuk edit username
- Update langsung ke local storage
- Perubahan terlihat di semua halaman

### 6. **Modern UI/UX**

- Material Design 3
- Gradient backgrounds
- Card elevations dan shadows
- Consistent color scheme (Deep Purple)
- Loading indicators
- SnackBar untuk feedback
- Dialog konfirmasi logout

## Perbedaan dengan Modul

1. **Auto-Login Feature**: Aplikasi mengecek status login saat startup
2. **Profile Page**: Halaman tambahan untuk edit username
3. **Modern Design**: UI yang lebih menarik dengan gradient, cards, dan shadows
4. **Named Routes**: Semua navigasi menggunakan named routes (bukan MaterialPageRoute)
5. **Better UX**: Loading indicators, SnackBars, dan dialog konfirmasi
6. **Stateful Side Menu**: Menu menampilkan username secara dinamis
7. **Logout Feature**: Membersihkan semua data dan kembali ke login

## Struktur Halaman

```
/login   → Login Page (default jika belum login)
/home    → Home Page (default jika sudah login)
/about   → About Page
/profile → Profile Page
```

## Kredensial Login

- **Username**: `admin`
- **Password**: `admin`

## Cara Menjalankan

```bash
# Install dependencies
flutter pub get

# Run aplikasi
flutter run

# Run tests
flutter test

# Analyze code
flutter analyze
```

## 📦 Dependencies

- `flutter/material.dart` - UI Framework
- `shared_preferences` - Local storage

## Oleh

**H1D023059** - Tugas 7 Praktikum Mobile
