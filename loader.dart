import 'package:flutter/cupertino.dart';
import 'package:munchies_app/utils/colors.dart';
import 'package:munchies_app/utils/constant.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  List<Color>? colors = [primaryPink];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryBlack,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(contentSpacing * 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingIndicator(
              indicatorType: Indicator.values[12],
              colors: colors,
            ),
            //SizedBox(height: 10,),
            // FittedBox(
            //   fit: BoxFit.contain,
            //   child: Text(widget.text,style: TextStyle(
            //       fontSize: 17,
            //       color: white,
            //   ),),
            // ),
          ],
        ),
      ),
    );
  }
}

showloadingWidget() {
  EasyLoading.show();
}

closeloadingWidget() {
  EasyLoading.dismiss();
}
