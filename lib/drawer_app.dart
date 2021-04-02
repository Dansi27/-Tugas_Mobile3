import 'package:flutter/material.dart';
import 'detail_about.dart'as detail;

class Menudrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //widget drawer
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            //bagian header pada drawer
            accountName: Text("Daniel Sihite"),
            accountEmail: Text("sihitedaniel710@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/appimages/Daniel.jpeg"),
              ),
            ),
            decoration: BoxDecoration(color: Colors.orange[700]), // mewarnai background drawer
          ),
          ListTile(
            //widget untuk drawer di bagian list tilenya
            onTap: () {},
            title: Text("Profil"),
            trailing: Icon(Icons.account_circle),
          ),
          ListTile(
            onTap: () {},
            title: Text("Pengaturan"),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => detail.DetailMenu(
                  nama: "Media Penjualan Khusus LCD Xiaomi",
                  deskripsi:
                       "Aplikasi ini merupakan media penjualan LCD khusus brand Xiaomi, yang dimana memudahkan pengguna dalam membeli produk LCD Smartphone Xiaomi mereka.",
                  gambar: "about.png",
                ),
              ));
            },
            title: Text("Tentang Aplikasi"),
            trailing: Icon(Icons.help),
          ),
          ListTile(
            onTap: () {},
            title: Text("Keluar"),
            trailing: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
