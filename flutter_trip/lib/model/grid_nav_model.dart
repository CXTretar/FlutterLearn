import 'package:flutter_trip/model/common_model.dart';

class GridNavModel {
  GridNavItem hotel;
  GridNavItem flight;
  GridNavItem travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  GridNavModel.fromJson(Map<String, dynamic> json) {
    hotel = json['hotel'] != null ? new GridNavItem.fromJson(json['hotel']) : null;
    flight = json['flight'] != null ? new GridNavItem.fromJson(json['flight']) : null;
    travel = json['travel'] != null ? new GridNavItem.fromJson(json['travel']) : null;
  }
}

class GridNavItem {
  String startColor;
  String endColor;
  CommonModel mainItem;
  CommonModel item1;
  CommonModel item2;
  CommonModel item3;
  CommonModel item4;

  GridNavItem({this.startColor, this.endColor, this.mainItem, this.item1, this.item2, this.item3, this.item4});

  GridNavItem.fromJson(Map<String, dynamic> json) {
    startColor = json['startColor'];
    endColor = json['endColor'];
    mainItem = json['mainItem'] != null ? new CommonModel.fromJson(json['mainItem']) : null;
    item1 = json['item1'] != null ? new CommonModel.fromJson(json['item1']) : null;
    item2 = json['item2'] != null ? new CommonModel.fromJson(json['item2']) : null;
    item3 = json['item3'] != null ? new CommonModel.fromJson(json['item3']) : null;
    item4 = json['item4'] != null ? new CommonModel.fromJson(json['item4']) : null;
  }
}
