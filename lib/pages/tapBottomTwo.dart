import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/Homepage.dart';
import 'package:my_flutter_app/pages/chat.dart';
import 'package:my_flutter_app/pages/profileScreen.dart';

class BottomTwo extends StatefulWidget {
  const BottomTwo({super.key});
  @override
  State<BottomTwo> createState() => _BottomTwoState();
}

class _BottomTwoState extends State<BottomTwo> {
  int _selectedIndex = 0;
  String selectedMood = "";
  final TextEditingController _searchController = TextEditingController();


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

      switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomTwo()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
        break;
        case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Chatscreen()));
        break;
    }
    
  }

  List<Map<String, dynamic>> Cotegorys = [
    {"name": "Speaking Skills", "number": 18, "icon": Icons.favorite, "color": Colors.orange},
    {"name": "Reading Skills", "number": 16, "icon": Icons.book, "color": Colors.blue},
    {"name": "Writing Skills", "number": 17, "icon": Icons.edit, "color": Colors.red},
    {"name": "Listening Skills", "number": 20, "icon": Icons.hearing, "color": Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  backgroundColor: Colors.blue[800],  // تحديد لون الخلفية
  selectedItemColor: Colors.white,   // لون الأيقونات والنص المختار
  unselectedItemColor: Colors.grey[300], // لون الأيقونات والنص الغير مختار
  type: BottomNavigationBarType.fixed, // تثبيت العناصر لتجنب التحريك التلقائي
  onTap: _onItemTapped,
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.apps_rounded), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
  ],
),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Jared", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("26 Jan, 2025", style: TextStyle(color: Colors.blue[100], fontSize: 12)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.notifications, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  TextField(
                    controller: _searchController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      fillColor: Colors.blue[600],
                      filled: true,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Cotegorys", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  SizedBox(height: 20),

                    Expanded(
                      child: Column(
                        children: const [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Cotegorysr(color: Color.fromARGB(255, 0, 119, 255), text: "Speaking Skills"),
                              Cotegorysr(color: Color.fromARGB(255, 217, 0, 255), text: "Speaking Skills"),
                              
                            ],
                          ),
                  SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Cotegorysr(color: Color.fromARGB(255, 144, 0, 255), text: "Speaking Skills"),
                              Cotegorysr(color: Color.fromARGB(255, 255, 77, 0), text: "Speaking Skills"),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                    


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Cotegorys", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: Cotegorys.length,
                        itemBuilder: (context, index) {
                          return CotegorysList(
                            excercisesname: Cotegorys[index]["name"],
                            excercisesnumber: Cotegorys[index]["number"],
                            icon: Cotegorys[index]["icon"],
                            color: Cotegorys[index]["color"],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CotegorysList extends StatelessWidget {
  final String excercisesname;
  final int excercisesnumber;
  final IconData icon;
  final Color color;
  
  const CotegorysList({super.key, required this.excercisesname, required this.excercisesnumber, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(excercisesname, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text("$excercisesnumber Cotegorys", style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}

class Cotegorysr extends StatelessWidget {
  final Color color;
  final String text;
  const Cotegorysr({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
              onTap: (){},
              child: Container(
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),))),
            );
  }
}
