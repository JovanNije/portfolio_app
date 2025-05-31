import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

//web section
class TabsWeb extends StatefulWidget {
  final title;
  final route;
  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.kanit(
                  shadows: [
                      Shadow(color: Colors.redAccent, offset: Offset(0, -8))
                    ],
                  color: Colors.transparent,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: Colors.black)
              : GoogleFonts.kanit(color: Colors.black, fontSize: 23.0),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(size: 25.0, color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabsWeb(title: "Home", route: '/'),
          TabsWeb(title: "Works", route: '/works'),
          TabsWeb(title: "Blog", route: '/blog'),
          TabsWeb(title: "About", route: '/about'),
          TabsWeb(title: "Contact", route: '/contact'),
        ],
      ),
    );
  }
}

class PoppinsBold extends StatelessWidget {
  final text;
  final size;

  const PoppinsBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style:
            GoogleFonts.poppins(fontSize: size, fontWeight: FontWeight.bold));
  }
}

class Poppins extends StatelessWidget {
  final text;
  final size;
  const Poppins(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(fontSize: size));
  }
}

class BorderedTextPoppins extends StatelessWidget {
  final text;
  final size;
  final Color;
  const BorderedTextPoppins(this.text, this.size, this.Color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color,
          style: BorderStyle.solid,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Poppins(text, size),
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final String imagePath;
  final String text;
  final BoxFit fit;
  final bool reverse;
  final Color color;
  final height;
  final width;

  const AnimatedCard({
    super.key,
    required this.imagePath,
    required this.text,
    required this.fit,
    required this.reverse,
    required this.color,
    this.height,
    this.width,
  });

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true); // Repeat animation with reverse

    // Initialize the SlideTransition animation
    _animation = Tween<Offset>(
      begin: widget.reverse ? Offset(0, 0.08) : Offset.zero,
      end: widget.reverse ? Offset.zero : Offset(0, 0.08),
    ).animate(_controller);
  }

  @override
  void dispose() {
    // Dispose of the controller to avoid memory leaks
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width / 3 - 150,
        height: widget.height ?? 350,
        constraints: BoxConstraints(
          minWidth: 200,
          minHeight: 250,
          maxWidth: 500,
          maxHeight: 500,
        ),
        child: Card(
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: widget.color),
          ),
          shadowColor: widget.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(
                    widget.imagePath,
                    width: double.infinity,
                    fit: widget.fit ?? BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Center(child: PoppinsBold(widget.text, 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  final String text;
  final Color color;
  final double? width;
  final int? maxlines;

  const InputForm(
      {super.key,
      required this.text,
      required this.color,
      this.maxlines,
      this.width});

  @override
  Widget build(BuildContext context) {
    // Set width to 300 if width is null
    final finalWidth = width ?? 300.0;

    return SizedBox(
      width: finalWidth,
      child: TextFormField(
        maxLines: maxlines,
        focusNode: FocusNode(canRequestFocus: false),
        decoration: InputDecoration(
            hintText: text,
            hintStyle: GoogleFonts.poppins(fontSize: 14),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: color),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)))),
      ),
    );
  }
}

//mobile section

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black)),
                child: Image.asset("assets/profile_icon_circle.png"),
              )),
          TabsMobile(text: "Home", route: '/'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Work", route: '/works'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Blog", route: '/blog'),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", route: '/about'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Contact", route: '/contact'),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async => await _launchInBrowser(
                    Uri.parse("https://www.instagram.com/jovanlontos03")),
                icon: SvgPicture.asset(
                  "instagram.svg",
                  width: 35,
                  height: 35,
                  colorFilter: ColorFilter.mode(
                    Colors.purpleAccent,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              IconButton(
                onPressed: () async =>
                    await _launchInBrowser(Uri.parse("https://x.com")),
                icon: SvgPicture.asset(
                  "twitter.svg",
                  width: 35,
                  height: 35,
                  colorFilter: ColorFilter.mode(
                    Colors.blueAccent,
                    BlendMode.srcIn,
                  ),
                ),
                color: Colors.redAccent,
              ),
              IconButton(
                onPressed: () async => await _launchInBrowser(
                    Uri.parse("https://https://github.com/JovanNije")),
                icon: SvgPicture.asset(
                  "github.svg",
                  width: 35,
                  height: 35,
                  colorFilter: ColorFilter.mode(
                    Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
                color: Colors.redAccent,
              )
            ],
          )
        ],
      ),
    );
  }
}
