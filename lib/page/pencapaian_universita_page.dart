// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/themes.dart';
import 'package:flutter_application_1/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class PencapaianUniversitasPage extends StatelessWidget {
  const PencapaianUniversitasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarBasic(title: "PENCAPAIAN UNIVERSITAS"),
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          akreditasi(),
          prestasiUniversitas(),
        ],
      ),
    );
  }

  Widget akreditasi() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kDeepBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Text(
            'AKREDITASI',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: Get.width,
            height: 5,
            color: kGreyColor,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/Vector-11.png",
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Presentase Berdasarkan Jumlah',
                    style:
                        whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    children: [
                      Text(
                        'A = ',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'C = ',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'B = ',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'D = ',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          //TABLE
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(1.5),
                    1: FlexColumnWidth(4),
                    2: FlexColumnWidth(2.5),
                    3: FlexColumnWidth(3),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: kRedColor,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'NO',
                            style: whiteTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Jurusan',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Fakultas',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Akreditasi',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowAkreditasi("1", "Ilmu Komputer", "FMIPA", "A"),
                    rowAkreditasi("2", "Matematika", "FMIPA", "A"),
                    rowAkreditasi("3", "Kimia", "FMIPA", "A"),
                    rowAkreditasi("4", "Biologi", "FMIPA", "A"),
                    rowAkreditasi("4", "IPSE", "FMIPA", "A"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  rowAkreditasi(String no, String jurusan, String fakultas, String akreditasi) {
    return TableRow(
      decoration: BoxDecoration(color: kWhiteColor),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            no,
            style: blackTextStyle.copyWith(fontSize: 13, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            jurusan,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            fakultas,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            akreditasi,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget prestasiUniversitas() {
    return Container(
      width: Get.width,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kDeepBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Text(
            'PRESTASI UNIVERSITAS',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: Get.width,
            height: 5,
            color: kGreyColor,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/Vector-11.png",
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Presentase Berdasarkan Jumlah',
                    style:
                        whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Regional =  ',
                    style:
                        whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Nasional = ',
                    style:
                        whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Internasional = ',
                    style:
                        whiteTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
          //TABLE
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(1.5),
                    1: FlexColumnWidth(4),
                    2: FlexColumnWidth(2.5),
                    3: FlexColumnWidth(3),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: kRedColor,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'NO',
                            style: whiteTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Prestasi',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Tingkat',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Fakultas',
                            style: whiteTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowAkreditasi("1", "ASDD", "asdd", " dsad"),
                    rowAkreditasi("2", " ", " ", " "),
                    rowAkreditasi("3", " ", " ", " "),
                    rowAkreditasi("4", " ", " ", " "),
                    rowAkreditasi("4", " ", " ", " "),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  rowPrestasi(String no, String prestasi, String tingkat, String fakultas) {
    return TableRow(
      decoration: BoxDecoration(color: kWhiteColor),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            no,
            style: blackTextStyle.copyWith(fontSize: 13, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            prestasi,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            tingkat,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            fakultas,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
