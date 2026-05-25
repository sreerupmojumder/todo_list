import 'package:flutter/material.dart';

class ContactCard {
  final String name;
  final String phone;

  const ContactCard({required this.name, required this.phone});

  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 32, color: Colors.brown),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.phone, size: 26, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
