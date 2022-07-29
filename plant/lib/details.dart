import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant/model/usermodel.dart';

class DetailsDemo extends StatefulWidget {
  const DetailsDemo({Key? key, this.model}) : super(key: key);
  final UserModel? model;
  @override
  State<DetailsDemo> createState() => _DetailsDemoState();
}

class _DetailsDemoState extends State<DetailsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 10,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white.withOpacity(0.60),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 50, color: Colors.grey)
                                      ]),
                                  child: Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Colors.teal,
                                    size: 50,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white.withOpacity(0.60),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 50, color: Colors.grey)
                                      ]),
                                  child: Icon(
                                    Icons.snowing,
                                    color: Colors.teal,
                                    size: 50,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white.withOpacity(0.60),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 50, color: Colors.grey)
                                      ]),
                                  child: Icon(
                                    Icons.air_outlined,
                                    color: Colors.teal,
                                    size: 50,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white.withOpacity(0.60),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 50, color: Colors.grey)
                                      ]),
                                  child: Icon(
                                    Icons.cloudy_snowing,
                                    color: Colors.teal,
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 9,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage("${widget.model?.img}"),
                                    fit: BoxFit.cover)),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.model!.name}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${widget.model!.price}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            "${widget.model!.country}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              "Buy now",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
