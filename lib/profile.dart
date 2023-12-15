import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    var ArrProfile = [
      '80982589025',
      'muz4578@gmail.com',
      'Payment',
      'Settings and Privacy'
    ];
    var ProfileIcon = [
      Icon(Icons.call),
      Icon(Icons.email),
      Icon(Icons.payment),
      Icon(Icons.settings)
    ];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF110F0C),
          title: const Text(
            "Profile",
            style: TextStyle(fontFamily: 'Cinzel', fontWeight: FontWeight.bold),
          )),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                // color: Color.fromARGB(255, 49, 155, 207),
                color: Color.fromARGB(255, 26, 26, 26)),
            height: 290,
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 200,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/arjundas.jpg'),
                  ),
                ),
                const Text(
                  "Arjun Das",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lora'),
                ),
                const Text(
                  "Actor, Chef, Entertainer",
                  style: TextStyle(
                      fontSize: 18, color: Colors.white, fontFamily: 'Lora'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Color(0xFF110F0C),
            height: 350,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: ProfileIcon[index],
                  iconColor: Colors.blue,
                  title: Text(
                    ArrProfile[index],
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontFamily: 'Lora'),
                  ),
                );
              },
              itemCount: ArrProfile.length,
              separatorBuilder: (context, index) {
                return Divider(); // Adjust height and thickness if necessary
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Log Out",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 20, fontFamily: 'Lora'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
