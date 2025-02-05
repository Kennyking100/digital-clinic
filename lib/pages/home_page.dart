import 'package:flutter/material.dart';
import 'package:digital_clinic/reusables/bottom_navbar.dart';
import 'package:digital_clinic/pages/profile_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showAllDoctors = false;
  bool showAddDoctorsFirst = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(Icons.search, size: 30, color: Color.fromRGBO(106, 121, 213, 1.0)),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.location_on_outlined, size: 30, color: Color.fromRGBO(106, 121, 213, 1.0)),
                onPressed: () {},
              ),
            ],
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 24.0),
              labelColor: Color.fromRGBO(106, 121, 213, 1.0),
              unselectedLabelColor: Color.fromRGBO(106, 121, 213, 1.0).withOpacity(0.5),
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(106, 121, 213, 1.0),
                    width: 5.0,
                  ),
                ),
              ),
              onTap: (index) {
                setState(() {
                  showAllDoctors = false;
                  showAddDoctorsFirst = false;
                });
                if (index == 0) {
                  showAllDoctors = true;
                } else if (index == 1) {
                  showAddDoctorsFirst = true;
                }
              },
              tabs: [
                Tab(text: "All Doctors"),
                Tab(text: "My Doctors"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            showAllDoctors
                ? SingleChildScrollView(
              child: Column(
                children: [
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 1",
                    jobRole: "Cardiologist",
                    popularity: 100,
                    rank: 1,
                    likeCount: 200,
                    followerCount: 300,
                    containerColor: Colors.blue,
                  ),
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 2",
                    jobRole: "Surgeon",
                    popularity: 150,
                    rank: 2,
                    likeCount: 250,
                    followerCount: 350,
                    containerColor: Colors.green, // Example color
                  ),
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 1",
                    jobRole: "Cardiologist",
                    popularity: 100,
                    rank: 1,
                    likeCount: 200,
                    followerCount: 300,
                    containerColor: Colors.blue,
                  ),
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 2",
                    jobRole: "Surgeon",
                    popularity: 150,
                    rank: 2,
                    likeCount: 250,
                    followerCount: 350,
                    containerColor: Colors.green, // Example color
                  ),
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 1",
                    jobRole: "Cardiologist",
                    popularity: 100,
                    rank: 1,
                    likeCount: 200,
                    followerCount: 300,
                    containerColor: Colors.blue,
                  ),
                  ProfileContainer(
                    profileImageUrl: "url",
                    name: "Doctor 2",
                    jobRole: "Surgeon",
                    popularity: 150,
                    rank: 2,
                    likeCount: 250,
                    followerCount: 350,
                    containerColor: Colors.green, // Example color
                  ),
                  // Add more ProfileContainer widgets for other doctors
                ],
              ),
            )
                : Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAllDoctors = true;
                  });
                },
                child: Text("Show All Doctors"),
              ),
            ),
            showAddDoctorsFirst
                ? Center(
              child: Text("Please add doctors first"),
            )
                : ElevatedButton(
              onPressed: () {
                setState(() {
                  showAddDoctorsFirst = true;
                });
              },
              child: Text("Show Add Doctors First"),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
