import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/components/knowledges.dart';
import 'package:flutter_profile/screens/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: 'Residence',
                      text: 'India',
                    ),
                    AreaInfoText(
                      title: 'City',
                      text: 'Mumbai',
                    ),
                    AreaInfoText(
                      title: 'Age',
                      text: '22',
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    TextButton(
                      onPressed: () async {
                        final url = Uri.parse(
                            "https://drive.google.com/file/d/10LszQ2O34QROugKNtAi2ogA3uyghHWFS/view?usp=drivesdk");
                        if (await canLaunchUrl(url)) {
                          launchUrl(url);
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              'DOWNLOAD CV',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            SvgPicture.asset('assets/icons/download.svg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(
                        0xFF24242E,
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                              onPressed: () async {
                                final url = Uri.parse(
                                    "https://www.linkedin.com/in/yashashvi-devadiga-0b6a4b200");
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                }
                              },
                              icon: SvgPicture.asset(
                                  'assets/icons/linkedin.svg')),
                          IconButton(
                              onPressed: () async {
                                final url = Uri.parse(
                                    "https://github.com/Yashashvi2002");
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                }
                              },
                              icon:
                                  SvgPicture.asset('assets/icons/github.svg')),
                          IconButton(
                              onPressed: () async {
                                final url = Uri.parse("");
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                }
                              },
                              icon:
                                  SvgPicture.asset('assets/icons/twitter.svg')),
                          IconButton(
                              onPressed: () async {
                                final url = Uri.parse("");
                                if (await canLaunchUrl(url)) {
                                  launchUrl(url);
                                }
                              },
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: bodyTextColor,
                              )),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
