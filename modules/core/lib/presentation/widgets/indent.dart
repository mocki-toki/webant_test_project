import 'package:core/core.dart';

class Indent extends StatelessWidget {
  const Indent({required this.size});

  factory Indent.box10() => Indent(size: Sizes.box10);
  factory Indent.box40() => Indent(size: Sizes.box40);
  factory Indent.box60() => Indent(size: Sizes.box60);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(size: size);
  }
}
