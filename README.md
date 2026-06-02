# 🚲 Bike Retail Performance Dashboard & Strategic Sales Analysis

<img src="Excel Dashboard Image.png" alt="BikeStores Excel Dashboard" width="900">

*Dashboard juga tersedia dalam versi Tableau — lihat file Tableau Dashboard.twb di repositori ini*

## 📌 Business Context

BikeStores adalah jaringan ritel sepeda dengan tiga cabang di Amerika Serikat: New York, California, dan Texas. Meskipun perusahaan mencetak rekor pendapatan pada tahun 2017, terjadi anomali penurunan drastis mulai pertengahan 2018 yang mengancam stabilitas bisnis secara keseluruhan.

Project ini mensimulasikan peran Data Analyst di perusahaan ritel dengan tugas membedah data transaksi penjualan dari tahun 2016 hingga 2018 — mengidentifikasi apa yang sebenarnya terjadi di 2018, mengevaluasi efisiensi tiap cabang dan staf, serta merumuskan strategi pemulihan berbasis data.

## 🎯 Pertanyaan Bisnis

1. Apa penyebab anjloknya revenue secara drastis pasca April 2018?
2. Seberapa besar ketergantungan perusahaan terhadap cabang atau staf penjualan tertentu?
3. Lini produk mana (kategori dan merek) yang menjadi ujung tombak cash flow perusahaan?

## 💡 Key Findings (Executive Summary)

| Temuan | Detail |
|---|---|
| **Tahun terbaik** | 2017 dengan total revenue mendekati R$ 4 Juta |
| **Anomali 2018** | Lonjakan ekstrem di April, langsung diikuti penurunan tajam hingga akhir tahun |
| **Cabang paling dominan** | Baldwin Bikes (New York) menyumbang 68% dari total revenue perusahaan |
| **Cabang paling tertinggal** | Rowlett Bikes (Texas) hanya berkontribusi 11% |
| **Sales rep terbaik** | Marcelene Boyer & Venita Daniel, masing-masing mencetak hampir R$ 3 Juta |
| **Kategori produk terlaris** | Mountain Bikes dengan kontribusi lebih dari R$ 3 Juta |
| **Merek paling dominan** | Trek — 4 dari 5 produk dengan revenue tertinggi berasal dari merek ini |

> 🔑 **Insight utama:** Anomali April 2018 bukan pola musiman biasa. Penurunan sedrastis itu mengindikasikan salah satu dari tiga kemungkinan: kehabisan stok masif pasca lonjakan penjualan, kegagalan teknis sistem POS dalam merekam transaksi, atau pengurangan operasional cabang. Manajemen perlu audit internal sebelum bisa mengambil keputusan strategis.


## 📊 Rekomendasi Strategis

**Audit Operasional 2018:** Manajemen perlu segera menginvestigasi anomali Q3-Q4 2018. Apakah lonjakan April menguras seluruh stok gudang sehingga tidak ada barang yang bisa dijual di bulan berikutnya? Atau terdapat kegagalan sistem pencatatan transaksi? Jawaban atas pertanyaan ini menentukan langkah pemulihan yang tepat.

**Knowledge Sharing antar Staf:** Marcelene Boyer dan Venita Daniel menghasilkan revenue hampir dua kali lipat dari staf lainnya. Taktik dan pendekatan penjualan mereka perlu didokumentasikan dan dijadikan SOP pelatihan standar untuk staf yang underperform seperti Kali Vargas.

**Optimalisasi Inventaris Produk:** Kurangi porsi stok untuk kategori Cyclocross Bicycles yang penjualannya paling rendah, lalu alihkan anggaran pengadaan ke lini Mountain dan Road Bikes dari merek Trek yang terbukti menjadi penggerak utama revenue.

**Diversifikasi Pasar Geografis:** Ketergantungan 68% revenue pada satu cabang (New York) adalah risiko bisnis yang signifikan. Diperlukan kampanye pemasaran yang lebih agresif di California dan Texas untuk menyeimbangkan kontribusi revenue antar wilayah.

## 🛠️ Tech Stack & Metodologi

| Tahap | Tools | Yang Dilakukan |
|---|---|---|
| **Data Modeling** | SQL (MySQL) | Menggabungkan 7 tabel relasional menjadi satu dataset analisis siap pakai |
| **Analisis & Dashboard v1** | Microsoft Excel | Pivot Table, Pivot Charts, dan Slicers untuk dashboard interaktif |
| **Analisis & Dashboard v2** | Tableau | Dashboard versi kedua dengan tampilan visual yang lebih interaktif |

**Status dataset:** Pre-cleaned — tidak memerlukan proses data cleaning karena dataset sudah terstandarisasi sebelum digunakan.

**Alur kerja:** Raw Database (7 Tabel) → SQL JOIN → Dataset Gabungan → Excel & Tableau Dashboard

## ⚙️ Proses Analisis

### 1. Data Modeling (SQL)

Dataset BikeStores tersimpan dalam 7 tabel terpisah yang saling berelasi. Sebuah query SQL ditulis untuk menggabungkan seluruh tabel tersebut menjadi satu flat dataset yang langsung bisa dianalisis di Excel maupun Tableau.

Tabel yang digabungkan: sales_orders, sales_customers, sales_order_items, production_products, production_categories, sales_stores, dan sales_staffs.

Hasil dari query ini adalah satu tabel dengan kolom: order_id, nama customer, kota, state, tanggal order, total unit terjual, revenue, nama produk, kategori, nama toko, dan nama sales rep.

### 2. Analisis & Visualisasi (Excel dan Tableau)

Dataset hasil JOIN diolah menggunakan Pivot Table di Excel untuk menjawab ketiga pertanyaan bisnis. Hasilnya disajikan dalam dua versi dashboard:

- **Excel Dashboard:** Menggunakan Pivot Charts dan Slicers yang memungkinkan filter interaktif berdasarkan tahun, cabang, dan kategori produk.
- **Tableau Dashboard:** Versi alternatif dengan visualisasi yang lebih fleksibel dan lebih mudah dibagikan secara online.

## 📁 Struktur Repositori

| File / Folder | Keterangan |
|---|---|
| Query.sql | Query SQL untuk menggabungkan 7 tabel relasional menjadi satu dataset |
| Excel Dashboard.xlsx | File Excel dengan Pivot Table dan dashboard interaktif |
| Excel Dashboard Image.png | Screenshot tampilan Excel dashboard |
| Tableau Dashboard.twb | File Tableau workbook versi dashboard alternatif |
| Tableau Dashboard Image.png | Screenshot tampilan Tableau dashboard |
| datas/ | Folder berisi raw dataset dan script SQL untuk setup database dari awal |

## 📚 Apa yang Saya Pelajari

- Cara membangun satu dataset analisis yang utuh dari beberapa tabel relasional menggunakan multi-table JOIN dalam satu query
- Penggunaan CONCAT dan GROUP BY untuk merapikan output query agar langsung siap dimasukkan ke Pivot Table
- Bahwa anomali data tidak selalu berarti data rusak — bisa jadi mencerminkan kejadian bisnis nyata yang perlu diinvestigasi lebih lanjut
- Perbedaan praktis antara membangun dashboard di Excel versus Tableau, baik dari sisi kemudahan maupun fleksibilitas visualisasi

*Disclaimer: Project ini menggunakan dataset publik BikeStores yang dianalisis secara mandiri sebagai simulasi bisnis Data Analysis dan Business Intelligence.*
