import 'package:flutter/material.dart';
import 'package:minicrm/util/resource/my_color.dart';

class SyncCard extends StatelessWidget {
  final String title, iconName, status;
  final Function pressFunc;
  final bool isLoading;

  const SyncCard(
      {Key key,
      this.title,
      this.iconName,
      this.status,
      this.pressFunc,
      this.isLoading});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.fromLTRB(1, 5, 1, 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                    iconName,
                    width: size.width / 6,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Status: ${status}',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 3,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: pressFunc,
                    child: Text(
                      'Download',
                      style: TextStyle(color: Colors.white),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
