import 'package:flutter/material.dart';
import 'package:minicrm/screen/visit_schedule/survey/product/detail/product_detail_screen.dart';

abstract class ProductDetailScreenModel extends State<ProductDetailScreen> {
  final keyForm = GlobalKey<FormState>();
  bool autoValidate = false;
  var tglBeli = TextEditingController();
  var hargaBeli = TextEditingController();
  var hargaJual = TextEditingController();
  var top = TextEditingController();
  var kapasitas = TextEditingController();
  var stok = TextEditingController();
  var volume = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
}