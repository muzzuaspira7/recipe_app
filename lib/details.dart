import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailsPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F0C),
      appBar: AppBar(
        title: Text(
          data['Name'] ?? "Details",
          style: TextStyle(
              fontSize: 18, fontFamily: "Cinzel", fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF110F0C),
      ),
      body: Center(
        child: Container(
          height: 1000,
          width: double.infinity,
          color: Color(0xFF110F0C),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(data['Image'] ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    data['Name'] ?? "Default Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0BBBF2),
                      fontSize: 35,
                      fontFamily: "Cinzel",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Text(
                              data['Paragraph'] ?? "Default Description",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: "Lora",
                                  letterSpacing: 0.5,
                                  wordSpacing: 2),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
