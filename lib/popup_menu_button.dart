import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class HomePagePopupMenuButton extends StatefulWidget {
  const HomePagePopupMenuButton({Key? key}) : super(key: key);

  @override
  State<HomePagePopupMenuButton> createState() => _HomePagePopupMenuButtonState();
}

class _HomePagePopupMenuButtonState extends State<HomePagePopupMenuButton> {
  final userIDController=TextEditingController();
  final groupNameController=TextEditingController();
  final groupUsersController=TextEditingController();
  final groupIDController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
        position: PopupMenuPosition.under,
        icon: const Icon(CupertinoIcons.add_circled),
        itemBuilder: (context){
        return [
          PopupMenuItem(
            value: 'New chat',
              child: const ListTile(
                leading: Icon(CupertinoIcons.chat_bubble_2_fill),
                title: Text('New chat',maxLines: 1,),),
              onTap: ()=>ZIMKit().showDefaultNewPeerChatDialog(context),
          ),
          PopupMenuItem(
            value: 'New group',
            child: const ListTile(
              leading: Icon(CupertinoIcons.person_2_fill),
              title: Text('New group',maxLines: 1,),),
            onTap: ()=>ZIMKit().showDefaultNewPeerChatDialog(context),
          ),
          PopupMenuItem(
            value: 'join group',
            child: const ListTile(
              leading: Icon(Icons.group_add),
              title: Text('Join group',maxLines: 1,),),
            onTap: ()=>ZIMKit().showDefaultNewPeerChatDialog(context),
          ),
        ];
        },
        );
  }
}
