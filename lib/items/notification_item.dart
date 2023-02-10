import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/models/notification_models.dart';

Widget NotificationsItem(BuildContext context, NotificationsModel item) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 80,
    width: MediaQuery.of(context).size.width,
    child: item.isLiked
        ? Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: ClipOval(
                      child: Image.asset(
                        item.userImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 250,
                  child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                              text: item.userName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                            text: item.text,
                          ),
                          TextSpan(
                              text: item.time,
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 40,
                  //padding: EdgeInsets.all(2),
                  child: Image.asset(
                    item.likeImage!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: ClipOval(
                      child: Image.asset(
                        item.userImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 200,
                  child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                              text: item.userName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                            text: item.text,
                          ),
                          TextSpan(
                              text: item.time,
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ],
                      )),
                ),
                item.isFollow
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text(
                          'Подписки',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ))
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {},
                        child: Text(
                          'Подписаться',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
              ],
            ),
          ),
  );
}
