import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});
  @override
  State createState() => _Profile_PageState();
}

class _Profile_PageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.blue.shade200,
        leading: IconButton(
          onPressed: () {}, // Action for back button
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_note_outlined,
                      size: 30,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Edit Profile", // Menu item to edit profile
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings_suggest_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Settings", // Menu item for settings
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.logout_outlined,
                      size: 30,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Logout", // Menu item for logout
                      style: const TextStyle(fontSize: 17, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My account menu is selected.");
            } else if (value == 1) {
              print("Settings menu is selected.");
            } else if (value == 2) {
              print("Logout menu is selected.");
            }
          }),
        ],
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.30,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              width: MediaQuery.of(context).size.width,
              height: 340,
              child: Image.asset(
                "assets/images/humanImage.png", // Background image with opacity
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 269,
              ),
              Container(
                width: 370,
                height: 100,
                margin: const EdgeInsets.all(22),
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 10, right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: const Offset(4, 4), // Shadow effect for container
                    ),
                  ],
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.grey.shade100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/humanImage.png", // Profile image
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello...!", // Welcome message
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "shivam2707", // Username
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {}, // Action for edit button
                      child: const Icon(
                        Icons.edit_note_outlined,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                padding:
                    const EdgeInsets.only(top: 0, bottom: 8, left: 4, right: 4),
                decoration: const BoxDecoration(),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                      const Text(
                        'Name :-', // Display name label
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Shivam Khule', // Display name
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                      const Text(
                        'Email ID :-', // Display email label
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'shivamkhule@gmail.com', // Display email
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                      const Text(
                        'Bio :-', // Bio label
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        '***User Bio***', // Placeholder for user bio
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                      const Text(
                        'Location :-', // Location label
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Maharashra, Pune', // Display location
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: const Row(
                              children: [
                                Text(
                                  'Visit', // Visit location option
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 16),
                                ),
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                      const Text(
                        'Contact :-', // Contact label
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        '+91 801055144', // Display contact number
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 1.2,
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 146,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.blueGrey, Colors.black87],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.my_library_books_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'My Reports', // Button for reports
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 146,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 28, vertical: 6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red.shade300, Colors.red.shade800],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Logout', // Button for logout
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
