import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/chat.dart';
import 'package:my_flutter_app/pages/profileScreen.dart';
import 'package:my_flutter_app/pages/tapBottomTwo.dart';
import 'package:my_flutter_app/util/emogi.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  //int _selectedIndexmood = 0;
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

final Map<String, String> moodMessages = {
    "😔": "Cheer up! Tomorrow is a new day. 🌤️",
    "😊": "Keep smiling! Your positivity is contagious. 😊",
    "😀": "You look happy! Keep up the good vibes. ✨",
    "🥳": "Party time! Enjoy your moments. 🎉",
  };

  List<Map<String, dynamic>> exercises = [
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
  backgroundColor: Colors.blue[800],  
  selectedItemColor: Colors.white,   
  unselectedItemColor: Colors.grey[300],
  type: BottomNavigationBarType.fixed, 
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
                          Text("Hi, Shahanda", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
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
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("How are you feeling today??", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var mood in ["😔", "😊", "😀", "🥳"])
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedMood = mood;
                            });
                          },
                          child: EmogiFace(emogi: mood, isSelected: selectedMood == mood),
                        )
                    ],
                  ),
                  SizedBox(height: 25),
                  if (selectedMood.isNotEmpty)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(moodMessages[selectedMood]!,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 250, 250, 250)),
                        textAlign: TextAlign.center,
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
                        Text("Practice & Improve Your Skills", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: exercises.length,
                        itemBuilder: (context, index) {
                          return ExercisesList(
                            excercisesname: exercises[index]["name"],
                            excercisesnumber: exercises[index]["number"],
                            icon: exercises[index]["icon"],
                            color: exercises[index]["color"],
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

class ExercisesList extends StatefulWidget {
  final String excercisesname;
  int excercisesnumber;
  final IconData icon;
  final Color color;
ExercisesList({super.key, required this.excercisesname, required this.excercisesnumber, required this.icon, required this.color});

  @override
  State<ExercisesList> createState() => _ExercisesListState();
}

class _ExercisesListState extends State<ExercisesList> {
int number=0;

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
            decoration: BoxDecoration(color: widget.color, borderRadius: BorderRadius.circular(12)),
            child: IconButton(onPressed: (){
            setState(() {
                  widget.excercisesnumber=widget.excercisesnumber+number++;
                  color:  Color.fromARGB(255, 14, 12, 12); // تحديث العدد داخل setState
                });
            
            }, icon: Icon(widget.icon, color: Colors.white),iconSize: 30,),
          ),
          title: Text(widget.excercisesname, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle: Text("${widget.excercisesnumber+ number} Exercises", style: TextStyle(color: Colors.black54, fontSize: 12, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
