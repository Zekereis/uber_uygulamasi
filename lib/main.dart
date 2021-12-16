import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.all(8.0,),
          child: Container(color: Colors.white,
            child: const Center(
              child: Text(
              "Z",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),
          ),
            ),
          ),
        ),
        actions: const[
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.supervised_user_circle_outlined),
          )
        ],
        centerTitle: true,
        title: const Text("Uber"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:  EdgeInsets.only(bottom: 8.0),
              child:  Text(
                "Hoşgeldiniz.",
                style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: Align(
                          alignment: Alignment.centerLeft,
                            child: Text("Ara")
                        ),
                      ),

                      height: 50,
                    ),
                  ),
                ),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(height: 16.0,),
            const Text(
              "Geçmiş Yolculuklarınız",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10.0,),
            Container(

              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const[
                    Icon(Icons.local_taxi_rounded,color: Colors.white,),
                    SizedBox(width: 8.0,),
                    Expanded(
                      child: Text(
                          "İzmit - Derince",
                          style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                      ),
                    ),
                    Text(
                      "55,90₺",
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

            ),
            const SizedBox(height: 8.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const[
                    Icon(Icons.local_taxi_rounded,color: Colors.white,),
                    SizedBox(width: 8.0,),
                    Expanded(
                      child: Text(
                        "İzmit - Kocaeli Otogar",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    Text(
                      "30.50₺",
                      style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
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
