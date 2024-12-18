import 'package:hirimee/utils/imports.dart';

class LanguageTile extends StatelessWidget {
  final String language;
  final String type;
  const LanguageTile({super.key, required this.language, required this.type});

  @override
  Widget build(BuildContext context) {
    final TextStyle head = GoogleFonts.poppins(
      fontSize: MediaQuery.of(context).size.width * 0.05,
      fontWeight: FontWeight.w600,
      color: const Color(0xff000000),
    );

    // ignore: unused_local_variable
    final TextStyle small = GoogleFonts.poppins(
        fontSize: MediaQuery.of(context).size.width * 0.035,
        fontWeight: FontWeight.w600,
        color: const Color(0xff626262));

    return SizedBox(
      child: ListView.builder(
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 47,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(language, style: head),
                    Text(type,
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ))
                  ]),
            ),
          );
        },
      ),
    );
  }
}
