# Analisis Data Penjualan Sepeda – *BikeStores Dataset*

## Deskripsi Proyek
Proyek ini adalah proyek analisis data berdasarkan dataset **BikeStores**, yang berisi data transaksi penjualan sepeda dari beberapa toko.
Analisis ini dilakukan untuk memahami pola penjualan, performa cabang toko, kontribusi tiap produk, serta tren pelanggan berdasarkan data yang tersedia.
Proyek ini merupakan hasil eksplorasi mandiri terhadap data untuk menemukan insight, pola, dan tren berdasarkan data.

---

## Dataset
Dataset yang digunakan berasal dari file `BikeStores.xlsx`, yang berisi beberapa tabel utama seperti:
* customers – data pelanggan
* orders – data transaksi
* order_items – detail produk setiap transaksi
* products – informasi nama produk, kategori, dan harga
* categories – kategori produk sepeda
* stores – nama dan lokasi toko
* staffs – data sales representative
  
Seluruh tabel tersebut digabung/JOIN menggunakan query SQL untuk menghasilkan satu dataset penjualan lengkap dengan kolom:
`order_id`, `customer`, `city`, `state`, `order_date`, `total_units`, `revenue`, `product_name`, `category_name`, `store_name`, `sales_rep`.
Dataset ini sudah dalam keadaan bersih, oleh karena itu di proyek ini tidak dilakukan proses cleaning .

---

### Proses Analisis:
1. **Persiapan Data**
   - Menggabungkan seluruh tabel dari dataset yang terpisah-pisah ke dalam satu *DataFrame* dengan SQL JOIN.
   - Mengekspor hasil JOIN di SQL ke format xlsx.
   - Membukanya di Excel untuk analisis & visualisasi.
   - Mengubah tipe data kolom "Date" dari General/string ke `Date`

2. **Eksplorasi Awal (EDA)**
   - Menelusuri total pendapatan tahunan dari 2016–2018 untuk melihat tren penjualan antar tahun.
   - Mengamati pola pendapatan bulanan untuk memahami fluktuasi musiman pada penjualan sepeda.
   - Melihat sebaran pendapatan per toko untuk mengetahui kontribusi masing-masing cabang terhadap total revenue.
   - Mengidentifikasi distribusi penjualan per wilayah (state dan city) untuk menemukan area dengan penjualan tertinggi.

3. **Analisis Penjualan**
   - **Per Toko:** Menghitung total pendapatan tiap cabang (Baldwin Bikes, Rowlett Bikes, Santa Cruz Bikes) untuk mengetahui toko dengan kontribusi terbesar.
   - **Per State/Negara Bagian:** Menganalisis total penjualan di California, New York, dan Texas.
   - **Per Kota:** Mengidentifikasi 5 kota dengan pendapatan tertinggi.
   - **Per Sales Representative:** Menentukan 5 staf penjualan dengan performa revenue tertinggi.
   - **Per Pelanggan:** Menemukan pelanggan dengan total pembelian tertinggi.
   - **Per Kategori & Produk:** Menghitung pendapatan per kategori sepeda dan menentukan 5 produk paling laku berdasarkan total revenue.

4. **Visualisasi**
   Dashboard interaktif dibuat menggunakan **Excel Pivot Chart**  + **Slicer** dan juga menggunakan **Tableau**

---

## Dashboard
Bike Store Sales Dashboard - Excel Version
<img src="Excel Dashboard Image.png" alt="Bike Store Sales Dashboard" width="900">

---

## Key Insights
- **Kinerja Penjualan Tahunan**: Terjadi peningkatan pendapatan signifikan dari tahun 2016 ke 2017, menjadikan 2017 sebagai tahun dengan performa terbaik sepanjang periode observasi. Namun, pada tahun 2018 terjadi penurunan revenue yang mencolok, yang menandakan kemungkinan penurunan permintaan atau faktor stok, strategi penjualan, atau lainnya.
- **Tren Penjualan Bulanan**: Berdasarkan grafik line chart, lonjakan penjualan yang meningkat drastis terlihat pada bulan Feb–April di tahun 2018, sebelum anjlok ke penjualan yang sangat sedikit di bulan-bulan berikutnya.
  - Pola ini mengindikasikan adanya faktor musiman atau promosi tertentu yang meningkatkan penjualan.
- **Performa Penjualan per Toko**: Terdapat perbedaan signifikan antar toko dalam hal total pendapatan tahunan yang didominasi oleh cabang Baldwin Bikes yang menyumbang total 68% pendapatan.
  - Hasil ini dapat menjadi evaluasi untuk memperkuat strategi pemasaran dan operasional toko dengan performa rendah.
- **Penjualan Kategori Sepeda**: Kategori Mountain Bikes menjadi produk paling laku dan berkontribusi paling besar terhadap pendapatan. Diikuti oleh Road Bikes dan Cruisers Bicycles, menandakan fokus pasar pada segmen outdoor performance.
- **Distribusi Pendapatan per State**: Penjualan terbesar berasal dari **New York**, diikuti oleh **Texas** dan **California**. Hal ini bisa disebabkan oleh perbedaan basis pelanggan dan populasi area. Potensi ekspansi atau strategi promosi di California dapat ditingkatkan mengingat performanya masih di bawah dua negara bagian lainnya.
- **Produk Terlaris**: Produk dengan pendapatan tertinggi adalah **Trek Slash 8 27.5 – 2016**. Brand "Trek" yang mendominasi penjualan produk menandakan reputasi dan daya tarik kuat terhadap pelanggan.

---

## Kesimpulan
Melalui proyek ini, saya belajar bagaimana mengolah dan menganalisis data penjualan untuk bisa menghasilkan insight yang berguna. Saya jadi lebih paham cara membaca tren penjualan, mengenali produk dan toko dengan performa terbaik, serta memahami perilaku pelanggan dari sisi data. Selain itu, saya juga belajar pentingnya visualisasi yang jelas agar hasil analisis mudah dipahami dan bisa mendukung pengambilan keputusan bisnis.
