// ignore_for_file: unused_local_variable

import 'package:hirimee/utils/imports.dart';

class ProjectTile extends StatelessWidget {
  final String title;
  final String descripton;
  final String url;

  const ProjectTile(
      {super.key,
      required this.title,
      required this.descripton,
      required this.url});

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
        itemCount: 2,
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
                    Text(title, style: head),
                    Text(descripton, style: small),
                    Text(url,
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
