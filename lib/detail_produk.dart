import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  DetailProduk(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama; 
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star, 
        size: 20, 
        color: Colors.yellow[700],
        ));
    }

    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.nama}"),
        backgroundColor: Colors.orangeAccent[500],
      ),
      backgroundColor: Colors.orange[700],
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimages/" + widget.gambar)
          ],
        ),
        Container(
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xFFE65100), 
              const Color(0xFFFF6F)],
            ),
          ),
          padding: EdgeInsets.all(10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                 children: childrenstar,
              ),
              new Container(
                child: new Text(
                  "Rp. " + this.widget.harga.toString(),
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "NeoSansBold"),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.orange[700],
          width: double.infinity,
          height: double.maxFinite,
          child: new Text(widget.deskripsi, style: new TextStyle(color: Colors.white),),
        )
      ],
    ),
  ),
);
}
}