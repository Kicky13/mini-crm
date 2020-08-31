import 'package:flutter/material.dart';
import 'package:minicrm/helper/rounded_background.dart';
import 'package:minicrm/model/program/program.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class ProgramsCard extends StatelessWidget {
  Program program;

  ProgramsCard(this.program);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/icons/group101.png",
                        width: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width) - 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              program.jUDUL_PROGRAM,
                              style: titleTextStyle,
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                            ),
                            Text(
                              program.dETAIL_PROGRAM,
                              style: blackSmallText.copyWith(
                                fontSize: 15,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        program.sTART_DATE,
                        style: blackSmallText.copyWith(
                            fontSize: 15),
                      ),
                      Text(
                        "s/d",
                        style: blackSmallText.copyWith(
                            fontSize: 15),
                      ),
                      Text(
                        program.eND_DATE,
                        style: blackSmallText.copyWith(
                            fontSize: 15),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
