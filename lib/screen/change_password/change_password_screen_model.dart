import 'package:flutter/material.dart';
import 'package:minicrm/screen/change_password/change_password_screen.dart';

abstract class ChangePasswordScreenModel extends State<ChangePasswordScreen> {
  bool isShowOP = true;
  bool isShowNP = true;
  bool isShowCP = true;

  setShowOP() {
    isShowOP = !isShowOP;
    setState(() {});
  }

  setShowNP() {
    isShowNP = !isShowNP;
    setState(() {});
  }

  setShowCP() {
    isShowCP = !isShowCP;
    setState(() {});
  }

  prosesSavePass() {}

  @override
  void initState() {
    super.initState();
  }
}
