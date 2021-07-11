import 'package:facebook_clone/models/newfeed_model.dart';
import 'package:flutter/material.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lstNewfeed.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 2, bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage:
                          NetworkImage(lstNewfeed[index].profileUrl),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(lstNewfeed[index].fullName),
                        Row(
                          children: [
                            Text(lstNewfeed[index].date),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.public),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(lstNewfeed[index].caption),
              ),
              SizedBox(
                height: 10,
              ),
              Image(image: NetworkImage(lstNewfeed[index].photo)),
            ],
          );
        });
  }
}
