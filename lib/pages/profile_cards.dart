import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String jobRole;
  final int popularity;
  final int rank;
  final int likeCount;
  final int followerCount;
  final Color containerColor; // New parameter for container color

  ProfileContainer({
    required this.profileImageUrl,
    required this.name,
    required this.jobRole,
    required this.popularity,
    required this.rank,
    required this.likeCount,
    required this.followerCount,
    required this.containerColor, // Added required parameter
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Stack( // Wrap the Container content with a Stack
        children: [
          Container(
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(profileImageUrl),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(jobRole, style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('$popularity', style: TextStyle(color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Popularity:', style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('$likeCount', style: TextStyle(color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Likes:', style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('$followerCount', style: TextStyle(color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Followers:', style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Positioned widget should be inside the Stack
          Positioned(
            right: 7.0,
            top: 40.0, // Adjust this value to position the rank column vertically
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$rank',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text('Rank:', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}