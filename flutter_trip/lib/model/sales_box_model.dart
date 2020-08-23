import 'package:flutter_trip/model/common_model.dart';

class SalesBoxModel {
  String icon;
  String moreUrl;
  CommonModel bigCard1;
  CommonModel bigCard2;
  CommonModel smallCard1;
  CommonModel smallCard2;
  CommonModel smallCard3;
  CommonModel smallCard4;

  SalesBoxModel({this.icon, this.moreUrl, this.bigCard1, this.bigCard2, this.smallCard1, this.smallCard2, this.smallCard3, this.smallCard4});

  SalesBoxModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    moreUrl = json['moreUrl'];
    bigCard1 = json['bigCard1'] != null ? new CommonModel.fromJson(json['bigCard1']) : null;
    bigCard2 = json['bigCard2'] != null ? new CommonModel.fromJson(json['bigCard2']) : null;
    smallCard1 = json['smallCard1'] != null ? new CommonModel.fromJson(json['smallCard1']) : null;
    smallCard2 = json['smallCard2'] != null ? new CommonModel.fromJson(json['smallCard2']) : null;
    smallCard3 = json['smallCard3'] != null ? new CommonModel.fromJson(json['smallCard3']) : null;
    smallCard4 = json['smallCard4'] != null ? new CommonModel.fromJson(json['smallCard4']) : null;
  }
}
