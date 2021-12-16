import 'package:flutter/material.dart';
import 'package:contactapp/views/contacts_lists.dart';

class ContactsInfo extends StatelessWidget {
  const ContactsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //APPBAR
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContactsLists(),
                  ));
                },
                icon: const Icon(Icons.arrow_back_ios)),
            title: const Text('Contacts'),
            actions: const <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert),
              )
            ]),

        //BODY
        body: SingleChildScrollView(
          child: Column(
            children: [
              //picture and name
              Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('assets/images/DP1.jpg'),
                    ),
                    //CONTACT NAME
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 5),
                      child: Text(
                        'Marvin Lartey',
                        softWrap: false,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      'Accra, Ghana',
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              //CONTACT NUMBER
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 22, top: 11),
                          child: const Text(
                            'Mobile',
                            softWrap: false,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 22, top: 11, bottom: 11),
                          child: const Text(
                            '+233 123 456 789',
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(143, 145, 147, 1)),
                          ),
                        ),
                      ],
                    ),
                    //SPACE
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.39,
                    ),
                    //BUTTONS
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(99.0)),
                          ),
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.message_rounded,
                                  color: Colors.black)),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(99.0)),
                          ),
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.call, color: Colors.black),
                            iconSize: 19,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //CONTACT EMAIL
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 11),
                          child: const Text(
                            'Email',
                            softWrap: false,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 22, top: 11, bottom: 11),
                          child: const Text(
                            'johndoe@gmail.com',
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(143, 145, 147, 1)),
                          ),
                        ),
                      ],
                    ),
                    //SPACE
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.49,
                    ),
                    //BUTTON
                    const Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22.0)),
                      ),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        iconSize: 19,
                      ),
                    )
                  ],
                ),
              ),
              //CONTACT GROUP
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 11, left: 44),
                          child: const Text(
                            'Group',
                            softWrap: false,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 11, bottom: 11),
                          child: const Text(
                            'Friends',
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(143, 145, 147, 1)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Accounts Linked',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
              //TELEGRAM
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 22, left: 33, bottom: 22),
                          child: const Text(
                            'Telegram',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //SPACE
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.63,
                    ),
                    //BUTTON
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      backgroundImage:
                          AssetImage('assets/images/telegramicon.jpg'),
                    ),
                  ],
                ),
              ),

              //WHATSAPP ACCOUNT
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 22, left: 33, bottom: 22),
                          child: const Text(
                            'Whatsapp',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //SPACE
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.62,
                    ),
                    //BUTTON
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.blue,
                      backgroundImage:
                          AssetImage('assets/images/whatsappicon.jpg'),
                    ),
                  ],
                ),
              ),

              Row(children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ' More Options',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 22, left: 33, bottom: 22),
                  child: const Text(
                    'Share Contact',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color.fromRGBO(235, 239, 242, 1),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 22, left: 33, bottom: 22),
                  child: const Text(
                    ' QR Code',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
