import 'package:hirimee/utils/imports.dart';
import 'package:hirimee/widgets/bottom_bar.dart';

class VerifiedProfileSection extends StatefulWidget {
  const VerifiedProfileSection({super.key});

  @override
  State<VerifiedProfileSection> createState() => _VerifiedProfileSectionState();
}

class _VerifiedProfileSectionState extends State<VerifiedProfileSection> {
  int currentscreen = 0;
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

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: const Color(0xffF5F5F5),
          leading: Padding(
            padding: const EdgeInsets.only(left: 23),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 38,
                width: 40,
                margin: EdgeInsets.only(top: 8, bottom: 8),
                decoration: BoxDecoration(
                    color: Color(0xffECF5FF),
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  ImageDirectoryConstants.menuImage,
                  scale: 2.8,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 9),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 29,
                ),
              ),
            ),
          ],
          title: Text(
            "Review & Verify Your Profile",
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width * 0.040,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 27),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          value: 100,
                          strokeWidth: 9,
                          color: Color(
                            0xff002ECC,
                          ),
                        ),
                      ),
                      Text(
                        '100%',
                        style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.060,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff217EDF)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Harsh Pawar",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageDirectoryConstants.verifiesBadge,
                    scale: 2,
                  ),
                ),
                Image.asset(ImageDirectoryConstants.line),
                DottedBorder(
                  borderType: BorderType.RRect,
                  strokeWidth: 1,
                  radius: const Radius.circular(8),
                  color: const Color(0xff808080),
                  dashPattern: const [3, 1],
                  child: SizedBox(
                    height: 91,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor: const WidgetStatePropertyAll(
                                  Color(0xff0F3CC9)),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Color(0xff788DCE)),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              )),
                          onPressed: () {},
                          child: Text(
                            "Update resume",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          "Supported Format: URL",
                          style: GoogleFonts.poppins(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff808080),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Section(
                  title: "Personal Details",
                  editonPressed: () {},
                  addonPressed: () {},
                ),
                Text("Full name", style: head),
                Text("John Doe ", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                // sizing,
                Text("Father’s Full Name", style: head),
                Text("Jane Cooper", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Gender", style: head),
                Text("Male", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Date of Birth", style: head),
                Text("25/05/2000", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Birth Place", style: head),
                Text("Kolkata", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("City", style: head),
                Text("65/5 main road first street , Kolkata ", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Differently Abled", style: head),
                Text("No", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Marital Status", style: head),
                Text("No", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Contact Details"),
                Text("Email", style: head),
                Text("example@gmail.com", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("Contact number", style: head),
                Text("00000 00000", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Text("WhatsApp number", style: head),
                Text("00000 00000", style: small),
                const Divider(
                  height: 2,
                  color: Color(0xff000000),
                  thickness: 0.9,
                ),
                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Education Details"),
                EducationTile(
                  coursetitle: "B.Tech, Cse",
                  location: "Bhopal, Madhya pradesh",
                  yearpercentage: "2025 | percentage : 70.00 ",
                ),

                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Experience"),
                EducationTile(
                    coursetitle: "Web Developer",
                    location: "Google - Full Time",
                    yearpercentage: "2021 | Present"),
                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Projects"),
                ProjectTile(
                  title: "Landing Page",
                  descripton: "Description",
                  url: "URL",
                ),
                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Social Links"),
                SocialLinkTile(
                    linkedinurl: "https://www.linkedin.com",
                    githuburl: "https://www.gethub.com"),
                Section(
                    addonPressed: () {},
                    editonPressed: () {},
                    title: "Languages"),
                LanguageTile(
                  language: "Hindi",
                  type: "Fluent",
                ),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 44,
                    width: 168,
                    decoration: BoxDecoration(
                        color: const Color(0xff0F3CC9),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(ImageDirectoryConstants.download),
                          Text(
                            "Download Resume",
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffFFFFFF),
                            ),
                          )
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomBar(
            currentScreen: currentscreen,
            tabSelected: (index) {
              setState(() {
                currentscreen = index;
              });
            }),
      ),
    );
  }
}
