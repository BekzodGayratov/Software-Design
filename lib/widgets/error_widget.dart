import 'package:flutter/cupertino.dart';


class NewsErrorWidget extends StatelessWidget {
  final String error;
  const NewsErrorWidget({super.key,required this.error});

  @override
  Widget build(BuildContext context) {
    return Text(error);
  }
}
