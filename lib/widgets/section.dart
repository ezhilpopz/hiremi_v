import 'package:hirimee/utils/imports.dart';

class Section extends StatelessWidget {
  final String title;
  final Function editonPressed;
  final Function addonPressed;

  const Section({
    super.key,
    required this.title,
    required this.editonPressed,
    required this.addonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width * 0.055,
            fontWeight: FontWeight.w600,
            color: const Color(0xff0F3CC9),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                editonPressed;
              },
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: const Color(0xff0F3CC9),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  ImageDirectoryConstants.editPencil,
                  height: 18,
                  width: 18,
                  scale: 2,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                addonPressed;
              },
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: const Color(0xff0F3CC9),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
