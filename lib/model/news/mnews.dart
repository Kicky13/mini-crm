import 'package:minicrm/model/news/news.dart';

class MNews {
    List<News> data;
    String status;
    int total;

    MNews({this.data, this.status, this.total});

    factory MNews.fromJson(Map<String, dynamic> json) {
        return MNews(
            data: json['data'] != null ? (json['data'] as List).map((i) => News.fromJson(i)).toList() : null,
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