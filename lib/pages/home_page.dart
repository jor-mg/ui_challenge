import 'package:flutter/material.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';

//Detail Place Page
import 'package:ui_challenge/pages/detail_place_page.dart';

//Row Title Category Widget
import 'package:ui_challenge/widgets/row_title_category_widget.dart';

bool isActiveFavorite = false;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<dynamic> categories = [
    {
      'name': "Beach",
      'img':
          "https://www.travelandleisure.com/thmb/HlNYcpqWt9t1IgQq1eTgJG3hp6k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/saud-beach-luzon-philippines-WRLDBEACH0421-15e2c368e7ad4495be803bd60cafa379.jpg",
    },
    {
      'name': "Mountain",
      'img':
          "https://concepto.de/wp-content/uploads/2018/08/monta%C3%B1a-clima-min-e1533762913759.jpg",
    },
    {
      'name': "Forest",
      'img':
          "https://www.cuerpomente.com/medio/2020/05/26/teixedal-de-casaio-ourense_05fe1760_1200x1200.jpg",
    },
    {
      'name': "City",
      'img': "https://definicion.de/wp-content/uploads/2010/01/ciudad-1.jpg",
    },
  ];

  final List<dynamic> places = [
    {
      'name': "Machu Picchu",
      'img':
          "https://images.unsplash.com/photo-1461863109726-246fa9598dc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG1hY2NodSUyMHBpY2NodXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      'addres': "Cusco, Perú",
    },
    {
      'name': "Riviera Maya",
      'img':
          "https://www.intermundial.es/blog/wp-content/uploads/2022/08/consejos-para-viajar-a-riviera-maya-1200x900.jpg",
      'addres': "Quintana, México",
    },
    {
      'name': "Montaña 7 colores",
      'img':
          "https://www.peru.travel/Contenido/General/Imagen/es/302/1.1/Vinicunca.jpg",
      'addres': "Cusco, Perú",
    },
    {
      'name': "Sarakiniko",
      'img':
          "https://www.discovergreece.com/sites/default/files/2019-12/sarakiniko_is_greeces_lunar_landscape-1.jpg",
      'addres': "Milos , Grecia",
    },
    {
      'name': "Torre Eiffel",
      'img':
          "https://images.unsplash.com/photo-1542654071-7ded22488685?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      'addres': "París, Francia",
    },
  ];

  bool isActiveFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Custom app bar
              const CustomAppBar(),

              //Text welcome
              const TextWelcome(),

              //Search input
              const InputSearch(),

              //Title category and text
              const RowTitleCategoryWidget(
                  title: 'Choose Category', subTitle: 'See all'),

              //Slider category
              SliderCategory(categories: categories),

              const SizedBox(height: 20),

              //Title category and text 2
              const RowTitleCategoryWidget(
                  title: 'Favourite places', subTitle: 'Explore'),

              //Slider places
              SliderPlaces(
                places: places,
                isActiveFavorite: isActiveFavorite,
              ),

              const SizedBox(height: 20),

              //Title category and text
              const RowTitleCategoryWidget(
                  title: 'Others places', subTitle: 'See all'),

              //Slider places
              SliderPlaces(
                places: places,
                isActiveFavorite: isActiveFavorite,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 119, 46),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,
                color: Color.fromARGB(255, 128, 128, 128)),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,
                color: Color.fromARGB(255, 128, 128, 128)),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 255, 119, 46),
        showUnselectedLabels: false,
        selectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      ),
    );
  }
}

//Custom AppBar
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Avatar image user
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                  image: NetworkImage('https://i.ibb.co/gWD3WKR/yy45.jpg'),
                  fit: BoxFit.cover),
            ),
          ),

          const SizedBox(width: 15.0),

          //Names
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello,',
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Jorge 👋',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),

          //IconAppBar
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(172, 243, 243, 243),
              ),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(
                Icons.library_books_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Texto Welcome
class TextWelcome extends StatelessWidget {
  const TextWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Text(
        'Where do you want to explore today?',
        style: GoogleFonts.inter(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          height: 1,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

//Input search
class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[350]),
          hintText: "Search destination",
          fillColor: const Color.fromARGB(255, 243, 243, 243),
          suffixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 128, 128, 128),
            size: 30,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        ),
      ),
    );
  }
}

//Slider cateogry
class SliderCategory extends StatelessWidget {
  const SliderCategory({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListView.builder(
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final cate = categories[index];

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              //color: Colors.red,
              border: Border.all(
                color: const Color.fromARGB(172, 243, 243, 243),
                width: 2,
              ),
            ),
            margin: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                //Image category
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(cate['img'] ??
                            'https://user-images.githubusercontent.com/47315479/81145216-7fbd8700-8f7e-11ea-9d49-bd5fb4a888f1.png'),
                        fit: BoxFit.cover),
                  ),
                ),

                const SizedBox(width: 7.0),

                //Title category
                Text(
                  cate['name'],
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.left,
                ),

                const SizedBox(width: 15.0),
              ],
            ),
          );
        },
      ),
    );
  }
}

//Slider places
class SliderPlaces extends StatefulWidget {
  final List places;
  final bool isActiveFavorite;

  const SliderPlaces(
      {super.key, required this.places, required this.isActiveFavorite});

  @override
  State<SliderPlaces> createState() => _SliderPlacesState();
}

class _SliderPlacesState extends State<SliderPlaces> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: ListView.builder(
        itemCount: widget.places.length,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final place = widget.places[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPlacePage(
                    name: place['name'],
                    addres: place['addres'],
                    img: place['img'],
                  ),
                ),
              );
            },
            child: Container(
              width: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                //color: Colors.red,
              ),
              margin: const EdgeInsets.only(right: 10.0),
              child: Stack(
                children: [
                  //Image place
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                      width: 190,
                      height: 260,
                      child: FadeInImage(
                        placeholder: const AssetImage('assets/loading.gif'),
                        image: NetworkImage(place['img']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place['name'],
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              place['addres'],
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star_border_outlined,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              '4.8',
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    top: 15,
                    right: 13,
                    child: _ButtonFavorite(
                      func: () {
                        setState(() => isActiveFavorite = !isActiveFavorite);
                      },
                      isActive: isActiveFavorite,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//Button favorite
class _ButtonFavorite extends StatelessWidget {
  final bool isActive;
  final Function() func;

  const _ButtonFavorite({
    required this.isActive,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(57, 11, 11, 11),
            blurRadius: 10,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: func,
        icon: isActive
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border_outlined),
        iconSize: 22.0,
        color: isActive
            ? const Color.fromARGB(255, 255, 119, 46)
            : const Color.fromARGB(255, 255, 119, 46),
      ),
    );
  }
}
