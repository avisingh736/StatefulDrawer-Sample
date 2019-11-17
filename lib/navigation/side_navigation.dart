import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  int _selectedIndex = 0;

  @override
  State<StatefulWidget> createState() {
    return NavigationDrawerState();
  }
}

class NavigationDrawerState extends State<NavigationDrawer> {
  final _drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("History", Icons.history),
    DrawerItem("Account", Icons.account_circle),
    DrawerItem("Devider", null, true),
    DrawerItem("Share", Icons.share),
    DrawerItem("About", Icons.info),
    DrawerItem("Devider", null, true),
    DrawerItem("Logout", Icons.exit_to_app)
  ];

  @override
  Widget build(BuildContext context) {
    var drawerMenus = <Widget>[];
    drawerMenus.add(InkWell(
      child: DrawerHeader(
        margin: EdgeInsets.only(top: 16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/img_flutter.jpg")
                    )
                ),
              ),
              Text("Avinash Kumar", style: TextStyle(fontSize: 18.0)),
              Text("avinash.mindiii@gmail.com")
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.pop(context);
      },
    ));
    for (int i = 0; i < _drawerItems.length; i++) {
      if (_drawerItems[i].isDivider) {
        drawerMenus.add(Divider());
      } else {
        drawerMenus.add(ListTile(
          title: Text(_drawerItems[i].title),
          leading: Icon(_drawerItems[i].icon),
          selected: i == widget._selectedIndex,
          onTap: (){
            _onMenuSelected(i);
            _showSnackBar(_drawerItems[i].title);
          },
        ));
      }
    }
    return Drawer(
      child: ListView(
        children: drawerMenus,
      ),
    );
  }

  void _onMenuSelected(int index) {
    setState(() {
      widget._selectedIndex = index;
      Navigator.pop(context);
    });
  }

  void _showSnackBar(String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$text clicked")));
  }
}

class DrawerItem {
  String title;
  IconData icon;
  bool isDivider;

  DrawerItem(this.title, this.icon, [this.isDivider = false]);
}
