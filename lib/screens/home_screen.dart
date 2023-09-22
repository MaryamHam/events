import 'package:events/models/event.dart';
import 'package:events/root/app_root.dart';
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Event> events = [

    Event(
      title: "Watch youtube",
      date: "Sep 16, 2023",
      time: "1:47 PM - 3:47 ",
    

      //date:DateTime.now(),
    ),

     Event(
      title: "go to gym",
      date: "Sep 16, 2023",
       time: "3:47 PM - 6:00 ",


      //date:DateTime.now(),
    ),

     Event(
      title: "go to football",
      date: "Sep 16, 2023",
      time: "1:47 PM - 3:47 ",

     // date:DateTime.now(),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: AppBar(
    //elevation: 0,
  backgroundColor:  Colors.black,
     //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    leading: Icon(Icons.menu,color: Colors.white),
    centerTitle: true,
    
    title: Text("My Events", style: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.white,
    ),),
    actions: [
    Icon(Icons.search,color: Colors.white),

    IconButton(
              icon: Icon(AppRoot.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                AppRoot.themeNotifier.value =
                    AppRoot.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })

  ]),


//body:SingleChildScrollView
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        _mainExample(),
        const SizedBox(
          height: 32.0,
        ),
       
       
    Expanded(
      
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
                      
            itemBuilder: (context,index){
            return Container(
          
        // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 1), 
        child: Card(
          
          color: Colors.deepOrangeAccent,   
           child: ListTile(
        
            title: Text(events[index].title!, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            trailing: IconButton(onPressed: (){

            showModalBottomSheet(context: context, builder: (BuildContext context) {
            
						return  SizedBox(
							height: 160,
							child: Center(
								child: Column(
								mainAxisAlignment: MainAxisAlignment.center,
									children: [
										Container(
                      width: MediaQuery.sizeOf(context).width *.85,
                      height: MediaQuery.sizeOf(context).height *.04,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: Color.fromARGB(255, 79, 117, 199),),
                    
                     child: MaterialButton(
                      onPressed: () { },
                      child: Text('Done',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ), ),
                      SizedBox( height: MediaQuery.sizeOf(context).height *.02,),
                    	Container(
                      width: MediaQuery.sizeOf(context).width *.85,
                      height: MediaQuery.sizeOf(context).height *.04,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: Color.fromARGB(255, 98, 98, 99),),
                    
                     child: MaterialButton(
                      onPressed: () { },
                      child: Text('Achive',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ), ),
                       SizedBox( height: MediaQuery.sizeOf(context).height *.02,),
                    	Container(
                      width: MediaQuery.sizeOf(context).width *.85,
                      height: MediaQuery.sizeOf(context).height *.04,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: Color.fromARGB(255, 236, 82, 82),),
                    
                     child: MaterialButton(
                      onPressed: () { },
                      child: Text('Delete',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ), ),
                          
									],
								),
							),
						);
					},
          );
            
            }, icon: Icon(Icons.more_horiz,color: Colors.white,)),
      
            // trailing: Icon(Icons.more_horiz,color: Colors.white,),
            
            subtitle: ListBody(
              
                  children: [
                    
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.list_alt_rounded,color: Colors.white,),
                        SizedBox(width: MediaQuery.sizeOf(context).width* .05,),
                        Text(events[index].date!,style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    
                    Row(
                      children: [
                        Icon(Icons.timelapse,color: Colors.white,),
                        SizedBox(width: MediaQuery.sizeOf(context).width* .05,),
                        Text(events[index].time!,style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
               
              ),
            ),
        ),
            );
          
             
          },
          
          itemCount: events.length,
          
          ),
      ),
    ),

       

      ],
    ),
    );
  }

  EasyDateTimeLine _mainExample() {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
      },
    );
  }

  
 }