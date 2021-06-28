part of 'widgets.dart';

class StarIcon extends StatelessWidget {
  final Color color;
  const StarIcon({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.star,
        color: color,
        size: 16,
      ),
    );
  }
}
