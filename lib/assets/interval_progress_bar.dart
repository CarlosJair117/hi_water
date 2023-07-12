import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  final int value;
  const IntervalProgressBar({Key? key, required this.value}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {

  List<Color> darkColor = [
    const Color.fromARGB(255, 22, 45, 67),
    const Color.fromARGB(255, 28, 55, 53),
    const Color.fromARGB(255, 33, 59, 34),
    const Color.fromARGB(255, 42, 59, 34),
    const Color.fromARGB(255, 50, 59, 17),
    const Color.fromARGB(255, 63, 60, 21),
    const Color.fromARGB(255, 71, 57, 9),
    const Color.fromARGB(255, 75, 51, 9),
    const Color.fromARGB(255, 77, 40, 15),
    const Color.fromARGB(255, 71, 29, 23)
  ];

  List<Color> brightColor = [
    const Color.fromARGB(255, 8, 91, 3),
    const Color.fromARGB(255, 13, 166, 5),
    const Color.fromARGB(255, 144, 240, 5),
    const Color.fromARGB(255, 235, 228, 12),
    const Color.fromARGB(255, 176, 170, 4),
    const Color.fromARGB(255, 192, 181, 60),
    const Color.fromARGB(255, 230, 190, 64),
    const Color.fromARGB(255, 237, 169, 59),
    const Color.fromARGB(255, 235, 138, 60),
    const Color.fromARGB(255, 229, 95, 72)
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        _label(),
      ],
    );
  }

  Widget _bar() {

    List<Color> actualColors;
    if(widget.value == 0){
      actualColors = darkColor;
    } else {
      actualColors = brightColor;
    }

    return Column(
      children: [
        _interval(customColor: actualColors[0] ),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[1]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[2]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[3]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[4]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[5]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[6]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[7]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[8]),
        const SizedBox(height: 2.2,),
        _interval(customColor: actualColors[9]),
      ],
    );
  }

  Widget _interval({required Color customColor}) {
    return SizedBox(
      width: 15.0,
      height: 3.8,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: customColor,
        )
      ),
    );
  }

  Widget _label() {
    return Column(
      children: [
        const SizedBox(height: 30.0,),
        Text('1.0', style: Theme.of(context).textTheme.headlineSmall,),
      ],
    );
  }

}