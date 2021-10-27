import 'package:clubber/clubber.dart';
import 'package:flutter/material.dart';

import '../../utils/extensions/widget_extensions.dart';

class CLEventHeroItem extends StatelessWidget {
  final String? image;
  final CLDatetime? date;
  final String? title;
  final String? subtitle;
  final double? aspectRatio;
  final double? borderRadius;
  final double? padding;
  final Function? onTap;
  const CLEventHeroItem({
    Key? key,
    this.image,
    this.date,
    this.aspectRatio,
    this.title,
    this.subtitle,
    this.borderRadius,
    this.padding,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? 350 / 200,
      child: Container(
        decoration: _decoration(),
        child: _content(),
      ),
    )
        .borderRadius(
          borderRadius ?? 20,
        )
        .onTap(
          onTap ?? () {},
        );
  }

  Widget _content() {
    return Stack(
      children: [
        _innerShadow(),

        ///
        /// Calendar Date
        ///
        Positioned(
          right: padding ?? 15,
          top: padding ?? 15,
          child: CLCalendarDayWidget(
            CLDatetime(DateTime.now()),
          ),
        ),

        ///
        /// Title & subtitle
        ///
        Positioned(
          bottom: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///
              /// Title
              ///
              CLText.heading(
                title ?? 'Title Here',
                heading: 2,
              ),

              ///
              /// Subtitle
              ///
              CLText.content(
                subtitle ?? 'Subtitle here',
              ),
            ],
          ).marginAll(padding ?? 15),
        ),
      ],
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: CLPalette.grey,
      image: DecorationImage(
        alignment: Alignment.center,
        image: NetworkImage(
          image ?? '',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _innerShadow() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.6,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.1, 0.4, 1],
              colors: [
                CLPalette.darkGrey.withOpacity(0.9),
                CLPalette.darkGrey.withOpacity(0.6),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
