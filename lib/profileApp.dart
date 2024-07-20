// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/// need to import assets in pubspec.lock file like,
/// flutter
///   -assets:
///     -assets/imageName.jpg                 ///

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      /// body of Page
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),

        /// start from here
        child: Column(
          children: [
            /// Create Circle Image
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/photo4.jpg',
              ),
            ),
            const SizedBox(height: 20),

            /// Name
            Text(
              "Dhyan Maheshbhai Patel",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),

            /// subtitle
            Text(
              "I Love Flutter Programming. and I like do Programming whole a day",
            ),

            /// List of Content
            Text(
              "Details",
              style: TextStyle(
                  fontSize: 25,
                  leadingDistribution: TextLeadingDistribution.even),
            ),
            Card(
              elevation: 3,
              child: Column(
                children: [
                  /// Birth Day
                  ListTile(
                    leading: Icon(Icons.cake_rounded),
                    title: Text("Birth Date"),
                    subtitle: Text("2002-05-11"),
                  ),

                  /// Website
                  ListTile(
                    leading: Icon(Icons.web_asset),
                    title: Text("WebSite"),
                    subtitle: Text("ABC.com.np"),
                  ),

                  /// Email
                  ListTile(
                    leading: Icon(Icons.email_rounded),
                    title: Text("Email"),
                    subtitle: Text("abc1234@gmail.com"),
                  ),

                  /// Address
                  ListTile(
                    leading: Icon(Icons.location_on_rounded),
                    title: Text("Address"),
                    subtitle: Text("Gujarat, India"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Education",
              style: TextStyle(fontSize: 25),
            ),
            Card(
              elevation: 6,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.business_outlined),
                    title: Text("10th"),
                    subtitle: Text("Sarashwati Vinay Mandir"),
                    trailing: Text("2017"),
                  ),
                  ListTile(
                    leading: Icon(Icons.business_outlined),
                    title: Text("12th"),
                    subtitle: Text("Shadhna Vidhya Mandir"),
                    trailing: Text("2019"),
                  ),
                  ListTile(
                    leading: Icon(Icons.business_outlined),
                    title: Text("Graduation"),
                    subtitle: Text("Silver Oak University"),
                    trailing: Text("2020-2025"),
                  ),
                ],
              ),
            ),

            /// Social Media
            Wrap(
              spacing: 20,
              // runSpacing: 10,
              children: [
                /// Facebook Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook_sharp),
                  color: Colors.blue,
                  tooltip: "FaceBook",
                ),

                ///LinkedIn
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.link),
                  color: Colors.blue,
                  tooltip: "LinkedIn",
                ),

                /// Code
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.code_rounded),
                  tooltip: "GitHub",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
