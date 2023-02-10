import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/models/post_models.dart';

Widget itemOfPost(BuildContext context, PostModel post) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      children: [
        Stack(
          children: [
            FadeInImage(
              image: AssetImage(post.postImage),
              placeholder: AssetImage('assets/Gentra.jpg'),
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
                child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.black.withOpacity(0.2),
            )),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image(
                            image: AssetImage(post.userImage),
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          post.userName,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          )),
                          builder: (BuildContext context) {
                            return Container(
                              //   decoration: BoxDecoration(
                              //     border: borderRadius: BorderRadius.vertical(
                              //   top: Radius.circular(30),
                              // )
                              //   ),
                              height: MediaQuery.of(context).size.height * 0.5,
                              color: Colors.black87,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.share_outlined,
                                                color: Colors.white,
                                              ),
                                              height: 55,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(70),
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.white)),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Share',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Icon(
                                                  Icons.link,
                                                  color: Colors.white,
                                                ),
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            70),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white)),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Link',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Icon(
                                                  Icons.save,
                                                  color: Colors.white,
                                                ),
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            70),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white)),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Save',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Icon(
                                                  Icons.repeat,
                                                  color: Colors.white,
                                                ),
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            70),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white)),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Remix',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Icon(
                                                  Icons.qr_code_scanner,
                                                  color: Colors.white,
                                                ),
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            70),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white)),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Share',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Divider(
                                      thickness: 0,
                                      color: Colors.white,
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Add to favorites',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person_remove_outlined,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Unfolow',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle_notifications_outlined,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Why you\`re seeing this post',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.language,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'languare',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.not_interested,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Hide',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.message_outlined,
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            'Report',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 255, 0, 0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(children: [
              // TextSpan(
              //     text: '0', style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: 'shokh.ake, mitti.me, dili.me',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: ' и', style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: ' 1234 другие',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(children: [
              TextSpan(
                  text: post.userName,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: post.caption,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ]),
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            alignment: Alignment.topLeft,
            child: Text(
              'Октябрь 22, 2022',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey),
            ))
      ],
    ),
  );
}
