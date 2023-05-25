import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CatsBreedingViewBody extends StatelessWidget {
  const CatsBreedingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
                 padding: const EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          reverse: false,
          primary: true,
          shrinkWrap: true,
          dragStartBehavior: DragStartBehavior.start,
          clipBehavior: Clip.hardEdge,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2,
          ),

      itemBuilder: ,
    );
  }
}
