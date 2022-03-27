import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class HeroSlider extends StatefulWidget {
  const HeroSlider({
    Key? key,
    required this.images,
  }) : super(key: key);

  final Iterable<String> images;

  @override
  State<HeroSlider> createState() => _HeroSliderState();
}

class _HeroSliderState extends State<HeroSlider> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Wrap with Hero only the widget that will fly
        PageViewJ(
          onPageChanged: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          modifier: const Modifier(
            viewportFraction: 0.8,
          ),
          itemCount: widget.images.length,
          itemBuilder: (context, index) => Chobi(
            imageUrl: widget.images.elementAt(index),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.images.length,
              (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: _currentIndex == index ? 10 : 8,
                  width: _currentIndex == index ? 10 : 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
