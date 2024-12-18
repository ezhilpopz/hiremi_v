// ignore_for_file: unused_local_variable

import 'package:hirimee/utils/imports.dart';

class SocialLinkTile extends StatelessWidget {
  final String linkedinurl;
  final String githuburl;
  const SocialLinkTile(
      {super.key, required this.linkedinurl, required this.githuburl});

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
          return Column(
            children: [
              Container(
                height: 82,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageDirectoryConstants.linkedin),
                        Text(linkedinurl, style: head),
                      ]),
                ),
              ),
              Container(
                height: 82,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(ImageDirectoryConstants.github),
                        Text(githuburl, style: head),
                      ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
