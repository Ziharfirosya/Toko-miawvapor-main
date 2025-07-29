# Toko-miawvapor-main

# Alur Proses Pemesanan – MIAWVAPOR

```mermaid
flowchart TD
    A[Start - Pelanggan] --> B[Pilih Produk]
    B --> C[Masukkan ke Keranjang]
    C --> D[Checkout]
    D --> E[Sistem Menghitung Total Pembayaran]
    E --> F[Simpan ke Tabel Orders dan Orders_Detail]
    F --> G[Lihat Pesanan]
    G --> H[Selesai]

    subgraph Admin
        AA[Start - Admin] --> AB[Pilih Invoice List Pesanan]
        AB --> AC[Proses & Update Status Pesanan]
        AC --> AD[Selesai]
    end
