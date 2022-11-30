import 'package:flutter/material.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';

//Home page
import 'package:ui_challenge/pages/home_page.dart';

//Custom button widget
import 'package:ui_challenge/widgets/custom_button_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

int numberText = 0;

final styleTextTitle = GoogleFonts.inter(
  fontSize: 30,
  fontWeight: FontWeight.w900,
  height: 1,
);

final styleTextSubTitle = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: const Color.fromARGB(255, 121, 121, 121),
  height: 1,
);

final List<dynamic> texts = [
  {
    "title": 'Lets explore the world',
    "subtitle":
        "let's explore the world with us just a few click and run around the world",
  },
  {
    "title": 'Nostrud pariatur sunt',
    "subtitle":
        "do in Lorem adipisicing amet anim ipsum ipsum occaecat cupidatat pariatur.",
  },
  {
    "title": 'Irure pariatur pariatur',
    "subtitle": "fugiat culpa laboris nulla culpa culpa magna.",
  },
];

const primaryColor = Color.fromARGB(255, 255, 119, 46);

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //Image page
          const ImagePage(),

          //Texts slider
          SizedBox(
            height: sizeHeight * 0.2,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  numberText = value;
                });
              },
              itemCount: texts.length,
              itemBuilder: (context, index) {
                final texto = texts[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Text(
                          texto['title'],
                          style: styleTextTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        "let's explore the world with us just a few click and run around the world",
                        style: styleTextSubTitle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          //Circle animation indicator
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  texts.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: numberText == index
                          ? primaryColor
                          : const Color.fromARGB(255, 182, 182, 182),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              )
            ],
          ),

          //Button start
          const ButtonCustomWidget(
            widget: HomePage(),
          ),
        ],
      ),
    );
  }
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: sizeHeight * 0.60,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://i.ibb.co/mT8F10K/fondito.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
