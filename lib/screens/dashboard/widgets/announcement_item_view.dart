import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hr_dashboard/constants.dart';

class AnnouncementItemView extends StatelessWidget {
  const AnnouncementItemView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        14,
      ),
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffE0E0E0).withOpacity(
          0.5,
        ),
        border: Border.all(
          color: const Color(0xffE0E0E0),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'IT Department need two more talents for UX/UI Designer position',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kTertiaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Yesterday, 09:15 AM',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff686868),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/pin.svg',
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  SvgPicture.asset(
                    'assets/icons/more.svg',
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
