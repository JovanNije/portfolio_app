import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
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
          GestureDetector(child: TabsWeb("Home"),onTap: ()=>{
            Navigator.pop(context),
          }),
          TabsWeb("Works"),
          TabsWeb("Blog"),
          GestureDetector(child: TabsWeb("About"),onTap: ()=>{
            Navigator.of(context).pushNamed("/about")
          },),
          TabsWeb("Contact")
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
  const BorderedTextPoppins(this.text,this.size,this.Color,{super.key});

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

class AnimatedCardWeb extends StatefulWidget {
  final String imagePath;
  final String text;
  final BoxFit fit;
  final bool reverse;
  final Color color;

  const AnimatedCardWeb({
    super.key,
    required this.imagePath,
    required this.text,
    required this.fit,
    required this.reverse,
    required this.color,
  });

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb> with SingleTickerProviderStateMixin {
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
    // Use the SlideTransition with the animation
    return SlideTransition(
      position: _animation,
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 150, // Adjust width
        child: Card(
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: widget.color),
          ),
          shadowColor: widget.color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: 300,
                width: double.infinity,
                fit: widget.fit,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: PoppinsBold(widget.text, 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  final text;
  final color;
  final maxlines;
  const InputForm({super.key, @required this.text, @required this.color, this.maxlines});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
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
            borderSide:  BorderSide(color: Colors.redAccent,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          )
        ),
      ),
    );
  }
}


