# Keris Sakti

Nama: Imam Muzakki

NIM: H1D022060

Shift Baru: D

App sederhana untuk menampilkan konten youtuber (niatnya).

## Fitur

1. **Login** (lib/login_page.dart)
    - Menggunakan SharedPreferences untuk menyimpan status login.
    - Menyediakan autentikasi sederhana dengan nama pengguna dan kata sandi (pengguna: 'user', kata sandi: 'password').
    - Fitur UI responsif dengan kolom nama pengguna dan kata sandi, serta tombol login.

2. **Home** (lib/home_screen.dart)
    - Menunjukkan pesan selamat datang dengan gambar profil placeholder.
    - Menggunakan SideMenu untuk navigasi.

3. **SideMenu** (lib/side_menu.dart)
    - Menyediakan tautan ke halaman Beranda, Live, dan Song.
    - Menyertakan opsi keluar yang menghapus status login dan kembali ke halaman login.

4. **Live** (lib/live_page.dart)
    - Fitur tombol "Tonton Sekarang" yang membuka tautan YouTube.
    - Menggunakan paket `url_launcher` untuk membuka tautan eksternal.

5. **Song** (lib/song_page.dart)
    - Mendefinisikan kelas Song untuk menyusun data lagu.
    - Menampilkan daftar lagu dengan detailnya (judul, artis, tanggal rilis).
    - Memungkinkan pengguna mengetuk lagu untuk membuka tautan YouTube-nya.
    - Menggunakan paket `url_launcher` untuk membuka tautan eksternal.

## Demo
[demo.webm](https://github.com/user-attachments/assets/855e78b9-fc8a-4b3c-bf82-ad5c3606a41a)
