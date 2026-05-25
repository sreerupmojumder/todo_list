import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/contact_card.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  List<ContactCard> contacts = [
    ContactCard(name: 'John Doe', phone: '+1 234 567 890'),
    ContactCard(name: 'Jane Smith', phone: '+1 987 654 321'),
    ContactCard(name: 'Alice Johnson', phone: '+1 555 123 456'),
    ContactCard(name: 'Bob Brown', phone: '+1 444 789 012'),
    ContactCard(name: 'Charlie Davis', phone: '+1 333 456 789'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contact List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //card
              Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {
                      if (nameController.text.isNotEmpty &&
                          phoneController.text.isNotEmpty) {
                        setState(() {
                          contacts.add(
                            ContactCard(
                              name: nameController.text,
                              phone: phoneController.text,
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Contact Added!'),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 2),
                            ),
                          );

                          nameController.clear();
                          phoneController.clear();
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please fill all fields!'),
                            backgroundColor: Colors.red,
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                    child: Text('Add', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Expanded(
                child: ListView.builder(
                  itemCount: contacts.length,

                  itemBuilder: (context, index) => Container(
                    child: ContactCard(
                      name: contacts[index].name,
                      phone: contacts[index].phone,
                    ).build(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
