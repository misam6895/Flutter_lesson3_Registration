import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),

        '/third': (context) =>  StorePage(),
      },
    ),
  );
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Регистрация'),
        ),
        body: Stack(
            children: <Widget> [
              Align(
                  alignment: const Alignment(0.6, 0.0),
                  child: ElevatedButton(
                    style: ButtonStyle(

                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: const BorderSide(width: 3, color: Colors.black)
                            )
                        )
                    ),
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text('Зарегистрироваться'),
                  )),
              Align(
                  alignment: const Alignment(-0.9, 0.0),
                  child: Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                        color: Colors.white54),
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    child:  TextFormField(decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.login),
                        labelText: 'Логин'
                    ),),)

              ),
              Align(
                  alignment: const Alignment(-0.9, 0.2),
                  child: Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                        color: Colors.white54),
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    child:  TextFormField(decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.password),
                        labelText: 'Пароль'
                    ),),)

              )
            ]


        )

    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Stack(
          children: <Widget> [
            Align(
                alignment: const Alignment(0.6,0.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    //Navigator.pop(context);
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('Авторизоваться'),
                )),
            Align(
                alignment: const Alignment(1.0,1.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black
                  ),
                  
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    //Navigator.pop(context);
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Еще не зарегистрированы? Самое время исправить это!'),
                )),

            Align(
                alignment: const Alignment(-0.9, 0.0),
                child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      color: Colors.white54),
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  child: TextFormField(decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      icon: Icon(Icons.accessible_forward_rounded),
                      labelText: 'Логин'
                  ),),)),
            Align(alignment: const Alignment(-0.9, 0.2),
                child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      color: Colors.white54),
                  height: 50,
                  width: 150,
                  alignment: Alignment.center,
                  child: TextFormField(decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      icon: Icon(Icons.adb_outlined),
                      labelText: 'Пароль'
                  ),),))
          ]

      ),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Store'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(4, (index) {
          return Card(
            child: Column(
              children: <Widget>[
                Image.network('https://opttorg-horeca.ru/assets/images/catalog/ovoshi-frukti-yagodi/dynya.jpg'),
                const Text('Киви'),
                const Text('Price: \$10'),
              ],
            ),
          );
        }),
      ),
    );
  }
}
