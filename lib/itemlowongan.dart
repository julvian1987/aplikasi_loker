import 'package:flutter/material.dart';

class JobItem {
  final String title;
  final String posisi; //price
  final String path; //gambar
  final String gaji; //color
  final String umur; //gearbox
  final String pendidikan; //fuel
  final String jenkel; //brand
  final String deskripsi; //deskripsi

  JobItem({@required this.title, @required this.posisi, @required this.path, @required this.gaji, @required this.umur, @required this.pendidikan, @required this.jenkel, @required this.deskripsi});
}

JobList allJobs = JobList(jobs: [
  JobItem(title: 'POS Indonesia', posisi: 'Kurir', gaji: '2.100.000', umur: 'Maks 30 Tahun', pendidikan: 'SMA Sederajat', jenkel: 'Laki-Laki', path: 'images/assets/job1.jpg', deskripsi: 'Pos Indonesia merupakan sebuah Badan Usaha Milik Negara Indonesia yang bergerak di bidang layanan pos. Saat ini sedang membuka lowongan untuk bagian kurir.'),
  JobItem(title: 'PT. Rifan FInancindo', posisi: 'Marketing', gaji: '2.000.000', umur: 'Maks 24 Tahun', pendidikan: 'SMA Sederajat', jenkel: 'laki-laki/Perempuan', path: 'images/assets/job2.jpg', deskripsi: 'PT. RIFAN FINANCINDO BERJANGKA salah satu anggota  Bursa Berjangka Jakarta  dan  Lembaga  Kliring  Berjangka di Indonesia. Saat ini sedang membuka lowongan bagian marketing.'),
  JobItem(title: 'Internasional Komputer', posisi: 'Teknisi', gaji: '2.500.000', umur: 'Maks 25 Tahun', pendidikan: 'SMA Sederajat', jenkel: 'Pria', path: 'images/assets/job3.jpg', deskripsi: 'Internasional Komputer dirintis pada akhir tahun 2007.  Internasional Komputer sebuah perusahaan yang bergerak dibidang Penjualan dan Jasa servis. Kami Melayani penjualan segala kebutuhan IT.'),
  JobItem(title: 'Rocket Chicken', posisi: 'Pramusaji', gaji: '1.800.000', umur: 'Maks 25 Tahun', pendidikan: 'SMP Sederajat', jenkel: 'Pria/Perempuan', path: 'images/assets/job4.jpg', deskripsi: 'Rocket Chicken adalah suatu jaringan rumah makan siap saji asal Indonesia dengan menu utama ayam goreng. Rocket Chicken membuka gerai pertamanya pada 21 Februari 2010 di Jl. Wolter Monginsidi, Kota Semarang oleh Nurul Atik'),
  JobItem(title: 'Lighspace Solo', posisi: 'Barista', gaji: '2.500.000', umur: 'Maks 24 Tahun', pendidikan: 'SMA Sederajat', jenkel: 'Pria/perempuan', path: 'images/assets/job5.jpg', deskripsi: 'LighSpace adalah perusahaan yang bergerak di bidang kopi minuman yang turut meramaikan pasar kopi kekinian di Indonesia. LighSpace dianggap sukses mengisi ceruk kesenjangan harga antara kopi mahal bertaraf peritel internasional dan kopi instan kemasan yang disajikan di warung-warung kopi.'),
  JobItem(title: 'CV. SamudraBibit', posisi: 'Gardener', gaji: '1.900.000', umur: 'Maks 35 Tahun', pendidikan: 'SMP Sederajat', jenkel: 'Pria', path: 'images/assets/job6.jpg', deskripsi: 'Samudra Bibit Indonesia adalah pusat bibit tanaman yang berupa tanaman hidup maupun benih atau biji, dengan varian yang sangat banyak.Dengan visi menjadi yang terluas dan terlengkap, Samudra Bibit selalu bertambah produknya, dengan tetap menjaga dan mengedepankan kualitas.'),
]);

class JobList {
  List<JobItem> jobs;

  JobList({this.jobs});
}
