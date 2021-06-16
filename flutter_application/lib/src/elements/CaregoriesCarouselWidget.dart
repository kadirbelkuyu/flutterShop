import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../elements/CategoriesCarouselItemWidget.dart';
import '../elements/CircularLoadingWidget.dart';
import '../models/category.dart';

// ignore: must_be_immutable
class CategoriesCarouselWidget extends StatelessWidget {
  List<Category> categories;
  CategoriesCarouselWidget({Key key, this.categories}) : super(key: key);
   /*Widget build(BuildContext context) {
    return this.categories.isEmpty
        ? CircularLoadingWidget(height: 150)
        : Container(
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: this.categories.length,
            scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                double _marginLeft = 0;
                double _margintop = 0;
                (index == 0) ? _marginLeft = 0 : _marginLeft = 0;
                (index == 3) ? _margintop = 0: _margintop = 0;
                return new CategoriesCarouselItemWidget(
                  marginLeft: _marginLeft,
                  margintop: _margintop,
                  category: this.categories.elementAt(index),
                );
              },
            ));
  }*/
  //4 column gridd llisst için
  @override
  Widget build(BuildContext context) {
     return this.categories.isEmpty
        ? CircularLoadingWidget(height: 150)
        : Container(
       height: 250,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:100,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 0),
                itemCount: this.categories.length,
                itemBuilder: (context, index) {
                  double _marginLeft = 0;
                  double _margintop = 0;
                  (index %4 == 0) ? _marginLeft = 10 : _marginLeft = 0;
                  return new CategoriesCarouselItemWidget(
                    marginLeft: _marginLeft,
                    margintop: 5,
                    category: this.categories.elementAt(index),
                  );
                },),);
  }
}
