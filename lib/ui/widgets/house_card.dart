part of 'widgets.dart';

class HouseCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String city;

  const HouseCard(
      {Key? key, this.name = '', this.imageUrl = '', this.city = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailHome()));
      },
      child: Container(
        width: 230,
        height: 210,
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
          color: kWhiteColor,
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 230,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(defaultRadius),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8,
                left: 8,
                right: 12,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          city,
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: kRedColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: kRedColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: kRedColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: kRedColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: kRedColor.withOpacity(0.4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
