import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/menu/item_hidden_menu.dart';
import 'package:hidden_drawer_menu/hidden_drawer/screen_hidden_drawer.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage ({Key key }) : super (key :key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ScreenHiddenDrawer> itens= new List();

  void initState(){
    itens.add( new ScreenHiddenDrawer(new ItemHiddenMenu(
      name: "Home",
      colorLineSelected: Colors.white,
      baseStyle: TextStyle( color: Colors.white.withOpacity(0.5),fontSize: 25.0 ),
        selectedStyle: TextStyle(color: Colors.grey),

    ),
      Container(
        color: Colors.white,

        child: Center(
          child: Text("Tela 1", style: TextStyle(color: Colors.black,fontSize: 30.0)),
        ),
      )
    ));

    itens.add( new ScreenHiddenDrawer(new ItemHiddenMenu(
      name: "Consultar",
      colorLineSelected: Colors.white,
      baseStyle: TextStyle( color: Colors.white.withOpacity(0.5),fontSize: 25.0 ),
      selectedStyle: TextStyle(color: Colors.grey),

    ),
        Container(
          color: Colors.white,
          child: Center(
            child: Text("Tela 2", style: TextStyle(color: Colors.black,fontSize: 30.0)),
          ),
        )
    ));


    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      initPositionSelected: 0,
      screens: itens,
      backgroundColorMenu:  Colors.black38,
      typeOpen: TypeOpen.FROM_LEFT,
      slidePercent: 80.0,
      verticalScalePercent: 80.0,
      contentCornerRadius: 10.0,
      iconMenuAppBar: Icon(Icons.menu),
      elevationAppBar: 4.0,
      enableShadowItensMenu: true,

    );
  }
}
