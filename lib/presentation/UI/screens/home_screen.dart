import 'package:blood_donation/data/list/dashbord_data_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        title: const Center(child: Text("DashBord",textAlign: TextAlign.center,style: TextStyle(fontSize: 24),)),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications_active),
          )
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 35,top: 20),
        child:GridView.builder(gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing:2,


        ),itemCount: dashBordList.length, itemBuilder: (context, index){
          return  FittedBox(
              child:InkWell(
                onTap: (){
                  if(dashBordList[index]==1){
                    Get.snackbar("title", "blood search");
                  }else{
                    // Get.snackbar("title", "title");
                  }

                },
                child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
                height: MediaQuery.sizeOf(context).width/2-60,
                width: MediaQuery.sizeOf(context).width/2-45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(dashBordList[index].imgUrl,height: 50,width: 50,),
                     Text(dashBordList[index].title,style: const TextStyle(fontSize: 20),)
                  ],
                ),
            ),
          ),
              )
          );
        })

      )
    );
  }
}
