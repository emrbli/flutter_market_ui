import 'package:flutter/material.dart';
import 'package:fmarket/kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: televizyonKontrolcusu,
          indicatorColor: Colors.blue[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,//Yatay olarak kayabilir tabbar
          labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),
          tabs: [
            Tab(
              child: Text("Temel Gıda"),
            ),
            Tab(
              child: Text("Şekerleme"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Temizlik"),
            )
          ],
        ),
        Expanded(
          child: TabBarView(controller: televizyonKontrolcusu, children: [
            Kategori(kategori: "Temel Gıda",),
            Kategori(kategori: "Şekerleme",),
            Kategori(kategori: "İçecekler",),
            Kategori(kategori: "Temizlik",),
          ]),
        )
      ],
    );
  }
}
