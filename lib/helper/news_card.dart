import 'package:flutter/material.dart';
import 'package:minicrm/model/news/news.dart';
import 'package:minicrm/util/resource/my_color.dart';
import 'package:minicrm/util/resource/my_style.dart';

class NewsCard extends StatelessWidget {
  News berita;

  NewsCard(this.berita);

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: <Widget>[
              new Container(
                  padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 150,
                  width: lebar,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.all(Radius.circular(16.0)),
                    child: FadeInImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(berita.lINK),
                        placeholder: AssetImage("assets/images/news.jpg")),
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        berita.tITLE,
                        style: titleTextStyle,
                        maxLines: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                      ),
                      Text(
                        berita.dISCRIPTION,
                        style: blackSmallText.copyWith(
                            fontSize: 15),
                        maxLines: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            berita.pUP_DATE,
                            style: blackSmallText.copyWith(
                                fontSize: 15),
                          ),
                          Text(
                            "Selengkapnya >",
                            style: blackSmallText.copyWith(
                                fontSize: 15, color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
