import 'package:instagram/models/notification_models.dart';
import 'package:instagram/models/post_models.dart';
import 'package:instagram/models/story_models.dart';

List<StoryModel> storiesList = [
  StoryModel('assets/dili.me.jpg', 'dili.me'),
  StoryModel(
    'assets/mitti.me.jpg',
    'mitti.me',
  ),
  StoryModel(
    'assets/shokh.ake.jpg',
    'shokh.ake',
  ),
  StoryModel(
    'assets/doniyorkayumov1.webp',
    'doniyorkayumov1',
  ),
  StoryModel('assets/jamshid.jpg', 'jamshid___11', isSeen: true),
  StoryModel('assets/Gentra.jpg', 'mister_farhod_uzb', isSeen: true),
];

final List<PostModel> posts = [
  PostModel(
      userName: "mister_farhod_uzb",
      userImage: 'assets/Gentra.jpg',
      postImage: 'assets/Farhod.jpg',
      caption: ' UZB😎'),
  PostModel(
      userName: "jamshid___11",
      userImage: 'assets/jamshid.jpg',
      postImage: 'assets/Jamshidbek.jpg',
      caption: ' 01 C 555 CB'),
  PostModel(
      userName: "diyorbek_uzb_dima",
      userImage: 'assets/diyorbek_uzb.jpg',
      postImage: 'assets/diyorbek.jpg',
      caption: ' UZB DIMA😅'),
];

List<NotificationsModel> notificationsList = [
  NotificationsModel(
    'assets/shokh.ake.jpg',
    'shokh.ake',
    ' подписался(-ась) на ваши обновление.',
    ' 39 секунд',
    isLiked: false,
    isFollow: true,
  ),
  NotificationsModel(
    'assets/doniyorkayumov1.webp',
    'doniyorkakyumov1',
    ' подписался(-ась) на ваши обновление.',
    '2 часа',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/dili.me.jpg',
    'dili.me',
    ' подписался(-ась) на ваши обновление.',
    ' 7 часа',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/mitti.me.jpg',
    'mitti.me',
    ' подписался(-ась) на ваши обновление.',
    ' 1 секунд',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/durdona_qurbonova.jpeg',
    'durdona_qurbonova',
    ' подписался(-ась) на ваши обновление.',
    '10 неделя',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
      'assets/shavkat_mirziyoyev.jpg',
      'shavkat_mirziyoyev, otabekumarov и 127 другие ',
      'нравится ваша публикация',
      '10 минут',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/Farhod.jpg'),
  NotificationsModel('assets/otabek_umarov.jpg', 'otabekumarov',
      ' нравится ваша публикация', ' 59 секунд',
      isFollow: false, isLiked: true, likeImage: 'assets/jamshid.jpg'),
  NotificationsModel('assets/mahmud_muradov.jpg', 'mahmud_muradov ',
      ' нравится ваша публикация', ' 45 минут',
      isFollow: false, isLiked: true, likeImage: 'assets/Gentra.jpg'),
  NotificationsModel('assets/shokh.ake.jpg', 'shokh.ake shaxzod.a001 и другие',
      ' нравится ваша публикация', ' 8 минут',
      isFollow: false, isLiked: true, likeImage: 'assets/diyorbek.jpg'),
];
