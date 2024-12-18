import 'package:hirimee/utils/imports.dart';

class BottomBar extends StatefulWidget {
  final int currentScreen;
  final ValueChanged<int> tabSelected;

  const BottomBar({
    super.key,
    required this.currentScreen,
    required this.tabSelected,
  });

  @override
  State<BottomBar> createState() => _BottombarState();
}

class _BottombarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0, bottom: 20.0, left: 17.0),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
            bottom: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customItem(
                image: ImageDirectoryConstants.home,
                screentitle: 'Home',
                index: 0,
              ),
              customItem(
                image: ImageDirectoryConstants.job,
                screentitle: 'Jobs',
                index: 1,
              ),
              customItem(
                image: ImageDirectoryConstants.askexper,
                screentitle: 'Ask Expert',
                index: 2,
              ),
              customItem(
                image: ImageDirectoryConstants.status,
                screentitle: 'Status',
                index: 3,
              ),
              customItem(
                  image: ImageDirectoryConstants.infinity,
                  screentitle: '360',
                  index: 4)
            ],
          ),
        ),
      ),
    );
  }

  Widget customItem({
    required String image,
    required String screentitle,
    required int index,
  }) {
    final isSelected = widget.currentScreen == index;
    return GestureDetector(
      onTap: () {
        widget.tabSelected(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 10,
            width: 10,
            scale: 2,
            color: isSelected ? Color(0xff217EDF) : const Color(0xFF616161),
          ),
          const SizedBox(height: 6),
          Text(
            screentitle,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.022,
              fontWeight: FontWeight.w400,
              color: isSelected ? Color(0xff217EDF) : const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }
}
