import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/Models/CourseModel.dart';
import 'package:flutter_task/Services/CourseServices.dart';

class CourseTask extends StatefulWidget {
  @override
  _CourseTaskState createState() => _CourseTaskState();
}
class _CourseTaskState extends State<CourseTask> {
  CourseServices services=new CourseServices();

  @override
  void initState() {
    setState(() {
      services.getCourse();

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CourseModel>(
      future: services.getCourse(),
      builder: (context,snapshot){
        if(snapshot.hasError){
          return Center(child: Text(snapshot.error),);
        }
        else if(snapshot.hasData){
          if(snapshot.data!=null){
            return  Scaffold(
              body: ListView(
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Carousel(
                          images: [
                            Image.network(snapshot.data.img[0].toString().replaceAll("https", "http"),
                              fit: BoxFit.fill,
                            ),
                            Image.network(
                              snapshot.data.img[1].toString().replaceAll("https", "http"),            fit: BoxFit.fill,
                            ),
                            Image.network(
                              snapshot.data.img[2].toString().replaceAll("https", "http"),                fit: BoxFit.fill,
                            ),
                          ],
                          autoplay: false,
                          dotSize: 4,
                          dotColor: Colors.white,
                          boxFit: BoxFit.none,
                        )                        ,
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.share, color: Colors.white),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      snapshot.data.isLiked?Icons.star:Icons.star_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("#"+snapshot.data.interest,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "${snapshot.data.title}  ",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.date_range),
                            SizedBox(
                              width: 12,
                            ),
                            Text("${snapshot.data.date}  ")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.pin_drop),
                            SizedBox(
                              width: 12,
                            ),
                            Text("${snapshot.data.address}  ")
                          ],
                        ),
                        SizedBox(
                          child: Divider(
                            thickness: 2,
                            height: 10,
                          ),
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              child: Image.network(
                                  "${snapshot.data.trainerImg.toString().replaceAll("https", "http")}  "),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "${snapshot.data.trainerName}  ",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "${snapshot.data.trainerInfo}  "),
                        SizedBox(
                          child: Divider(
                            thickness: 2,
                            height: 10,
                          ),
                          height: 20,
                        ),
                        Text(
                          "عن الدورة  ",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                            "${snapshot.data.occasionDetail}  "),
                        SizedBox(
                          child: Divider(
                            thickness: 2,
                            height: 10,
                          ),
                          height: 20,
                        ),
                        Text(
                          "تكلفة الدورة ",
                          style: TextStyle(fontSize: 20),
                        ),
                        Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                                children: [Text("${snapshot.data.reservTypes[0]["name"]}  "), Text("${snapshot.data.reservTypes[0]["price"]}  ")])
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: BottomAppBar(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "قم بالحجز الان ",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.purple,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }else{
            return Center(child:Text("No data for now"));
          }
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
