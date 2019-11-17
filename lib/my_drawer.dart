import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          InkWell(
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
                    Text("Avinash Kumar", style: TextStyle(color: Colors.black,fontSize: 18.0)),
                    Text("avinash.mindiii@gmail.com")
                  ],
                ),
              ),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("Home clicked"),)
              );
            },
            selected: true,
          ),
          ListTile(
            title: Text("History"),
            leading: Icon(Icons.history),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("History clicked"),)
              );
            },
          ),
          ListTile(
            title: Text("Account"),
            leading: Icon(Icons.account_circle),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Account clicked"),)
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Share"),
            leading: Icon(Icons.share),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Share clicked"),)
              );
            },
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("About clicked"),)
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.exit_to_app),
            onTap:(){
              Navigator.pop(context);
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("You are logged out"),)
              );
            },
          ),
        ],
      ),
    );
  }
}
