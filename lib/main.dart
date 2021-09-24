import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false, //title waktu layar do minisize
    title: "Contact",
    home: myContact(),
  ));
}

class myContact extends StatelessWidget {
  const myContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Contacts"),
          // leading: Icon(Icons.menu),
          // icon: Icon(Icons.more_vert)
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(
          child: ContactData(),
          color: Colors.red[100],
        ));
  }
}

class ContactData extends StatelessWidget {
  List<Map<String, dynamic>> ContactDataItem = [
    {
      'nama': 'Candra Wulan',
      'email': 'candrawulan@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Dhia Hayyu Syahirah',
      'email': 'syahirah@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Dra Wulanqwertyuk ytrehgkoiu tyhk mnbfghkty',
      'email': 'drawulan@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Sofyatul Maskuroh',
      'email': 'Sofia@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Muhammad Afif',
      'email': 'Afif_dah@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Fitri Dwi',
      'email': 'fitriaaa@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Naufal Zakly',
      'email': 'nopal@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Izaz dhia',
      'email': 'izazaz@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Shintia Anggi',
      'email': 'ShintiAnggi@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
    {
      'nama': 'Deska Dwi',
      'email': 'Dwides@gmail.com',
      'noTlf': '0891380046993',
      'gambar': 'person.jpg',
    },
  ];
  ContactData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactDataItem.sort((a, b) => a["nama"].compareTo(b["nama"]));

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: ContactDataItem.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(1),
            color: Colors.red[50],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('img/${ContactDataItem[index]["gambar"]}'),
                radius: 30,
              ),
              title: Text(("${ContactDataItem[index]['nama']}"),
                  style: TextStyle(
                    fontFamily: 'serif',
                    color: Colors.black,
                  )),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ContactDataItem[index]['email'],
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Colors.blue[300]),
                  ),
                  Text(
                    ContactDataItem[index]['noTlf'],
                    style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              isThreeLine: true,
            ),
          );
        });
  }
}
