import 'package:flutter/material.dart';
import 'detail_produk.dart';

class produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Produk")),
      backgroundColor: Colors.orange[700],
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Lcd Redmi 5+ (Black)",
                  deskripsi:
                      "Lcd komplit dengan tc (touchscreen) Redmi 5 Plus warna Hitam bergaransi. Free Tempered Glass.",
                  harga: 200000,
                  gambar: "Redmi 5+.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Lcd Redmi 5+ (Black)",
                deskripsi: "Lcd + tc Redmi 5 Plus warna Hitam",
                harga: 200000,
                gambar: "Redmi 5+.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Lcd Redmi 6A (White)",
                  deskripsi:
                      "Lcd komplit dengan tc (touchscreen) Redmi 6A warna Putih bergaransi. Free Tempered Glass dan Case bening.",
                  harga: 250000,
                  gambar: "Redmi 6A.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "LCD + TC REDMI 6A WARNA PUTIH",
                deskripsi: "Lcd Redmi 6A (White)",
                harga: 250000,
                gambar: "Redmi 6A.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Lcd + Tc Redmi Note 7 (Black)",
                  deskripsi:
                      "Lcd komplit dengan tc (touchscreen) Redmi Note 7 bergaransi. Free Tempered Glass.",
                  harga: 350000,
                  gambar: "Redmi Note 7.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "LCD + TC REDMI NOTE 7",
                deskripsi:
                    "Lcd komplite dengan touchscreen Redmi Note 7 warna Hitam.",
                harga: 300000,
                gambar: "Redmi Note 7.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "LCD REDMI NOTE 8 PRO",
                  deskripsi:
                      "Lcd Redmi Note 8 Pro ORIGINAL. Barang bergaransi, jika terjadi kerusakan silahkan menghubungi admin dengan menyertakan video unboxing paket. Free Tempered Glass dan case bening.",
                  harga: 400000,
                  gambar: "Redmi Note 8 Pro.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "LCD REDMI NOTE 8 PRO",
                deskripsi: "Redmi Note 8 Pro ORIGINAL",
                harga: 400000,
                gambar: "Redmi Note 8 Pro.jpg",
                star: 4),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Redmi Note 9 Pro",
                  deskripsi:
                      "Lcd Redmi Note 9 Pro ORIGINAL. Barang bergaransi, jika terjadi kerusakan silahkan menghubungi admin dengan menyertakan video unboxing paket. Free Tempered Glass dan case bening.",
                  harga: 600000,
                  gambar: "Redmi Note 9 Pro.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "REDMI NOTE 9 PRO",
                deskripsi: "Redmi Note 9 Pro ORIGINAL",
                harga: 600000,
                gambar: "Redmi Note 9 Pro.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[700],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.orange.shade900),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
