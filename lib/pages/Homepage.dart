import 'package:flutter/material.dart';
import 'package:my_flutter_app/util/emogi.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items:[ 
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        ),
        ]),
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
                    //Hi, Jared!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Jared",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        ),
                        
                        Text("26 jan, 2025",
                        style: TextStyle(
                          color: Colors.blue[100],
                          fontSize: 12
                        ),
                        
                        ),
                      ],
                    ),
                    //Notification  
                    Container(
                      
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.notifications,
                      color: Colors.white,
                      ),
                    )
                    
                  ],
                ),
                SizedBox(height: 25,),
                  //Search bar
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.blue[600],
                      filled: true,
                      hintText: "Search",
                      hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 236, 239, 242),
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    ),
                  ),
                SizedBox(height: 25,),
                //how do you feel ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("How do you feel?",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            
                            ),
                            Icon(Icons.more_horiz,color: Colors.white),
                        
                            //IconButton(onPressed:(){}, icon: Image.asset(),)
                  ],
                ),
                        
                SizedBox(height: 25,),
                // 4 different icons for different emoji face
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //sad icon
                    Column(
                      children: [
                        EmogiFace(emogi: "😔"),
                        SizedBox(height: 8,),
                        Text("Bad",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                        
                    //fine icon
                    Column(
                      children: [
                        EmogiFace(emogi: "😊"),
                        SizedBox(height: 8,),
                        Text("Fine",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                    //will icon
                  Column(
                      children: [
                        EmogiFace(emogi: "😀"),
                        SizedBox(height: 8,),
                        Text("Well",style: TextStyle(
                          color: Colors.white
                        ),)
                      ],
                    ),
                    //excellent icon
                    Column(
                      children: [
                        EmogiFace(emogi: "🥳"),
                        SizedBox(height: 8,),
                        Text("Excellent",style: TextStyle(
                          color: Colors.white
                        ),
                        )
                      ],
                    ),
                  ],
                ),
                  ],
                ),
              ),
                        SizedBox(height: 25,),

                Expanded(
        
                  child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(50),  // الزاوية العلوية اليسرى
      topRight: Radius.circular(50), // الزاوية العلوية اليمنى
    ),
                  ),
                    
                    child: Center(
                      child: Column(
                        children: [
                          // Excercises headings 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Excercises",
                              style: TextStyle(

                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Expanded(
                            child: ListView(
                              children: [
                                Excerciseslist(
                                  excercisesname: "Speeking Skills",
                                  excercisesnumber:18 ,
                                  icon: Icons.favorite,
                                  color: Colors.orange,
                                  ),
                            Excerciseslist(excercisesname: "Reading Skills",excercisesnumber:16 ,icon: Icons.person,color: Color.fromARGB(255, 0, 110, 255),),
                            Excerciseslist(excercisesname: "Writing Skills",excercisesnumber:17 ,icon: Icons.star,color:  Color.fromARGB(255, 255, 98, 0),),
                            Excerciseslist(excercisesname: "Speeking Skills",excercisesnumber:20 ,icon: Icons.favorite,color:  Color.fromARGB(255, 0, 217, 255),),
                              ],
                            ),
                          ),
                          //  "Speeking Skills"  "18 Excercises"
                          
    
                        ],
                      ),
                    ),
                  
                  ),
                ),
            ],
        ),
      ),

    );
}}


class Excerciseslist extends StatelessWidget {
  final String excercisesname;
  final int excercisesnumber;
  final icon;
  final color;
  //final Icons icone;
  const Excerciseslist({super.key,  required this.excercisesname, required this.excercisesnumber, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return 
     // listview of excercises
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child:ListTile(
              leading: Container( 
                padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
                child: Icon(icon,color: Colors.white,),),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(excercisesname,style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text(excercisesnumber.toString()+"Excercises",
                        style: TextStyle(
                          color: Color.fromARGB(213, 30, 25, 25),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          ],
                          ),
                          Icon(Icons.more_horiz, ),
                          ],
                          ),
                          ), 
                          ),
        );
                        }
}