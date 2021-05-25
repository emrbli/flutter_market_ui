import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti(
          "Zeytinyağı",
          "20 TL",
          "https://static4.depositphotos.com/1020804/364/i/950/depositphotos_3649861-stock-photo-branch-with-olives-and-a.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Hazır Çorba",
          "5 TL",
          "https://productimages.hepsiburada.net/s/10/1500/9220501995570.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Ketçap",
          "9 TL",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/16290756/16290756-6cdc14.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Makarna",
          "3 TL",
          "https://productimages.hepsiburada.net/s/43/375/10759386267698.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Noodle",
          "5 TL",
          "https://st1.myideasoft.com/idea/ek/90/myassets/products/805/indomie-sebzeli-avantajli-paket-5x70gr-2427846.jpeg?revision=1575092823",
          mevcut: true,
        ),
        urunKarti(
          "Toz Şeker",
          "11 TL",
          "https://cdn.akakce.com/torku/torku-3-kg-toz-z.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Sinangil Un",
          "13 TL",
          "https://img-ozdilekteyim.mncdn.com/mnresize/1200/1200/medias/?context=bWFzdGVyfHByb2R1Y3RpbWd8MTI1Mjk1fGltYWdlL2pwZWd8aDA1L2g4MC85MDMwOTY1NDYxMDIyfGZkMGVmZmEwZjhlNjU0MWUyZjYyMGIxMmJmYWQzMzJlOWRmZDkxZWI5YTExNzU0NjU1YTVlOGVhMGMwNDZiN2E",
          mevcut: true,
        ),
        urunKarti(
          "Maya",
          "20 TL",
          "https://st2.myideasoft.com/idea/cv/25/myassets/products/105/pakmaya-aktif-kuru-maya.jpg?revision=1542900017",
          mevcut: true,
        ),
        urunKarti(
          "Salça",
          "7 TL",
          "https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30099427/30099427_0_MC/8797026680882_1541580189172.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Süt",
          "3.5 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_1280.jpg",
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti("Lokum", "25 TL",
            "https://www.sekerogluonline.com/fistikli-cifte-kavrulmus-lokum-cifte-kavrulmus-lokum-643-40-O.jpg",
            mevcut: true),
        urunKarti("Pekmez", "12.5 TL",
            "https://ayb.akinoncdn.com/products/2019/04/29/6671/8d8f3b41-c1e2-4a6a-a18e-ef2f833003a7_size780x780_quality60_cropCenter.jpg",
            mevcut: true),
        urunKarti("Torku Banada", "13 TL",
            "https://ayb.akinoncdn.com/products/2019/01/18/6978/3048d13d-8298-46e6-84ff-de4b81b3cd9d_size780x780_quality60_cropCenter.jpg",
            mevcut: true),
        urunKarti("Tahin", "10 TL",
            "https://ayb.akinoncdn.com/products/2019/04/29/6673/69f576fc-7173-494a-ac42-52b30c3dc321_size780x780_quality60_cropCenter.jpg",
            mevcut: true),
        urunKarti("Çilek Reçeli", "15 TL",
            "https://st1.myideasoft.com/idea/fc/93/myassets/products/036/recel-cilek-700.jpg?revision=1610605009",
            mevcut: true),
        urunKarti("Kayısı Reçeli", "15 TL",
            "https://st1.myideasoft.com/idea/ad/25/myassets/products/491/koska-kayisi-recel-760-gr-750254.jpeg?revision=1611309912",
            mevcut: true),
        urunKarti(
          "Bayram Şekeri",
          "9 TL",
          "https://www.unalkuruyemis.com.tr/bayramlik-karisik-kent-seker-bayramliklar-kent-1961-15-O.png",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti("Ayran", "3 TL",
            "https://upload.wikimedia.org/wikipedia/commons/8/8e/Fresh_ayran.jpg"),
        urunKarti("Çay", "1.5 TL",
            "https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1474000/cay-istanbul-1475368.jpg"),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti("Arap Sabunu", "10 TL",
            "https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30248307/30248307_0_MC/8813395607602_1619602544173.jpg"),
        urunKarti("Camsil", "7 TL",
            "https://productimages.hepsiburada.net/s/34/375/10443833344050.jpg"),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.1,
                spreadRadius: 2.1,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu, //benzersiz ürüne özel olmalı bu etiket
              child: Container(
                width: 121,
                height: 81,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 8.1,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 13.1,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8.1,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 13.1,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1, // en boy oranı 2 yaparsak dikdörtgen olur.
      children: gosterilecekListe,
    );
  }
}
