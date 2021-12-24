import 'package:contactapp/views/contacts_info.dart';
import 'package:flutter/material.dart';
import 'package:contactapp/views/add_contact.dart';

class ContactsLists extends StatelessWidget {
  const ContactsLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('My Contacts', style: TextStyle(fontSize: 24)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/DP1.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.9),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search by name or number',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(22))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 22),
                      child: Text(
                        'Recents',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Jane Doe',
                  number: '+233 123 763 732',
                  imageName: 'dp2.jpg',
                ),
                const ContactTile(
                  name: 'Jane Doe',
                  number: '+233 123 356 467',
                  imageName: 'dp3.jpg',
                ),
                const ContactTile(
                  name: 'Sarah Smith',
                  number: '+233 123 047 374',
                  imageName: 'dp4.jpg',
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 22, top: 22),
                      child: Text(
                        'Contacts',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40, top: 8),
                      child: Text(
                        'A',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp5.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp6.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp7.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp8.jpg',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40, top: 8),
                      child: Text(
                        'B',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp8.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp8.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp8.jpg',
                ),
                const ContactTile(
                  name: 'Seth Robert',
                  number: '+233 123 346 846',
                  imageName: 'dp8.jpg',
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const NewContact(),
          ));
        },
        child: const Icon(
          Icons.add_circle_outline_sharp,
          size: 56,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromRGBO(26, 74, 218, 1),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String imageName;
  final String? name;
  final String? number;

  const ContactTile({
    Key? key,
    required this.imageName,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ContactsInfo(),
        ));
      },
      child: Card(
        child: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/' + imageName),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.toString(),
                  ),
                  Text(number.toString())
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
            const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_horiz,
                  size: 32,
                ))
          ],
        ),
      ),
    );
  }
}
