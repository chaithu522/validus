import 'package:validus/modelclasses/watchData.dart';

class Watch {
  bool? success;
  int? statusCode;
  List<WatchData>? data;

  Watch({this.success, this.statusCode, this.data});

  Watch.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statusCode = json['statusCode'];
    if (json['data'] != null) {
      data = <WatchData>[];
      json['data'].forEach((v) {
        data!.add(WatchData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['statusCode'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}