import 'package:flutter/material.dart';

import '../../data/entity/urunler.dart';

class DetaySayfa extends StatefulWidget {
  Urunler urun;
  DetaySayfa({required this.urun});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.urun.ad)), //widgetla üst sayfaya erişiyor. önce urun sonra ada erişiyor.
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.urun.resim}"),
            Text("${widget.urun.fiyat}₺", style: const TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
