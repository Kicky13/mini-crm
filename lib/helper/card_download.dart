import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class CardDownload extends StatelessWidget {
  final String title, subtitle;
  final Function press;
  final bool isLoading;

  const CardDownload(
      {Key key, this.title, this.subtitle, this.press, this.isLoading});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  flex: 2,
                  child: Image.asset(
                    'assets/icons/Download.png',
                    width: size.width / 6,
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        this.subtitle,
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(fontSize: 10, color: MyColor.warnaMerah),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 3,
                  child: RaisedButton(
                    color: MyColor.warnaMerah,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: press,
                    child: Text(
                      'Download',
                      style: TextStyle(color: MyColor.warnaPutih),
                    ),
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: isLoading,
                  child: LinearProgressIndicator(
                    backgroundColor: MyColor.warnaMerah,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
