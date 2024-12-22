import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var names=['Souvik', 'Rohit', 'Suman', 'Shritesh', 'Pratish', 'Vedant', 'Sachin', 'Manas', 'Krishna', 'Krushna', 'Harsh'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Dashboard'),
        // shadowColor: Colors.black12,
      ),

      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/luffy.jpeg'),
                ),

              ),
              Text('Luffy', style: TextStyle(fontFamily: 'AguDisplay', fontWeight: FontWeight.w500, fontSize: 20),)
            ],
          ),
        ),
      ),
      
      // body: Container(
      //   color: Colors.blueAccent,
      //   margin: EdgeInsets.all(11),
      //   child: Padding(
      //     padding: const EdgeInsets.all(11),
      //     child: Text('Hello world!', style: TextStyle(fontSize: 25),),
      //   ),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.only(top:8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Expanded(
      //         flex: 2,
      //         child: Container(
      //         height: 100,
      //           width: 50,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           height: 100,
      //           width: 50,
      //           color: Colors.greenAccent,
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           height: 100,
      //           width: 50,
      //           color: Colors.yellowAccent,
      //         ),
      //       ),
      //       Expanded(
      //         flex: 4,
      //         child: Container(
      //           height: 100,
      //           width: 50,
      //           color: Colors.redAccent,
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     // color: Colors.blue.shade100,
      //     child: Center(
      //       child: Container(
      //         width: 150,
      //         height: 150,
      //         // color: Colors.blue,
      //         child: Center(child: Text('This is container', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),)),
      //         decoration: BoxDecoration(
      //           color: Colors.blueGrey.shade700,
      //           borderRadius: BorderRadius.circular(11),
      //           // borderRadius: BorderRadius.only(topLeft: Radius.circular(11), bottomRight: Radius.circular(11)),
      //           border: Border.all(
      //             width: 3,
      //             color: Colors.black
      //           ),
      //           boxShadow: [

      //             BoxShadow(
      //               blurRadius: 51,
      //               color: Colors.grey.shade800,
      //               spreadRadius: 21
      //             )
      //           ]
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      // body: ListView.separated(itemBuilder: (context, index){
      //   return ListTile(
      //     title: Text(names[index]),
      //     subtitle: Text('Number'),
      //     trailing: TextButton(onPressed: (){
      //       print('Calling ${names[index]}....');
      //     }, child: Icon(Icons.call),),
      //   );
      //   // return Row(
      //   //   children: [
      //   //     Padding(
      //   //       padding: const EdgeInsets.all(8.0),
      //   //       child: Text(names[index],style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
      //   //     ),
      //   //   ],
      //   // );
      // },
      // itemCount: names.length,
      //   separatorBuilder: (context, index){
      //   return Divider(height: 20,);
      //   },
      //   // itemExtent: 100,
      // ),

      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true ,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('One', style: TextStyle(fontSize: 21),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Two', style: TextStyle(fontSize: 21),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Three', style: TextStyle(fontSize: 21),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('Four', style: TextStyle(fontSize: 21),),
      //     ),
      //   ],
      // ),
    );
  }
}
