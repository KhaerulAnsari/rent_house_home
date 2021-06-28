part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // NOTE : MENU
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 18,
              height: 14,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_menu.png'),
                ),
              ),
            ),
          ),

          // NOTE : TITLE
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
            ),
            child: Text(
              'Find Your\nPerfect Place!',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
          ),

          // NOTE : SEARCH
          SearchButton(),
          // NOTE : CAROUSEL
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  HouseCard(
                    name: 'Modern House',
                    city: 'Bandung',
                    imageUrl: 'assets/image_house1.png',
                  ),
                  HouseCard(
                    name: 'White house',
                    city: 'Jakarta',
                    imageUrl: 'assets/image_house2.png',
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                ],
              ),
            ),
          ),

          // NOTE : RECOMENDED HOUSES
          Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Recomended For You',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                HouseTile(
                  name: 'Wooden House',
                  city: 'Bandung',
                  imageUrl: 'assets/image_house3.png',
                ),
                HouseTile(
                  name: 'Triangle House',
                  city: 'Bogor',
                  imageUrl: 'assets/image_house4.png',
                ),
                HouseTile(
                  name: 'Hill House',
                  city: 'Jakarta',
                  imageUrl: 'assets/image_house5.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
