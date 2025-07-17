import 'package:flutter/material.dart';

class amni extends StatefulWidget{
   amni({super.key}){
     print("constructor of amni");
   }
  @override
  State<amni> createState() {
     print("create state");
    return amniState();
  }
}

class amniState extends State<amni>{

  @override
  void initState() {
    print("initstate");
    super.initState();
  }
  @override
  void didUpdateWidget(covariant amni oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build context");
    return Scaffold();
  }
}