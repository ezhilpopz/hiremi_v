// ignore_for_file: unused_local_variable

import 'package:hirimee/utils/imports.dart';

class EducationTile extends StatelessWidget {
  final String coursetitle;
  final String location;
  final String yearpercentage;
  const EducationTile(
      {super.key,
      required this.coursetitle,
      required this.location,
      required this.yearpercentage});

  @override
  Widget build(BuildContext context) {
    final TextStyle head = GoogleFonts.poppins(
      fontSize: MediaQuery.of(context).size.width * 0.05,
      fontWeight: FontWeight.w600,
      color: const Color(0xff000000),
    );

    final TextStyle small = GoogleFonts.poppins(
        fontSize: MediaQuery.of(context).size.width * 0.035,
        fontWeight: FontWeight.w600,
        color: const Color(0xff626262));

    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 111,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(coursetitle, style: head),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(location, style: small),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff0F3CC9),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(yearpercentage,
                        style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.030,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff626262)))
                  ]),
            ),
          );
        },
      ),
    );
  }
}
