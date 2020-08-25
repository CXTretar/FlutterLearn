import 'package:flutter/material.dart';
import 'package:flutter_trip/model/common_model.dart';
import 'package:flutter_trip/model/grid_nav_model.dart';
import 'package:flutter_trip/widgets/webview.dart';

class GridNavWidget extends StatelessWidget {
  final GridNavModel gridNavModel;

  GridNavWidget({this.gridNavModel});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: _getNavItems(context),
      ),
    );
  }

  _getNavItems(BuildContext context) {
    List<Widget> items = [];

    if (gridNavModel == null) return items;
    if (gridNavModel.hotel != null) {
      items.add(_getNavItem(context, gridNavModel.hotel, true));
    }
    if (gridNavModel.flight != null) {
      items.add(_getNavItem(context, gridNavModel.flight, false));
    }
    if (gridNavModel.travel != null) {
      items.add(_getNavItem(context, gridNavModel.travel, false));
    }

    return items;
  }

  _getNavItem(BuildContext context, GridNavItem gridNavItem, bool first) {
    List<Widget> items = [];
    items.add(_getMainItem(context, gridNavItem.mainItem));
    items.add(_getDoubleItem(context, gridNavItem.item1, gridNavItem.item2));
    items.add(_getDoubleItem(context, gridNavItem.item3, gridNavItem.item4));
    Color startColor = Color(int.parse('0xff' + gridNavItem.startColor));
    Color endColor = Color(int.parse('0xff' + gridNavItem.endColor));
    return Container(
      height: 88,
      margin: first ? null : EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
          //线性渐变
          gradient: LinearGradient(colors: [startColor, endColor])),
      child: Row(children: items),
    );
  }

  _getMainItem(BuildContext context, CommonModel model) {
    return Expanded(
        flex: 1,
        child: _wrapGesture(
          context,
          model,
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Image.network(
                model.icon,
                fit: BoxFit.contain,
                height: 88,
                width: 121,
                alignment: AlignmentDirectional.bottomEnd,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  model.title,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }

  _getDoubleItem(BuildContext context, CommonModel topModel, CommonModel bottomModel) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _getNormalItem(context, topModel, true),
          ),
          Expanded(
            flex: 1,
            child: _getNormalItem(context, bottomModel, false),
          ),
        ],
      ),
    );
  }

  _getNormalItem(BuildContext context, CommonModel model, bool isFirst) {
    BorderSide borderSide = BorderSide(width: 0.8, color: Colors.white);
    return FractionallySizedBox(
      //撑满父布局的宽度
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: borderSide,
            bottom: isFirst ? borderSide : BorderSide.none,
          ),
        ),
        child: _wrapGesture(
          context,
          model,
          Center(
            child: Text(
              model.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  _wrapGesture(BuildContext context, CommonModel model, Widget widget) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WebViewWidget(
            url: model.url,
            statusBarColor: model.statusBarColor,
            hideAppBar: model.hideAppBar,
            title: model.title,
          );
        }));
      },
      child: widget,
    );
  }
}
