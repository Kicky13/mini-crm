import 'package:minicrm/model/program/program.dart';

class MProgram {
    List<Program> data;
    String status;
    int total;

    MProgram({this.data, this.status, this.total});

    factory MProgram.fromJson(Map<String, dynamic> json) {
        return MProgram(
            data: json['data'] != null ? (json['data'] as List).map((i) => Program.fromJson(i)).toList() : null,
            status: json['status'], 
            total: json['total'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['status'] = this.status;
        data['total'] = this.total;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}