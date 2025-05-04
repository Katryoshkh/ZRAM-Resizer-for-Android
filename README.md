# ZRAM-Resizer-for-Android (Magisk/KernelSU Module)

**ZRAM Resizer for Android** adalah modul Magisk/KernelSU yang dirancang untuk mengatur ulang ukuran ZRAM secara otomatis setelah proses booting selesai. Modul ini ditujukan bagi pengguna Android yang ingin menyesuaikan konfigurasi ZRAM guna meningkatkan efisiensi manajemen memori, khususnya pada perangkat dengan kapasitas RAM yang terbatas.

# Fitur

- Penyesuaian ukuran ZRAM secara otomatis setelah proses booting selesai
- Kompatibel dengan Magisk dan KernelSU

# Persyaratan

- Perangkat Android dengan Android 8.0 (Oreo) atau lebih tinggi
- Akses root melalui Magisk atau KernelSU
- Aplikasi Magisk atau KernelSU Manager

# Instalasi

1. Unduh berkas `.zip` modul dari [halaman rilis](https://github.com/Katryoshkh/ZRAM-Resizer-Android/releases) atau bangun secara manual dari repositori ini.
2. Lakukan pemasangan (flashing) modul melalui aplikasi Magisk atau KernelSU Manager.
3. Reboot perangkat untuk menerapkan perubahan.
4. (Opsional) Sunting konfigurasi melalui terminal atau file editor.

# Konfigurasi

Setelah flashing module, module akan tersimpan di path:

```bash
/data/adb/modules/ZRAM-Resizer-for-Android
```

Module juga dapat disunting secara manual untuk menentukan ukuran ZRAM yang diinginkan (dalam satuan Byte). Contoh:

   ```bash
   ZRAM_SIZE_BYTES=4294967296
   ```
> Jika merasa kebingungan dengan konfigurasi dalam byte, bisa kunjungi tautan ini: [GiB size in Byte](https://pastebin.com/DeHH0BvP)

# Catatan Tambahan

- Tidak disarankan untuk menggunakan modul ini bersamaan dengan module manajemen ZRAM lainnya.

- Modul ini tidak mengubah kernel, hanya memodifikasi pengaturan ZRAM melalui systemless.

- Pastikan untuk melakukan reboot setelah setiap perubahan konfigurasi.


# Penghapusan

Untuk menghapus modul:

1. Buka aplikasi Magisk atau KernelSU Manager.


2. Hapus modul ZRAM Resizer.


3. Lakukan reboot.

Jika Mengalami Bootloop, tidak dapat Booting, masuk Fastboot, atau masalah serupa:

1. Masuk ke dalam custom recovery
   
2. Pergi ke path /data/adb/modules
   
3. Cari folder ZRAM-Resizer-for-Android
   
4. Hapus folder tersebut
   
5. Kemudian booting perangkat

# Pelaporan Bug

Jika menemukan bug, silahkan laporkan bug apapun kepada pengembang, pelaporan bisa melalui fitur Issue untuk melaporkan bug kepada pengembang. 
