import 'package:ecommerceflutter/core/utils/colors.dart';
import 'package:ecommerceflutter/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;

  double _bottomNavBarOffset = 0.0; // Offset for the bottom navigation bar

  // Pages corresponding to the bottom navigation items
  final List<Widget> _pages = [
    const Home(),
    const Center(child: Text('Cart')),  // Text displayed when Cart is selected
    const Center(child: Text('My Orders')),  // Text for My Orders
    const Center(child: Text('Account')),  // Text for Account
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener); // Listen to scroll events
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose of the ScrollController
    super.dispose();
  }

  // Scroll listener to hide/show the bottom navigation bar
  void _scrollListener() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      // Scrolling down
      setState(() {
        _bottomNavBarOffset =72; // Move down
      });
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      // Scrolling up
      setState(() {
        _bottomNavBarOffset = 0.0; // Move up
      });
    }
  }

  // Function to handle navigation on item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Update the index to show the selected page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,  // Display the selected page from the _pages list
      ),

      // Animated Bottom Navigation Bar
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, _bottomNavBarOffset), // Apply the offset to move the bar
        child: Container(
          
          height:72,  // Set the height you desire
          decoration: BoxDecoration(
        border: const Border(top: BorderSide(color: Colors.grey)),
            color: AppColors.whiteColor  // Background color for the bottom navigation
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home_filled, 'Home', 0),
                _buildNavItem(Icons.shopping_basket, 'Cart', 1),
                _buildNavItem(Icons.shopify, 'My Orders', 2),
                _buildNavItem(Icons.group, 'Account', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create navigation items
  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? AppColors.greenColor : Colors.grey, size: 30),
          Text(
            label,
            style: TextStyle(color: isSelected ?  AppColors.greenColor : Colors.grey),
          ),
        ],
      ),
    );
  }
}
