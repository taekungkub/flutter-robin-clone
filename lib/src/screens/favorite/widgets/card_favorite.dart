import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/theme.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 0, color: Colors.black),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'asdasdasdadasdasdadasdasd',
                            fit: BoxFit.fill,
                          ),
                        )),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'loremisumloremisumloremisumloremisumloremisumloloremisumloremisumloremisumloremisumloremisumloremisum,remisumloremisumloremisumloremisumloremisumloremisum',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'loremisumloremisumloremisumloremisumloremisumloloremisumloremisumloremisumloremisumloremisumloremisum,remisumloremisumloremisumloremisumloremisumloremisum',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: kTextMuted),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: kDefaultPaddin,
                              ),
                              Row(
                                children: [
                                  Text("4.3 KM",
                                      style: TextStyle(color: kTextMuted)),
                                  Spacer(), // use Spacer

                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 17,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("4.6",
                                          style: TextStyle(color: kTextMuted)),
                                    ],
                                  ),
                                  Spacer(), // use Spacer

                                  Text("Close",
                                      style: TextStyle(color: kTextMuted)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
            child: Divider(
              color: Colors.grey.shade400,
              height: 10,
            ),
          ),
        ],
      ),
    );
  }
}
