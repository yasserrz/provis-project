// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter_application_1/page/dashboard_page.dart';
import 'package:flutter_application_1/page/data_dosen_mahasiswa_page.dart';
import 'package:flutter_application_1/page/data_sarana_prasarana_page.dart';
import 'package:flutter_application_1/page/kegiatan_kampus_page.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/page/navigation_page.dart';
import 'package:flutter_application_1/page/pencapaian_universita_page.dart';
import 'package:flutter_application_1/route/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const DASHBOARD = Routes.DASHBOARD;
  static const DATA_DOSEN_MAHASISWA = Routes.DATA_DOSEN_MAHASISWA;
  static const DATA_SARANA_PRASARANA = Routes.DATA_SARANA_PRASARANA;
  static const KEGIATAN_KAMPUS = Routes.KEGIATAN_KAMPUS;
  static const NAVIGATION = Routes.NAVIGATION;
  static const PENCAPAIAN_UNIVERSITAS = Routes.PENCAPAIAN_UNIVERSITAS;
  static const LOGIN = Routes.LOGIN;

  static final list = [
    GetPage(
      name: Routes.NAVIGATION,
      page: () => NavigationPage(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
    ),
    GetPage(
      name: Routes.DATA_DOSEN_MAHASISWA,
      page: () => DataDosenMahasiswaPage(),
    ),
    GetPage(
      name: Routes.DATA_SARANA_PRASARANA,
      page: () => DataSaranaPrasaranaPage(),
    ),
    GetPage(
      name: Routes.KEGIATAN_KAMPUS,
      page: () => KegiatanKampusPage(),
    ),
    GetPage(
      name: Routes.PENCAPAIAN_UNIVERSITAS,
      page: () => PencapaianUniversitasPage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
  ];
}
