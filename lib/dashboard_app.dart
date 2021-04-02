import 'package:flutter/material.dart';
import 'drawer_app.dart' as Drawer;
import 'detail_about.dart' as detail;
import 'produk_list.dart' as produk;
import 'package:daniel_tugas3/ui/home.dart' as home;
import 'dart:ui';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.orange[700],
      ),
      backgroundColor: Colors.orange[400],
      drawer: Drawer.Menudrawer(),
      resizeToAvoidBottomInset: false,
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => produk.produk(),
              ));
            },
            child: ProductBox(nama: "Produk", gambar: "Keranjang.png"),
          ),
          Text(" ",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 10.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Mengenai Aplikasi",
                  deskripsi:
                      "Aplikasi ini merupakan media penjualan LCD khusus brand Xiaomi, yang dimana memudahkan pengguna dalam membeli produk LCD Smartphone Xiaomi mereka.",
                  gambar: "about.png",
                ),
              ));
            },
            child: ProductBox(nama: "Tentang Aplikasi", gambar: "about.png"),
          ),
          Text(" ",
              textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => home.Home(),
              ));
            },
            child: ProductBox(nama: "Transaksi", gambar: "wallet.jpg"),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.nama, this.gambar}) : super(key: key);
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent[100],
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
                          fontSize: 30.0,
                        )),
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
