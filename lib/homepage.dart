import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.red;

  get effect => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ContainerColor(
              color: color,
              child: Builder(
                builder: (BuildContext innerContext) {
                  return Container(
                      child: null,
                      decoration: BoxDecoration(
                        color: color,
                      ),
                      height: 400,
                      width: 400);
                },
              )),
          // ignore: deprecated_member_use
          FlatButton(
            splashColor: Colors.red,
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(65)),
            onPressed: () {
              setState(() {
                color = Colors.red;
              });
            },
            child: Text(''),
          ),
          FlatButton(
            splashColor: Colors.green,
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(65)),
            onPressed: () {
              setState(() {
                color = Colors.green;
              });
            },
            child: Text(''),
          ),
          FlatButton(
            splashColor: Colors.purple,
            color: Colors.purple,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(65)),
            onPressed: () {
              setState(() {
                color = Colors.purple;
              });
            },
            child: Text(''),
          ),
        ],
      ),
    );
  }
}

class ContainerColor extends InheritedWidget {
  const ContainerColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  static ContainerColor of(BuildContext context) {
    final ContainerColor? result =
        context.dependOnInheritedWidgetOfExactType<ContainerColor>();
    assert(result != null, 'No ContainerColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ContainerColor old) => color != old.color;
}
