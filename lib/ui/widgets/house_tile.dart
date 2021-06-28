part of 'widgets.dart';

class HouseTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;

  const HouseTile({
    Key? key,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kWhiteColor,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
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
          Icon(
            Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
