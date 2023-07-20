import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ilyas.dart/const/color.dart';

class PhotoVedioRow extends StatelessWidget {
  const PhotoVedioRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 30,
          width: 107,
          decoration: BoxDecoration(
            color: const Color(0xff575353),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
              child: Text(
            'Photos',
            style: TextStyle(
                color: AppColors.whiteclr,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          )),
        ),
        const Text(
          'Video',
          style: TextStyle(
              color: Color(0xff706C6C),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        const Text(
          'Tagged',
          style: TextStyle(
              color: Color(0xff706C6C),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Image.asset(
            'assets/More.png',
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
