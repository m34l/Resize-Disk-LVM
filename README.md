# Resize-Disk-LVM
Resize Disk LVM Without Reboot
# Skrip Bash untuk Memperluas Partisi dan Logical Volume

Ini adalah skrip Bash yang dirancang untuk memperluas partisi dan logical volume pada perangkat `/dev/sda` serta logical volume yang terkait. Skrip ini akan melakukan langkah-langkah berikut secara otomatis:

1. Menampilkan informasi partisi pada `/dev/sda`.
2. Menggunakan utilitas `parted` untuk memperluas partisi.
3. Melakukan resize pada physical volume menggunakan `pvresize`.
4. Menampilkan informasi logical volume.
5. Melakukan perluasan logical volume dan melakukan resize pada filesystem.

Pastikan Anda memahami konsekuensi dan risiko yang terkait dengan mengubah partisi dan logical volume pada sistem Anda. Pastikan untuk melakukan backup data yang penting sebelum menjalankan skrip ini.

## Penggunaan
1. Salin skrip di bawah ini dan tempelkan dan simpan menjadi file `expand-volume.sh`.
   `wget https://raw.github.com/xxx`

2. Berikan izin eksekusi kepada berkas skrip dengan menjalankan perintah berikut:
   `chmod +x expand-volume.sh`
   
3. Jalankan skrip dengan perintah:
   `./expand-volume.sh`

## Catatan Penting
Backup Data: Selalu disarankan untuk mencadangkan data penting sebelum melakukan perubahan pada partisi atau logical volume.

Risiko: Perluasan partisi dan logical volume adalah tindakan yang berisiko. Kesalahan selama proses ini dapat menyebabkan kehilangan data.

Pahami Skrip: Pastikan Anda memahami setiap perintah dalam skrip ini sebelum menjalankannya pada sistem produksi.

Tanggung Jawab: Penulis tidak bertanggung jawab atas kerusakan atau kehilangan data yang diakibatkan oleh penggunaan skrip ini. Gunakan dengan risiko Anda sendiri.

Gunakan skrip ini dengan bijak dan pertimbangkan risiko yang terlibat. Dianjurkan untuk melakukan uji coba pada lingkungan yang terisolasi terlebih dahulu sebelum menerapkannya pada sistem produksi.
