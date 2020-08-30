import 'package:minicrm/model/customer/customer.dart';

class MCustomer {
  String status;
  int total;
  List<Customer> data;

  MCustomer({
    String status,
    int total,
    List<Customer> data});

  factory MCustomer.fromJson(Map<String, dynamic> json) {
    return MCustomer(
      data: json['data'] != null ? (json['data'] as List).map((i) => Customer.fromJson(i)).toList() : null,
      status: json['status'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["status"] = this.status;
    data["total"] = this.total;
    if (data != null) {
      data["data"] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }

}