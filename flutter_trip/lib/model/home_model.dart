import 'package:flutter_trip/model/common_model.dart';
import 'package:flutter_trip/model/config_model.dart';
import 'package:flutter_trip/model/grid_nav_model.dart';
import 'package:flutter_trip/model/sales_box_model.dart';

class HomeModel {
  ConfigModel config;
  List<CommonModel> bannerList;
  List<CommonModel> localNavList;
  GridNavModel gridNav;
  List<CommonModel> subNavList;
  SalesBoxModel salesBox;

  HomeModel({this.config, this.bannerList, this.localNavList, this.gridNav, this.subNavList, this.salesBox});

  HomeModel.fromJson(Map<String, dynamic> json) {
    config = json['config'] != null ? new ConfigModel.fromJson(json['config']) : null;
    if (json['bannerList'] != null) {
      bannerList = new List<CommonModel>();
      json['bannerList'].forEach((v) {
        bannerList.add(new CommonModel.fromJson(v));
      });
    }
    if (json['localNavList'] != null) {
      localNavList = new List<CommonModel>();
      json['localNavList'].forEach((v) {
        localNavList.add(new CommonModel.fromJson(v));
      });
    }
    gridNav = json['gridNav'] != null ? new GridNavModel.fromJson(json['gridNav']) : null;
    if (json['subNavList'] != null) {
      subNavList = new List<CommonModel>();
      json['subNavList'].forEach((v) {
        subNavList.add(new CommonModel.fromJson(v));
      });
    }
    salesBox = json['salesBox'] != null ? new SalesBoxModel.fromJson(json['salesBox']) : null;
  }
}
