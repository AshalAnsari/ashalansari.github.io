import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: InkWell(
        onTap: () {
          // const String phoneNumber = "00923342652039"; // Your phone number
          // const String message =
          //     "Hello I would like to contact you"; // Custom message
          final Uri url = Uri.parse("https://github.com/AshalAnsari");
          launchUrl(Uri.parse('$url'));
        },
        borderRadius: BorderRadius.circular(defaultPadding + 10),
        child: Container(
            height: 60,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultPadding),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, -1),
                      blurRadius: defaultPadding / 4),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: defaultPadding / 4),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                  size: 25,
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  'Github',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
