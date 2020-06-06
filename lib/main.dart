import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  MyAppState createState() =>  MyAppState();

}

class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}

Widget show(int index){
//switch(index){
 return NetflixHome();
//  case 0: return NetflixSearch();
//  break;
//  case 0: return NetflixDownloads();
//  break;
//  case 0: return NetflixMore();
//  break;
}
//}

class Home extends StatefulWidget{
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: show(index),
        backgroundColor: Color(0xFF221f1f),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
            onTap: (int x){
            setState(() {
              index = x;
            });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                backgroundColor: Color(0xFF221f1f),
                title: Text('home', style: TextStyle(color: Colors.white),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('search', style: TextStyle(color: Colors.white),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_download),
                  title: Text('downloads', style: TextStyle(color: Colors.white),)
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert),
                  title: Text('more', style: TextStyle(color: Colors.white),)
              ),
            ]
        ),
      ),
    );
  }

}

class NetflixHome extends StatefulWidget{

  NetflixHomeState createState() => NetflixHomeState();

}

class NetflixHomeState extends State<NetflixHome>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF221f1f),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: Image(
                  image: NetworkImage(
                      'https://occ-0-1001-999.1.nflxso.net/dnm/api/v6/XsrytRUxks8BtTRf9HNlZkW2tvY/AAAABUlEBpPB3yrXyMd7L-po9FbhqG6kdEuonqJqVfFYkpjmJcch23ZQizcpcJ0yKjubXcW-K64XFuNRaHbdkcLOUK3Y78IsSB_PIRdZYR8HdUyUo_JQrFff.jpg'
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Color(0xFF221f1f).withOpacity(0.0),
                        Color(0xFF221f1f),
                      ]
                  )
                ),
              ),
              Positioned(
                left: 30.0,
                  top: 50.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Image.network('https://www.searchpng.com/wp-content/uploads/2019/02/Netflix-Icon-PNG-image-715x715.png'),
                  )
              ),
              Positioned(
                left: 130.0,
                top: 60.0,
                child: Text('series', style: TextStyle(color: Colors.white),),
              ),
              Positioned(
                left: 230.0,
                top: 60.0,
                child: Text('series', style: TextStyle(color: Colors.white),),
              ),
              Positioned(
                left: 330.0,
                top: 60.0,
                child: Text('series', style: TextStyle(color: Colors.white),),
              )
            ],
          ),

          Container(
            child: Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 50.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.add, color: Colors.white,),
                    Text('My List', style: TextStyle(color: Colors.white),)
                  ],
                ),),
                Padding(
                  child: Container(
                    width: 60.0,
                    height: 30.0,
                    color: Colors.white,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.play_arrow, color: Colors.black,),
                          Text('Play'),
                        ],
                      ),
                    )
                  ),
                    padding: EdgeInsets.only(left: 80.0) ),
                Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.info, color: Colors.white,),
                      Text('info', style: TextStyle(color: Colors.white),)
                    ],
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(height: 20.0, child: Text('Previews', style: TextStyle(color: Colors.white),),),
          ),
          Container(
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://occ-0-1723-92.1.nflxso.net/dnm/api/v6/0DW6CdE4gYtYx8iy3aj8gs9WtXE/AAAABYykLb9vjRX0q3o_pK7RNEiUmZINI6XgHjT9lwNZ14gkOq5QN3OI4GoOoHsBTGVmk5DjCGS7POdDSeSe0Nb9fEYz4f3QbpK1bKNcBGRXjIae9QWXaeAg.jpg?r=0d2'),
                          radius: 70.0,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          )
                        ),
                      ),
                      Container(width: 20.0,),
                    ],
                  );
                }
            ),
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
    child: Text('Recently Added', style: TextStyle(color: Colors.white),),
    ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Row(
                        children: <Widget>[
                          Container(
//                        padding: EdgeInsets.only(right: 20.0),
                            height: 100.0,
                            width: 100.0,
//                        color: Colors.red,
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgLzkb737U8QkFMoLruhH4W1GQeVRUyPOBBIGuQSDvv9wdWIYm'),
                          ),
                          Container(width: 10.0,),
                        ],
                      );
                    }
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text('Trending Now', style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Row(
                        children: <Widget>[
                          Container(
//                        padding: EdgeInsets.only(right: 20.0),
                            height: 100.0,
                            width: 100.0,
//                        color: Colors.red,
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgLzkb737U8QkFMoLruhH4W1GQeVRUyPOBBIGuQSDvv9wdWIYm'),
                          ),
                          Container(width: 10.0,),
                        ],
                      );
                    }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}