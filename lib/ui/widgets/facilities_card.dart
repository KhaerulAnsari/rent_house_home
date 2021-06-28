part of 'widgets.dart';

class FacilitiesCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  const FacilitiesCard({Key? key, this.imageUrl = '', this.name = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultMargin),
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Center(
            child: Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 10,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
