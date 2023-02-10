class NotificationsModel {
  String userImage;
  String userName;
  String text;
  String time;
  bool isLiked;
  bool isFollow;
  String? likeImage;

  NotificationsModel(this.userImage, this.userName, this.text, this.time,
      {required this.isLiked, required this.isFollow, this.likeImage});
}
