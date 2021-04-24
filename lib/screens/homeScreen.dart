import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var imageProfile = [
  "images/userProfile.jpeg",
  "images/userProfile.jpeg",
  "images/userProfile.jpeg"
];
var listOfImages = [
  "images/image1.jpg",
  "images/image2.webp",
  "images/image3.webp",
];
var listOfName = ["Jack", "Tom", "Eric"];
var listOfLastname = ["Rami", "Hardy", "Sandi"];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Container(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          if (snapshot.hasError) {
            return Center(
              child: Container(
                child: Text("متاسفانه خطایی رخ داده است"),
              ),
            );
          } else {
            return Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  title: Text(
                    "Technical Test",
                    style: TextTheme().headline1,
                  ),
                ),
                body: Stack(children: [
                  Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          margin: EdgeInsets.only(
                              top: 15.0, right: 15.0, left: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Theme.of(context).backgroundColor,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: Theme.of(context).textTheme.bodyText2,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 15.0, right: 15.0, left: 15.0),
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: listOfName.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 6,
                                            spreadRadius: 2,
                                          ),
                                        ]),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Flexible(
                                                  flex: 1,
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                                                    child: Image.asset(
                                                      imageProfile[index],
                                                      height: 70,
                                                      width: 70,
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.only(top: 10.0, right: 10.0),
                                                    child: Text(
                                                        listOfName[index],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1),
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 1,
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.only(top: 10.0),
                                                    child: Text(
                                                        listOfLastname[index],
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            color: Colors.red,
                                            margin: EdgeInsets.all(10.0),
                                            child: FittedBox(
                                              fit: BoxFit.fill,
                                              child: Image.asset(
                                                listOfImages[index],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.black45,
                                          )),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                child: Icon(
                                                  Icons.comment,
                                                  color: Colors.black38,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  height: 50,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "comment",
                                                      hintStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .bodyText2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: null,
                                                child: Text(
                                                  "Post",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20,
                                                  )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }
        }
      },
    );
  }
}
