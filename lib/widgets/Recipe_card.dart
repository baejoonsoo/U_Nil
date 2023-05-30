import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title, writer, img, profile;
  final int like;

  const RecipeCard({
    Key? key,
    required this.title,
    required this.writer,
    required this.img,
    required this.profile,
    required this.like,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.35),
            blurRadius: 6,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.white,
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 2,
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: <Widget>[
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    profile,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              title,
                              style: const TextStyle(fontSize: 14),
                            ),
                            Text(
                              writer,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ))),
                SizedBox(
                  width: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  <Widget>[
                      Text(
                        like>99?"99+":"$like",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC7F2A4),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFFC7F2A4),
                        weight: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
          // Column(
          //   children: <Widget>[
          //     Container(color:Colors.blue,
          //       child: Image.network(img),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
