import 'package:flutter/material.dart';
import 'package:flutter_rest_api/model/user.dart';
import 'package:flutter_rest_api/services/user_services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users= [];
  @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Rest Api Call"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final user = users[index];
           final email = user.email;
          //  final color = user.gender == 'male' ? Colors.blue : Colors.pinkAccent;
          // final name = user['name']['first'];
          // final email = user['email'];
          // final imageUrl = user['picture']['thumbnail'];
          return ListTile(
            // leading: CircleAvatar(child: Text('${index+ 1}')),
          /*   leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(imageUrl)),
            title: Text(name), */
            // subtitle:Text(email) ,
          title: Text(user.fullName),
          subtitle: Text(user.location.postcode),
          // subtitle: Text(user.phone),
          // subtitle: Text(user.phone),
          // tileColor: color,
          );
        }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed:fetchUsers,
      
      // ),

    );
  }
  Future<void> fetchUsers()async{
    final response =await UserApi.fetchUsers();
    setState(() {
      users = response ;
    });
  }
  /* Future<void> fetchUsers() async {
    print("fetchUsers called");
   
    const url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
  final response =  await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body); 
  final results = json['results'] as List<dynamic>;
  final transformed = results.map((e) {
    final name = UserName(
      title:  e['name']['title'], 
      first: e['name']['first'],
      last: e['name']['last'],
    );
    return User(
      gender: e['gender'], 
      email: e['email'], 
      phone: e['phone'], 
      cell: e['cell'], 
      nat: e['nat'],
      name: name,
      );
  }).toList();
  // setState(() {
  //    users = json['results']; 
  // });
  setState(() {
     users = transformed; 
  });
   print("fetchUsers completed");
  }*/
} 