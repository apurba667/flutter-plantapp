import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plant/details.dart';
import 'package:plant/model/usermodel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.90),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        child: Column(
          children: [
            //First part
            Expanded(
                flex: 10,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.26,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "HI Uishopy",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://cdn.dribbble.com/users/2162265/screenshots/5816007/media/5ce9f7fbfc412dc21ecacfb6798176a9.png?compress=1&resize=400x300&vertical=top",
                            ),
                            radius: 30,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 40,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 50, color: Colors.grey),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                  size: 26,
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            //middle part
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recomended",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Container(
                          height: 28,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            "More",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 160,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: mylist.length,
                          itemBuilder: (contaxt, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () => {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailsDemo(
                                      model: mylist[index],
                                    ),
                                  ))
                                },
                                child: Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12),
                                                topRight: Radius.circular(12)),
                                            child: Image.network(
                                              "${mylist[index].img}",
                                              fit: BoxFit.cover,
                                              height: 100,
                                              width: 150,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("${mylist[index].name}"),
                                            Text(
                                              "${mylist[index].price}",
                                              style:
                                                  TextStyle(color: Colors.teal),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "${mylist[index].country}",
                                        style: TextStyle(color: Colors.teal),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }))
                ],
              ),
            ),
            Expanded(
                flex: 10,
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mylist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    "${mylist[index].img}",
                                    fit: BoxFit.cover,
                                    width: 300,
                                    height: double.infinity,
                                  ))
                            ]),
                          ),
                        );
                      }),
                ))
            //last part
          ],
        ),
      ),
    );
  }
}
