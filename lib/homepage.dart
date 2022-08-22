import 'package:flutter/material.dart';
import 'package:flutter_practice_lab/routes/routes.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Practice Application',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RoutesManager.visitingCardPage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Visiting Card'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.xylophonePage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Xylophone App'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.dicePage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Dice Game'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.magicBallsPage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Magic 8 Balls'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.quizlerPage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Quizler App'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.destinyPage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('Destiny Changer Play'),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.bmiPage);
                },
                fillColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text('BMI Calculator App'),
              ),
            ),
            // newMethod(const Text('Visiting Card'),
            //     Navigator.of(context).pushNamed('/visitingcard')),
            const SizedBox(height: 10),
            // newMethod(const Text('Xylophone App'),
            //     Navigator.of(context).pushNamed(RoutesManager.xylophonePage)),
            // const SizedBox(height: 10),
            // newMethod(
            //   const Text('Dice Game'),
            //   Navigator.pushNamed(context, '/dice'),
            // ),
            // const SizedBox(height: 10),
            // newMethod(const Text('Magic 8 Balls'),
            //     Navigator.pushNamed(context, '/magicballs')),
            // const SizedBox(height: 10),
            // newMethod(const Text('Quizler App'),
            //     Navigator.pushNamed(context, '/quizler')),
            // const SizedBox(height: 10),
            // newMethod(const Text('Destiny Changer Play'),
            //     Navigator.pushNamed(context, '/destiny')),
            // const SizedBox(height: 10),
            // newMethod(const Text('BMI Calculator App'),
            //     Navigator.pushNamed(context, '/bmi')),
          ],
        ),
      ),
    );
  }

  Widget newMethod(Widget child, Future<dynamic> nav) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          nav;
        },
        fillColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: child,
      ),
    );
  }
}
