import 'package:flutter/material.dart';
import 'package:seccion5/colors.dart';
import 'package:seccion5/styles.dart';
import 'package:seccion5/user.dart';
//import 'package:seccion5/colors.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<UserModel> users = [
    UserModel(
        image: 'assets/1.jpg',
        name: 'Omnia Sirelkhatim',
        lastmessage: 'hi how r u doing!!!?',
        time: '1:00 am'),
    UserModel(
        image: 'assets/2.jpeg',
        name: 'Odai zain',
        lastmessage: 'hi how r u doing!!!?',
        time: '12:00 am'),
    UserModel(
        image: 'assets/3.jpg',
        name: 'Israa Osama',
        lastmessage: 'hi how r u doing!!!?',
        time: '10:00 pm'),
    UserModel(
        image: 'assets/4.jpg',
        name: 'Aseel Zeyad',
        lastmessage: 'hi how r u doing!!!?',
        time: '9:00 pm'),
    UserModel(
        image: 'assets/5.jpg',
        name: 'Noon Hatim',
        lastmessage: 'hi how r u doing!!!?',
        time: '4:00 pm'),
    UserModel(
        image: 'assets/6.jpg',
        name: 'Mohamed Sirelkhatim',
        lastmessage: 'hi how r u doing!!!?',
        time: '5:00 pm'),
    UserModel(
        image: 'assets/7.jpg',
        name: 'Menatallah Mamoun',
        lastmessage: 'hi how r u doing!!!?',
        time: '1:00 pm'),
    UserModel(
        image: 'assets/8.jpg',
        name: 'Amani Sirelkhatim',
        lastmessage: 'hi how r u doing!!!?',
        time: '1:00 pm'),
    UserModel(
        image: 'assets/9.jpg',
        name: 'Anwar slah',
        lastmessage: 'hi how r u doing!!!?',
        time: '2:00 pm'),
    UserModel(
        image: 'assets/10.jpg',
        name: 'Ahmed Hisham',
        lastmessage: 'hi how r u doing!!!?',
        time: '1:00 pm'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          elevation: 0,
          title: Text('Chats',
              style: getTitleStyle(color: Colors.white, fontSize: 30)),
          backgroundColor: Colors.indigo,
          actions: [
            const Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favourite Contacts',
                    style: getTitleStyle(color: AppColors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(users[index].image),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                users[index].name.split(' ').first,
                                style: getTitleStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: users.length),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(users[index].image),
                          ),
                          title: Text(users[index].name),
                          subtitle: Text(users[index].lastmessage),
                          trailing: Text(users[index].time),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: users.length)),
            )
          ],
        ),
      ),
    );
  }
}
