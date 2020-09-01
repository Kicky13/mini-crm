import 'package:minicrm/model/visit_schedule/visit_schedule.dart';

class MvisitSchedule {
  String status;
  int total;
  List<VisitSchedule> data;

  MvisitSchedule.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        total = map["total"],
        data = map["data"] != null
            ? List<VisitSchedule>.from(
                map["data"].map((it) => VisitSchedule.fromJsonMap(it)))
            : [];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = status;
    data['total'] = total;
    data['data'] =
        this.data != null ? this.data.map((v) => v.toJson()).toList() : null;
    return data;
  }
}
