import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webprofile/presentation/starRates/feedback_view.dart';
import 'package:webprofile/provider/page_provider.dart';

class StarRates extends ConsumerStatefulWidget {
  final bool isMobile;
  const StarRates({super.key, required this.isMobile});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StarRatesState();
}

class _StarRatesState extends ConsumerState<StarRates>
    with TickerProviderStateMixin {
  late AnimationController _starScaleController;

  int hoverIndex = 0;

  bool hoverState = false;

  Duration eventDuration = const Duration(milliseconds: 100);

  @override
  void initState() {
    _starScaleController = AnimationController(
      vsync: this,
      duration: eventDuration,
      lowerBound: 0,
      upperBound: 0.4,
    )..addListener(() => setState(() {}));

    super.initState();
  }

  Color starColor(int idx) {
    if (hoverState) {
      if (hoverIndex > idx) {
        return Colors.yellow;
      } else {
        return Colors.grey;
      }
    } else {
      int starRate = ref.read(starRatesProvider).feedback.starRates;
      if (starRate > idx) {
        return Colors.yellow;
      } else {
        return Colors.grey;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int starRate = ref.watch(starRatesProvider).feedback.starRates;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        alignment: Alignment.center,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (ctx, idx) {
            return InkWell(
              onHover: (state) {
                setState(() {
                  if (state) {
                    hoverState = state;
                    hoverIndex = idx + 1;
                  } else {
                    hoverState = state;
                    hoverIndex = 0;
                  }
                });
              },
              hoverColor: Colors.transparent,
              onTap: () {},
              child: IconButton(
                onPressed: () {
                  _starScaleController.forward();
                  ref.read(starRatesProvider).setStarRates(rate: idx + 1);
                  Future.delayed(eventDuration, () {
                    _starScaleController.reverse();
                  });

                  //Feedback alert
                  showDialog(
                    context: context,
                    builder: (ctx2) {
                      return const FeedbackAlert();
                    },
                  );
                },
                icon: Transform.translate(
                  offset: Offset(0, idx < hoverIndex ? -2 : 0),
                  child: Transform.scale(
                    scale: idx < starRate ? 1 + _starScaleController.value : 1,
                    child: const FaIcon(FontAwesomeIcons.solidStar),
                  ),
                ),
                color: starColor(idx),
                iconSize: widget.isMobile ? 38 : 52,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            );
          },
        ),
      ),
    );
  }
}
