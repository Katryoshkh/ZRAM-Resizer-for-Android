# ZRAM-Resizer-for-Android (Magisk/KernelSU Module)

**ZRAM Resizer for Android** merupakan modul Magisk/KernelSU yang dirancang untuk mengatur ulang ukuran ZRAM secara otomatis saat setelah proses booting selesai. Modul ini ditujukan bagi pengguna Android yang ingin menyesuaikan konfigurasi ZRAM guna meningkatkan efisiensi manajemen memori, khususnya pada perangkat dengan kapasitas RAM terbatas.

# Fitur

- Penyesuaian ukuran ZRAM otomatis saat setelah selesai boot
- Kompatibel dengan Magisk dan KernelSU

# Persyaratan

- Perangkat Android dengan Android 8.0 (Oreo) atau lebih tinggi
- Akses root melalui Magisk atau KernelSU
- Aplikasi Magisk atau KernelSU Manager
- Terminal emulator (opsional, untuk konfigurasi manual)

# Instalasi

1. Unduh berkas `.zip` modul dari [halaman rilis](https://github.com/Katryoshkh/ZRAM-Resizer-Android/releases) atau bangun secara manual dari repositori ini.
2. Lakukan pemasangan (flashing) modul melalui aplikasi Magisk atau KernelSU Manager.
3. Reboot perangkat untuk menerapkan perubahan awal.
4. (Opsional) Sunting konfigurasi melalui terminal atau file editor.

# Konfigurasi

Setelah reboot pertama, file konfigurasi akan dibuat secara otomatis pada:

```bash
/data/adb/modules/ZRAM-Resizer-for-Android
```

File ini dapat disunting untuk menentukan ukuran ZRAM secara manual (dalam satuan Byte). Contoh:

   ```bash
   ZRAM_SIZE_BYTES=4294967296
   ```

Perubahan konfigurasi akan diterapkan pada saat booting berikutnya.

# Catatan Tambahan

Tidak disarankan untuk menggunakan modul ini bersamaan dengan aplikasi manajemen ZRAM lainnya.

Modul ini tidak mengubah kernel, hanya memodifikasi pengaturan ZRAM dan swap.

Pastikan untuk melakukan reboot setelah setiap perubahan konfigurasi.


# Penghapusan

Untuk menghapus modul:

1. Buka aplikasi Magisk atau KernelSU Manager.


2. Hapus modul ZRAM Resizer.


3. Lakukan reboot.

Jika Mengalami Bootloop, tidak dapat Booting, masuk Fastboot, atau masalah serupa:

1. Masuke ke custom recovery
   
2. Pergi ke path /data/adb/modules
   
3. Cari folder ZRAM-Resizer
   
4. Hapus folder tersebut
   
5. Kemudian booting perangkat

# Kontribusi

Kontribusi dalam bentuk pelaporan bug, permintaan fitur, maupun pull request sangat diapresiasi. Silakan gunakan fitur Issue atau Pull Request pada repositori ini untuk berpartisipasi dalam pengembangan lebih lanjut.
