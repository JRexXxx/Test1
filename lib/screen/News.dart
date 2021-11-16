import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:test/config/constant.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:expandable/expandable.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  //static final loremIpsum = 'Deserunt veniam ad tempor ipsum non amet qui tempor. Nulla anim ullamco dolor pariatur culpa consectetur nulla nisi irure. Id do et veniam nostrud tempor officia commodo anim cupidatat nisi. Duis anim est ipsum ut proident cillum amet esse ad adipisicing nulla commodo.';

  late ExpandableController controller;

  @override
  void initState() {
    super.initState();

    controller = ExpandableController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            buildCard(
              'Dota 2 1v1 - Shadow Fiend Arcana Cup',
              'https://cutewallpaper.org/21/shadow-fiend-arcana/Dota-2-1v1-SF-Arcana-Cup-Sunday-tournament-epulze.com.png',
              'The tournament is fully automated, so make sure to have the latest patch downloaded before the tournament starts. You are required to play on the same Steam account that you are synced with your Epulze account.',
              
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://epulze.com/dota2/tournaments/73473'),
              builder: (context, followLink) => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: followLink,
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Open Link",
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
              ),
               buildCard(
                'LuponWXC Cup Season 9',
                'https://i.ytimg.com/vi/dN7G-0fIl2A/maxresdefault.jpg',
                'The LuponWXC Cup is back with its 9th season! In partnership with Kumu and Epulze, amateur #Dota2 teams from around South East Asia will face off in a B01 and BO3 battle royale for a piece of the 40k PHP prize pool and a chance at competing against amateur teams.',
                ),
                Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://epulze.com/dota2/tournaments/72185'),
              builder: (context, followLink) => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: followLink,
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Open Link",
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
              ),
            buildCard(
              'Marci Marches In',
              'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/clans/3703047/e5a57f7b21063e63c40a4073903fe02560ebe95c.png',
              'Today Marci powers her way from DOTA: Dragons Blood into the battle of the Ancients as the newest hero to join the fight, proving that undying loyalty yields unrivaled power.  Marci marches into battle ready to raise fists in defense of her companions. Head over to the Marci update page to learn about her abilities and more',
              
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://www.dota2.com/newsentry/3072011449237014150'),
              builder: (context, followLink) => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: followLink,
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Open Link",
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
              ),
              buildCard(
              'Valve updates Dota Pro Circuit rulings, includes weighted Regional League and Major point distribution',
              'https://cdn1.dotesports.com/wp-content/uploads/2021/10/22015857/51599199277_98a477caed_k-1.jpg',
              'Valve has quietly updated the Dota Pro Circuit and The International 11 listings page on the Dota 2 esports website, including a lot of important details in the frequently asked questions segment that will greatly impact how the upcoming season is run. Immediately, the update confirms information provided by Alliance during TI10, noting that the 2022 DPC will be split into three “Tours” that will each consist of a Regional League season and a Major. The format of both competitions will remain the same, but they will scale differently, putting more of an emphasis on the competitions that happen later in the circuit. ',
              
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://dotesports.com/dota-2/news/valve-updates-dota-pro-circuit-rulings-includes-weighted-regional-league-and-major-point-distribution'),
              builder: (context, followLink) => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: followLink,
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Open Link",
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
              ),
            buildCard(
                'The International Main Event',
                'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/clans/3703047/7c5a93d3e497813ba9065b2a32d0b14f071a1217.png',
                'The International Main Event kicks off at National Arena in Bucharest in less than twelve hours. Tune in from 10 am EEST via the DPC website, the Dota client, or over on Twitch to catch all of the main stage action as the final 16 teams face off for the Aegis.',
                ),
                  Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://www.dota2.com/newsentry/2998826269360184297'),
              builder: (context, followLink) => RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: PColor)),
                    onPressed: followLink,
                    color: PColor,
                    textColor: Colors.white,
                    child: Text("Open Link",
                        style: GoogleFonts.sniglet(fontSize: 16,fontWeight: FontWeight.w500)),
                  ),
              ),
           
          ],
        ),
      );

  Widget buildCard(String title, String urlImage, String loremIpsum) =>
      ExpandableNotifier(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () => controller.toggle(),
                  child: Image.network(urlImage),
                ),
                ScrollOnExpand(
                  child: ExpandablePanel(
                    controller: controller,
                    theme: ExpandableThemeData(
                      expandIcon: Icons.arrow_downward,
                      collapseIcon: Icons.arrow_downward,
                      tapBodyToCollapse: true,
                      tapHeaderToExpand: true,
                    ),
                    header: Text(
                      title,
                      style: GoogleFonts.sniglet(fontSize: 24,fontWeight: FontWeight.w500)
                    ),
                    collapsed: Text(
                      loremIpsum,
                      style: GoogleFonts.sniglet(fontSize: 18,fontWeight: FontWeight.w500),
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Text(
                      List.generate(1, (_) => loremIpsum).join('\n\n'),
                      style: GoogleFonts.sniglet(fontSize: 18,fontWeight: FontWeight.w500),
                    ),
                    
                    builder: (_, collapsed, expanded) => Padding(
                      padding: EdgeInsets.all(10).copyWith(top: 0),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                      ),
                    ),
                  ),
                ),
                /**Link(
              target: LinkTarget.blank,
              uri: Uri.parse(link),
              builder: (context, followLink) => GestureDetector(
                onTap: followLink,
                child: Text(
                  'Open Link',textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    
                  ),
                ),
              ),
            ), 
           **/   ],
            ),
          ),
        ),
      );
}
