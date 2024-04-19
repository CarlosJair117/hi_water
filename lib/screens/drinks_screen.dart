import 'package:flutter/material.dart';
import 'package:hi_water/screens/start_screen.dart';
import 'package:intl/intl.dart';


class DrinkScreen extends StatelessWidget {
  final double hidratacion;
  final int valueWater;
  DrinkScreen({Key? key, required this.hidratacion, required this.valueWater}) : super(key: key);
  final List<dynamic> typesOfDrinks = [
    //water, title, background, color, hidratacion
    [280, 'Vaso de agua',     const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255), 1],
    [550, 'Botella de agua', const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255), 1],
    [240, 'Taza de te',      const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115), 1],
    [250, 'Vaso de leche',    const Color.fromARGB(255, 54, 34, 69), const Color.fromARGB(255, 230, 164, 255), 1],
    [200, 'Taza de café',    const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115), 1],
    [200, 'Leche',    const Color.fromARGB(255, 64, 31, 44), const Color.fromARGB(255, 255, 157, 200), 1],
    [200, 'Refresco', const Color.fromARGB(255, 32, 29, 69), const Color.fromARGB(255, 159, 147, 255), 1],
    [200, 'Cerveza',     const Color.fromARGB(255, 71, 59, 24), const Color.fromARGB(255, 255, 249, 130), 2],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        leadingWidth: 100,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: 
                Text(
                "Regresar",
                style: Theme.of(context).textTheme.bodySmall,
              )
          ),
        actions: [
          _hour(context),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _oneCard(context, 0),
          _oneCard(context, 1),
          _oneCard(context, 2),
          _oneCard(context, 3),
          _oneCard(context, 4),
          _oneCard(context, 5),
          _oneCard(context, 6),
          _oneCard(context, 7),
        ]
      ),
    );
  }

  Widget _oneCard(BuildContext context, int type){
    double newH = hidratacion + typesOfDrinks[type][4];
    double newVW = valueWater.toDouble() + typesOfDrinks[type][0];
    return GestureDetector(
            onTap: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => StartScreen(
              hidratacion: newH,
              valueWater: newVW.toInt(),
            )), (route) => false);
          },
          child: Center(
            child: SizedBox(
              width: 120.0,
               //height: 60.0,
              child: 
                Card(
                  elevation: 10.0,
                  color: typesOfDrinks[type][2],
                  shape: RoundedRectangleBorder(
                      side:  BorderSide(
                        color: typesOfDrinks[type][2],
                      ),
                      borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${typesOfDrinks[type][0]} ml',
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            color: typesOfDrinks[type][3], 
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          typesOfDrinks[type][1],
                          style:  TextStyle(
                            color: typesOfDrinks[type][3],
                            fontSize: 10, 
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                  ),
                ),
                     // ),
              ),
          ),
    );
  }

  Widget _hour(BuildContext context) {
    return Text(
      DateFormat.Hm().format(DateTime.now()),
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}