# 🚲 Retail Business Performance & Sales Anomaly Analysis - BikeStores

<img src="Excel Dashboard Image.png" alt="Bike Store Sales Dashboard" width="900">

## Business Context
BikeStores adalah jaringan ritel sepeda dengan tiga cabang utama di Amerika Serikat (New York, California, dan Texas). Meskipun perusahaan mencetak rekor pendapatan pada tahun 2017, terjadi anomali penurunan drastis pada pertengahan tahun 2018 yang mengancam stabilitas bisnis. 

Proyek ini bertujuan untuk mensimulasikan peran data analyst di perusahaan retail dengan tugas membedah data transaksi penjualan sepeda dari tahun 2016 hingga 2018 guna mengidentifikasi apa yang sebenarnya terjadi pada tahun 2018, mengevaluasi efisiensi tiap cabang, dan merumuskan strategi pemulihan berbasis data.

## Problem Statement & Objectives
Fokus utama dari analisis ini adalah menjawab pertanyaan bisnis kritis berikut:
1.  **Anomaly Detection:** Menginvestigasi penyebab anjloknya *revenue* pasca April 2018.
2.  **Store & Employee Performance:** Menilai tingkat ketergantungan perusahaan terhadap cabang atau staf penjualan tertentu.
3.  **Product Strategy:** Mengidentifikasi lini produk (kategori & merek) yang menjadi ujung tombak *cash flow* perusahaan.

## Tools & Methodology
-   **Data Modeling:** SQL (Melakukan *Table Joins* pada 7 tabel relasional: *customers, orders, order_items, products, categories, stores, staffs* untuk membentuk satu dataset).
-   **Data Analysis & Visualization:** Microsoft Excel (Pivot Charts & Slicers) dan Tableau untuk membangun dashboard interaktif.
-   **Status Data:** Dataset publik yang sudah melalui proses standarisasi (Pre-cleaned).

## Key Insights (Executive Summary)

### 1. Anomali Q2 2018
Tahun 2017 adalah tahun kejayaan toko dengan total *revenue* menyentuh nyaris $4 Juta. Pola penjualan bulanan di 2016 dan 2017 terlihat stabil. Namun di tahun 2018, terjadi lonjakan ekstrem di bulan April yang langsung diikuti oleh grafik yang drop ke angka _revenue_ yang cukup kecil di sisa tahun tersebut. *Insight*: Hal seperti ini bukanlah karna tren musiman. Penurunan sedrastis ini mengindikasikan adanya krisis suplai (kehabisan stok masif pasca April), masalah teknis pada perekaman data di sistem POS (*Point of Sales*), atau penutupan operasional.

### 2. Ketergantungan pada Cabang New York (Baldwin Bikes)
Kesehatan finansial perusahaan tidak merata. Cabang Baldwin Bikes (New York) memonopoli 68% dari total pendapatan keseluruhan perusahaan. Sementara itu, Rowlett Bikes (Texas) tertinggal jauh di angka 11%. Hal ini menempatkan perusahaan pada risiko tinggi jika pasar New York mengalami guncangan.

### 3. Sales Representative
Dari seluruh staf, dua *Sales Reps* (Marcelene Boyer dan Venita Daniel) menghasilkan performa yang tidak wajar positifnya, di mana masing-masing dari meerka mencetak hampir $3 Juta dalam *revenue*. Jika digabungkan, mereka berdua mendominasi hampir seluruh penjualan perusahaan, meninggalkan staf lain (seperti Kali Vargas) jauh di bawah standar ($516 Ribu).

### 4. Mountain Bikes & Brand "Trek" Mendominasi Pasar
Kategori *Mountain Bikes* merajai penjualan dengan kontribusi lebih dari $3 Juta. Secara spesifik, 4 dari 5 produk dengan *revenue* tertinggi dipegang oleh *brand* **Trek** (terutama seri Slash 8 27.5).

## Strategic Recommendations

* **Audit Operasional 2018:** Manajemen harus segera melakukan audit internal terkait anomali penjualan di Q3-Q4 2018. Apakah dikarenakan data transaksi yang gagal terekam? Atau apakah lonjakan April menghabiskan seluruh inventaris Gudang sehingga tidak ada barang yang bisa dijual di bulan Mei-Desember?
* **Knowledge Sharing antar Cabang & Staf:** Lakukan bedah strategi terhadap taktik penjualan Marcelene Boyer dan Venita Daniel, lalu jadikan taktik tersebut sebagai SOP pelatihan standar untuk staf lain yang underperform.
* **Optimalisasi Inventaris:** Kurangi porsi stok untuk kategori *Cyclocross Bicycles* (yang penjualannya paling rendah, hanya ~$799 Ribu) dan alihkan *budget* pengadaan barang ke *brand* Trek, khususnya lini *Mountain* dan *Road Bikes*.
* **Strategi Pemasaran Geografis:** Terapkan kampanye pemasaran yang agresif di California dan Texas untuk mengurangi ketergantungan *revenue* pada wilayah New York.

## 📂 Repository Structure
-   `/datas`: Berisi file raw dataset dan query untuk membuat dataset di mysql.
-   `Query.sql`: Berisi skrip SQL untuk *relational table joining*.
-   `Excel Dashboard.xlsx`: File Excel dengan dashboard interaktif.
-   `Tableau Dashboard.twb` : File dashboard Bike Store dalam versi Tableau.
---
*Disclaimer: Proyek ini menggunakan dataset publik "BikeStores" yang dianalisis secara mandiri untuk latihan simulasi bisnis Data Analysis & Business Intelligence.*
