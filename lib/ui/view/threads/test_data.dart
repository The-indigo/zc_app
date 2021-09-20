import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hng/app/app.locator.dart';
import 'package:hng/models/user_post.dart';
import 'package:hng/ui/shared/colors.dart';
import 'package:hng/ui/view/threads/widgets/emojis.dart';
import 'package:hng/utilities/enums.dart';
import 'package:stacked_services/stacked_services.dart';

final _bottomSheetService = locator<BottomSheetService>();

Future viewProfile() async {
  var sheetResponse = await _bottomSheetService.showCustomSheet(
    variant: BottomSheetType.user,
    isScrollControlled: true,
  );
}

List<UserThreadPost> thread1 = [
  UserThreadPost(
    id: 1,
    displayName: "PrincessLiz",
    statusIcon: Icons.looks_6,
    lastSeen: "4 hours ago",
    userImage: "assets/images/chimamanda.png",
    message: TextSpan(
        text: "Are you in team Socrates?",
        style: TextStyle(color: AppColors.deepBlackColor)),
  ),
  UserThreadPost(
      id: 2,
      displayName: "PrincessLiz",
      statusIcon: Icons.looks_6,
      userImage: "assets/images/chimamanda.png",
      lastSeen: "4 hours ago",
      message: TextSpan(
        text: "@Blazebrain",
        style: TextStyle(color: Colors.blueAccent),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            viewProfile();
          },
      )),
];

List<UserThreadPost> thread2 = [
  UserThreadPost(
      id: 3,
      displayName: "PrincessLiz",
      statusIcon: Icons.looks_6,
      lastSeen: "4 hours ago",
      userImage: "assets/images/chimamanda.png",
      message: TextSpan(
          text: "I am fine. You?",
          style: TextStyle(color: AppColors.deepBlackColor))),
  UserThreadPost(
      id: 4,
      displayName: "Dee",
      statusIcon: Icons.looks_6,
      userImage: "assets/images/chimamanda.png",
      lastSeen: "4 hours ago",
      message: TextSpan(
          text: "How are You",
          style: TextStyle(color: AppColors.deepBlackColor))),
];

List<PostEmojis> postEmoji1 = [
  PostEmojis(id: 1, postEmoji: "😀", postEmojiCount: 3, hasReacted: false),
  PostEmojis(id: 2, postEmoji: "😀", postEmojiCount: 3, hasReacted: false),
  PostEmojis(id: 3, postEmoji: "😀", postEmojiCount: 3, hasReacted: false),
  PostEmojis(id: 4, postEmoji: "😀", postEmojiCount: 1, hasReacted: true),
];
List<PostEmojis> postEmoji2 = [
  PostEmojis(id: 5, postEmoji: "😀", postEmojiCount: 2),
];

List<UserPost> userPost = [
  UserPost(
    id: 5,
    displayName: "Nonso",
    userImage: "assets/images/chimamanda.png",
    statusIcon: Icons.looks_6,
    lastSeen: "4 hours ago",
    message: TextSpan(
        text: "Designers and Developers in Mega...",
        style: TextStyle(color: AppColors.deepBlackColor)),
    postEmojis: postEmoji1,
    userThreadPosts: thread1,
    channelType: ChannelType.private,
    channelName: "team-app",
  ),
  UserPost(
    id: 6,
    displayName: "Dee",
    userImage: "assets/images/chimamanda.png",
    statusIcon: Icons.looks_6,
    lastSeen: "4 hours ago",
    message: TextSpan(
        text: "How are you", style: TextStyle(color: AppColors.deepBlackColor)),
    postEmojis: postEmoji2,
    userThreadPosts: thread2,
    channelType: ChannelType.personal,
    channelName: "Dee",
  ),
  UserPost(
    id: 7,
    displayName: "Mark",
    userImage: "assets/images/chimamanda.png",
    statusIcon: Icons.looks_6,
    lastSeen: "4 hours ago",
    message: TextSpan(
        text: "Fire on the MOUNTAINNNNN!!!!!, Run, Run Run, Runnnnnn",
        style: TextStyle(color: AppColors.deepBlackColor)),
    channelType: ChannelType.public,
    channelName: "Announcement",
    postEmojis: <PostEmojis>[],
  ),
];
