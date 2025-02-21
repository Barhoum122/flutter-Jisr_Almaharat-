import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomTabContainer extends StatefulWidget {
  const CustomTabContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTabContainerState createState() => _CustomTabContainerState();
}

class _CustomTabContainerState extends State<CustomTabContainer> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Custom TabBar
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              _buildTabButton(0, "Tab 1", Icons.home),
              _buildTabButton(1, "Tab 2", Icons.settings),
            ],
          ),
        ),
        SizedBox(height: 15),
    
        // Tab Content
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: selectedTab == 0
              ? CustomCard(
                  key: ValueKey(0),
                  title: "Tab 1",
                  description: "This is the first tab content",
                  svgPath: 'assets/images/background.svg',
                )
              : const CustomCard(
                  key: ValueKey(1),
                  title: "Tab 2",
                  description: "This is the second tab content",
                  svgPath: 'assets/images/background.svg',
                ),
        ),
      ],
    );
  }

  // Method to create the tab buttons
  Widget _buildTabButton(int index, String title, IconData icon) {
    bool isActive = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isActive ? Colors.white : Colors.black54),
              SizedBox(width: 5),
              Text(
                title,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black54,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Card widget with SVG background
class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String svgPath;

  const CustomCard({
    required this.title,
    required this.description,
    required this.svgPath, required Key key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SvgPicture.asset(
            svgPath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 160,
          ),
        ),
        Container(
          height: 160,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 24),
                  SizedBox(width: 5),
                  Icon(Icons.favorite, color: Colors.red, size: 24),
                  SizedBox(width: 5),
                  Icon(Icons.share, color: Colors.white, size: 24),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
