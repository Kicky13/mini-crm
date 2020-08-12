import 'package:minicrm/model/login/login.dart';

class MLogin {
    Login data;
    String status;

    MLogin({this.data, this.status});

    factory MLogin.fromJson(Map<String, dynamic> json) {
        return MLogin(
            data: json['data'] != null ? Login.fromJson(json['data']) : null,
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['status'] = this.status;
        if (this.data != null) {
            data['data'] = this.data.toJson();
        }
        return data;
    }
}