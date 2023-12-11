import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context,) =>
                const[
                      PopupMenuItem(value: '1', child: Text('New Group')),
                      PopupMenuItem(value: '2', child: Text('Setting')),
                      PopupMenuItem(value: '3', child: Text('Log out')),
                    ]),
            const SizedBox(
              width: 10,
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Chats Content')),
            Expanded(child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage('https://i.pinimg.com/236x/47/5a/86/475a86177aeedacf8dc7f5e2b4eff61f.jpg'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('where is my dog'),
                  trailing: Text('7:30 am'),
                );
            })),
            Center(child: Text('Calls Content')),
            Center(child: Text('Settings Content')),
          ],
        ),
      ),
    );
  }
}
