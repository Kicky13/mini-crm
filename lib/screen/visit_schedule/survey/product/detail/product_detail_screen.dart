import 'package:flutter/material.dart';
import 'package:minicrm/helper/bottom_action.dart';
import 'package:minicrm/screen/visit_schedule/survey/product/detail/product_detail_screen_model.dart';
import 'package:minicrm/util/resource/my_color.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ProductDetailScreenModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Survey Produk"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Form(
          key: keyForm,
          autovalidate: autoValidate,
          child: _initWidget(),
        ),
      ),
    );
  }

  _initWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: _formInput(),
        ),
        BottomAction(
          onPressed: () {},
        ),
      ],
    );
  }

  _formInput() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: [
        SizedBox(
          height: 10,
        ),
        _product(),
        TextFormField(
          enabled: false,
          readOnly: true,
          controller: tglBeli,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Tanggal Beli"),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: hargaBeli,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Harga Beli",
              suffixText: "/ Zak",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: hargaJual,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Harga Jual",
              suffixText: "/ Zak",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: top,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Term of Payment",
              suffixText: "Hari",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: kapasitas,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Kapasitas Toko",
              suffixText: "Zak",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: stok,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Stok",
              suffixText: "Zak",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
        TextFormField(
          controller: volume,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Volume",
              suffixText: "Zak",
              suffixStyle: TextStyle(
                  color: MyColor.warnaMerah, fontWeight: FontWeight.bold)),
          validator: (val) {
            if (val.length < 1)
              return 'Filed is required';
            else
              return null;
          },
        ),
      ],
    );
  }

  _product() {
    return Card(
      elevation: 6,
      child: ListTile(
        leading: Image(
          width: 32,
          height: 32,
          image: AssetImage("assets/icons/cement-48px.png"),
        ),
        title: Text("Semen Gresik"),
      ),
    );
  }
}
