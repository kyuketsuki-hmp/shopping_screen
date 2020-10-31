import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  var _brandItems = [
    "Discover brand",
    "Ralph Lauren Corporation",
    "Hugo Boss",
    "Gucci",
    "Prada",
    "Dolce & Gabbana",
    "Tom Ford",
    "Levi Strauss & Co",
    "Christian Dior",
    "Armani Exchange"
  ];
  List<DropdownMenuItem> brandItems = [];
  String selectedBrand;

  @override
  void initState() {
    super.initState();
    selectedBrand = _brandItems.first;
    brandItems = _brandItems
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeightNavItem = 350.0;
    //final screenHeightNavItem = (MediaQuery.of(context).size.height / 2);

    var brandDropdownButton = DropdownButton(
      style: TextStyle(
          color: Colors.grey, fontFamily: 'SFProDisplay-Bold', fontSize: 17),
      value: selectedBrand,
      items: brandItems,
      onChanged: (value) {
        selectedBrand = value; //keep what user selected
        setState(() {});
      },
    );

    final _bottomNavigationBarPages = [
      Scaffold(
          body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                          //color: Colors.red,
                          width: screenWidth,
                          //height: screenHeightNavItem,
                          height: 316,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/a.png"))),
                          child: SingleChildScrollView(
                              child: Column(
                            children: <Widget>[
                              SizedBox(height: 130),
                              Image.asset("images/b.png"),
                              Text("Supreme",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: "SFProDisplay-Bold")),
                              Text("Summer 17",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: "SFProDisplay-Bold")),
                              brandDropdownButton
                            ],
                          ))),
                      // Container(
                      //   //color: Colors.red,
                      //   width: screenWidth,
                      //   height: screenHeightNavItem,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           image: AssetImage("images/a1.png"))),
                      //   //child: Center(
                      //   //  child: Text(
                      //   //    "Red , scroll left or right for other color")),
                      // ),
                    ],
                  ), //End Of First Part
                  Row(
                    children: [
                      // Container(
                      //   width: screenWidth,
                      //   height: 25,
                      //   color: Colors.green,
                      // )
                      Text("Categories",
                          style: TextStyle(
                              fontSize: 15, fontFamily: "SFProDisplay-Bold")),
                      SizedBox(
                        width: 200,
                      ),
                      Text("Show all",
                          style: TextStyle(
                              fontSize: 15, fontFamily: "SFProDisplay-Bold")),
                      IconButton(
                        icon: new Icon(Icons.arrow_right),
                        highlightColor: Colors.green,
                        onPressed: () {},
                      )
                    ],
                  ), //Categories & Show all
                  Container(
                    width: screenWidth,
                    //height: screenHeightNavItem / 5,
                    height: 83,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Image.asset(
                                          "images/c.png",
                                          fit: BoxFit.contain,
                                          width: 70,
                                        ))),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Container(
                                            child: SingleChildScrollView(
                                                child: Column(
                                          children: <Widget>[
                                            Text("Jackets & coats",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 17,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            Text("664 items",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 13,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            OutlineButton(
                                              child: Text("View",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "SFProDisplay-Bold",
                                                    fontSize: 15,
                                                  )),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              onPressed: () {},
                                            )
                                          ],
                                        ))))),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Text("          ",
                                          style: TextStyle(
                                              //color: Colors.white,
                                              fontSize: 17,
                                              fontFamily: "SFProDisplay-Bold")),
                                      // Image.asset(
                                      //   "images/c.png",
                                      //   fit: BoxFit.contain,
                                      //width: 100,
                                    )),
                                Expanded(
                                    //flex: 1,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Image.asset(
                                          "images/f.png",
                                          fit: BoxFit.fill,
                                          //width: 70,
                                        )))
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 83,
                    //height: screenHeightNavItem / 5,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Image.asset(
                                          "images/d.png",
                                          fit: BoxFit.contain,
                                          width: 70,
                                        ))),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Container(
                                            child: SingleChildScrollView(
                                                child: Column(
                                          children: <Widget>[
                                            Text("Jeans, pants & trousers",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 17,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            Text("357 items",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 13,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            OutlineButton(
                                              child: Text("View",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "SFProDisplay-Bold",
                                                    fontSize: 15,
                                                  )),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              onPressed: () {},
                                            )
                                          ],
                                        ))))),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text("   ",
                                          style: TextStyle(
                                              //color: Colors.white,
                                              fontSize: 17,
                                              fontFamily: "SFProDisplay-Bold")),
                                      // Image.asset(
                                      //   "images/c.png",
                                      //   fit: BoxFit.contain,
                                      //width: 100,
                                    )),
                                Expanded(
                                    //flex: 1,
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(
                                          "images/g.png",
                                          fit: BoxFit.fill,
                                          //width: 70,
                                        )))
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    //height: screenHeightNavItem / 5,
                    height: 83,
                    color: Colors.white70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(
                                          "images/e.png",
                                          fit: BoxFit.contain,
                                          width: 70,
                                        ))),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Container(
                                            child: SingleChildScrollView(
                                                child: Column(
                                          children: <Widget>[
                                            Text("Suits & blazers",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 17,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            Text("124 items",
                                                style: TextStyle(
                                                    //color: Colors.white,
                                                    fontSize: 13,
                                                    fontFamily:
                                                        "SFProDisplay-Bold")),
                                            OutlineButton(
                                              child: Text("View",
                                                  style: TextStyle(
                                                    fontFamily:
                                                        "SFProDisplay-Bold",
                                                    fontSize: 15,
                                                  )),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)),
                                              onPressed: () {},
                                            )
                                          ],
                                        ))))),
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text("          ",
                                          style: TextStyle(
                                              //color: Colors.white,
                                              fontSize: 17,
                                              fontFamily: "SFProDisplay-Bold")),
                                      // Image.asset(
                                      //   "images/c.png",
                                      //   fit: BoxFit.contain,
                                      //width: 100,
                                    )),
                                Expanded(
                                    //flex: 1,
                                    child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(
                                          "images/h.png",
                                          fit: BoxFit.fill,
                                          //width: 70,
                                        )))
                              ],
                            )),
                      ],
                    ),
                  ),
                  //Final place Information & Delivery
                  Row(
                    children: [
                      Text("Information",
                          style: TextStyle(
                              fontSize: 15, fontFamily: "SFProDisplay-Bold")),
                      SizedBox(
                        width: 250,
                      ),
                      IconButton(
                        icon: new Icon(Icons.arrow_right),
                        highlightColor: Colors.green,
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Delivery      ",
                          style: TextStyle(
                              fontSize: 15, fontFamily: "SFProDisplay-Bold")),
                      SizedBox(
                        width: 250,
                      ),
                      IconButton(
                        icon: new Icon(Icons.arrow_right),
                        highlightColor: Colors.green,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ))),
      Scaffold(
        body: Center(child: Text("2. SEARCH NAVIGATION PAGE")),
        backgroundColor: Colors.grey,
      ),
      Scaffold(
        body: Center(child: Text("3. HANGER NAVIGATION PAGE")),
      ),
      Scaffold(
        body: Center(child: Text("4. SHOPPING NAVIGATION PAGE")),
        backgroundColor: Colors.grey,
      ),
      Scaffold(
        body: Center(child: Text("5. PROFILE NAVIGATION PAGE")),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
          title: Text("For him",
              style: TextStyle(fontSize: 17.0, fontFamily: 'SFProText-Bold')),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            highlightColor: Colors.green,
            onPressed: () {},
          )),
      body: SafeArea(child: _bottomNavigationBarPages[_selectedIndex]),
      // appBar: AppBar(
      //   title: Text("For him"),
      // ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.green,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color: Colors
                        .white))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                title: Text(""), icon: Icon(Icons.add_shopping_cart)),
            BottomNavigationBarItem(
                title: Text(""), icon: Icon(Icons.shopping_basket)),
            BottomNavigationBarItem(title: Text(""), icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
