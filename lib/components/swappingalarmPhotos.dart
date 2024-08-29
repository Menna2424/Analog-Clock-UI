import 'package:flutter/material.dart';

class SwappingAlarmPhotos extends StatefulWidget {
  const SwappingAlarmPhotos({super.key});

  @override
  State<SwappingAlarmPhotos> createState() => _SwappingAlarmPhotosState();
}

class _SwappingAlarmPhotosState extends State<SwappingAlarmPhotos> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final int _numPages = 3; // Define the number of pages

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 10,right: 10, top: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Make the column as small as possible
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 350, // Fixed height for the PageView container
                  width: 340,  // Fixed width for the PageView container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        child: Image.asset("images/alarm2.jfif", fit: BoxFit.fill),
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.white),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 10,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color:Colors.white,)))



            ],
          ),
          SizedBox(height: 20), // Spacing between PageView and indicators
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_numPages, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? Color(0xFFF3646C)
                      : Colors.grey,
                ),
              );
            }),
          ),
        ],
      ),
    );

  }
}
