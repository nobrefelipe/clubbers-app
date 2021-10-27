import 'package:clubber/clubber.dart';
import 'package:flutter/material.dart';

class UiKitTests extends StatelessWidget {
  const UiKitTests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clubber UI Kit'),
      ),
      backgroundColor: CLPalette.darkGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///
            /// BUTTONS
            ///
            CLButton.withShadow(
              label: 'Solid shadow button',
              onPressed: () {},
            ),
            const SizedBox(height: 20),

            CLButton.outlined(
              label: 'Outlined button',
              onPressed: () {},
            ),
            const SizedBox(height: 20),

            ///
            /// EVENT HERO ITEM
            ///
            CLEventHeroItem(
              title: 'Vintage Culture',
              subtitle: 'Fabric - London',
              image: 'https://edmhousenetwork.com/wp-content/uploads/2020/03/zvintage.png',
              onTap: () {
                print('lksandnjdnsa');
              },
            ),
          ],
        ).marginAll(30),
      ),
    );
  }
}
