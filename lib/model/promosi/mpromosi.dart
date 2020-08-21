import 'package:minicrm/model/promosi/promosi.dart';

class MPromosi {
    List<Promosi> data;
    String status;
    int total;

    MPromosi({this.data, this.status, this.total});

    factory MPromosi.fromJson(Map<String, dynamic> json) {
        return MPromosi(
            data: json['`data`'] != null ? (json['`data`'] as List).map((i) => Promosi.fromJson(i)).toList() : null,
            status: json['status'], 
            total: json['total'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['status'] = this.status;
        data['total'] = this.total;
        if (this.data != null) {
            data['`data`'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}