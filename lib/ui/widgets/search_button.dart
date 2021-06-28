part of 'widgets.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: EdgeInsets.only(
        left: 20,
        top: 8,
        right: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          27.5,
        ),
        color: kWhiteColor,
        boxShadow: [],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Find your dream home',
                hintStyle: greyTextStyle,
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/button_search.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget animationText() {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          '',
          textStyle: greyTextStyle,
        ),
      ],
    );
  }
}
