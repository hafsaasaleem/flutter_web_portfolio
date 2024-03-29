import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 860,
        maxWidth: 639,
      ),
      child: Image.asset('assets/images/person.png'),
    );
  }
}
