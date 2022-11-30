import 'package:flutter/material.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';

//Page home
import 'package:ui_challenge/pages/home_page.dart';
import 'package:ui_challenge/widgets/custom_button_widget.dart';

class DetailPlacePage extends StatelessWidget {
  final String name;
  final String addres;
  final String? img;

  const DetailPlacePage({
    Key? key,
    required this.name,
    required this.addres,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(img ??
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        iconSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_rounded),
                        iconSize: 25.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 330),
                width: double.infinity,
                //height: 400,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color.fromARGB(172, 224, 224, 224),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'FAVORITE PLACE',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              height: 1,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          const Icon(
                            Icons.verified,
                            color: Color.fromARGB(255, 255, 126, 6),
                            size: 15,
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        name,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            addres,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '36.5K+',
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'people have explored',
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 117),
                          SizedBox(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: const [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      'https://i.ibb.co/gWD3WKR/yy45.jpg'),
                                ),
                                Positioned(
                                  left: 20,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                                  ),
                                ),
                                Positioned(
                                  left: 40,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Laboris sit consequat cillum occaecat dolor exercitation excepteur reprehenderit sit occaecat aliquip excepteur in. Elit duis magna ullamco adipisicing id eu aliquip aliqua magna est. Aute et consequat.',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Text(
                                '4.8',
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_downward_sharp,
                            color: Colors.black,
                            size: 20,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\$120.00",
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ' /person',
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 150,
                            height: 55,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 255, 126, 6)
                                      .withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: const Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ));
                              },
                              color: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Book Now',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
