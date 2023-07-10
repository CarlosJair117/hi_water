import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
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
    return Column(
      children: [
        _interval(customColor: const Color.fromARGB(255, 8, 91, 3)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 13, 166, 5)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 144, 240, 5)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 235, 228, 12)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 176, 170, 4)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 240, 161, 3)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        const SizedBox(height: 2.2,),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
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