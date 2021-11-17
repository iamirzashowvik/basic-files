import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:munchies_app/utils/colors.dart';
import 'package:munchies_app/utils/styles.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListPage extends StatefulWidget {
  @override
  _LoadingListPageState createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Shimmer.fromColors(
                  baseColor: colorLightBlue,
                  highlightColor: colorDarkBlue,
                  enabled: _enabled,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(
                        height: rgPadding,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (_, __) => Padding(
                          padding: EdgeInsets.all(16),
                          child: Padding(
                            padding: EdgeInsets.all(rgPadding),
                            child: SizedBox(
                              height: 170,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: Get.width,
                                        height: 130.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 13.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 12.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 11.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: Get.width,
                                        height: 130.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 13.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 12.0,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 11.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        itemCount: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagX extends StatefulWidget {
  final double h, x;
  ImagX(this.h, this.x);

  @override
  _ImagXState createState() => _ImagXState();
}

class _ImagXState extends State<ImagX> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: colorLightBlue,
      highlightColor: colorDarkBlue,
      child: Container(
        height: widget.h,
        width: widget.x,
        color: Colors.white,
      ),
    );
  }
}
