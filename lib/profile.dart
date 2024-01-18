import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Color(0xff6495ed),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 4)),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Gracia Tya",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(top: 240, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Edit Profile Name",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.list,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "List Project",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Change Password",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Change Email Address",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Settings",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Prefences",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 25,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.red),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: Colors.red,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
