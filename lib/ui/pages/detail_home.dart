part of 'pages.dart';

class DetailHome extends StatelessWidget {
  const DetailHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // NOTE : IMAGE HEADER
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_house1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // NOTE : BODY
            ListView(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 268),
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      // Note : Modern House
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: defaultMargin,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Modern House',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'KBP Bandung,Insonesia',
                                  style: greyTextStyle,
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                StarIcon(color: kRedColor),
                                StarIcon(color: kRedColor),
                                StarIcon(color: kRedColor),
                                StarIcon(color: kRedColor),
                                StarIcon(
                                  color: kRedColor.withOpacity(0.4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Note : Listing Agent
                      Container(
                        margin: EdgeInsets.only(
                          top: 24,
                          left: defaultMargin,
                          right: defaultMargin,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Listing Agent',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/profile.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'De Kezia',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: medium,
                                      ),
                                    ),
                                    Text(
                                      'House Owner',
                                      style: greyTextStyle.copyWith(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/btn_message.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('assets/btn_call.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Note : House Facilities
                      Container(
                        margin: EdgeInsets.only(
                          top: 24,
                          bottom: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'House Facilities',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities1.png',
                                      name: 'Swimming Pool',
                                    ),
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities2.png',
                                      name: '4 Badroom',
                                    ),
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities3.png',
                                      name: 'Garage',
                                    ),
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities1.png',
                                      name: 'Swimming Pool',
                                    ),
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities3.png',
                                      name: 'Garage',
                                    ),
                                    FacilitiesCard(
                                      imageUrl: 'assets/house_facilities3.png',
                                      name: 'Garage',
                                    ),
                                    SizedBox(
                                      width: defaultMargin,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Note : Description
                      Container(
                        margin: EdgeInsets.only(
                          left: defaultMargin,
                          right: defaultMargin,
                          bottom: 44,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Description',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Luxury homes at affordable prices with Bandung's hilly atmosphere. Located in a strategic location, flood free.",
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Note : price
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '\$7,500',
                                  style: blackTextStyle.copyWith(
                                    color: kPurpleColor,
                                    fontSize: 20,
                                    fontWeight: bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Book Now',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                    color: kWhiteColor,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: kPurpleColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: defaultMargin,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // NOTE : BACK BUTTON
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/back_button.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
