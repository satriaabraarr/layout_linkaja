import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.white,
  title: Image.asset(
    'assets/linkaja.png', // Ganti dengan path ke gambar di folder assets
    height: 40, // Atur tinggi gambar sesuai kebutuhan
    fit: BoxFit.contain,
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.support_agent),
            onPressed: () {
            },
          ),
        ],
      ),
    ),
  ],
),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BalanceSection(),
            SizedBox(height: 10),
            ServiceGrid(),
            SizedBox(height: 5),
            BannerSection(),
            BestDealsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BalanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFFC60B21),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, SATRIA ABRAR SAMBARANA WIRA PRATAMA',
            style: TextStyle(
              fontSize: 16, 
              fontWeight: FontWeight.bold, 
              color: Colors.white
            ),
          ),
          SizedBox(height: 20),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 160,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Balance',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Rp 9.747',
                              style: TextStyle(
                                fontSize: 16, 
                                fontWeight: FontWeight.bold, 
                                color: Colors.black
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFC60B21),
                              ),
                              child: Icon(
                                Icons.arrow_forward, 
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),

              Container(
                width: 160,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bonus Balance',
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Rp 0',
                              style: TextStyle(
                                fontSize: 16, 
                                fontWeight: FontWeight.bold, 
                                color: Colors.black
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFC60B21),
                              ),
                              child: Icon(
                                Icons.arrow_forward, 
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ServiceItem(icon: Icons.add_circle_outline, label: 'Topup'),
          ServiceItem(icon: Icons.remove_circle_outline, label: 'Cashout'),
          ServiceItem(icon: Icons.arrow_forward, label: 'Send Money'),
          ServiceItem(icon: Icons.apps, label: 'See All'),
          ServiceItem(icon: Icons.phone_android, label: 'Pulsa/Data'),
          ServiceItem(icon: Icons.flash_on, label: 'Electricity'),
          ServiceItem(icon: Icons.tv, label: 'Cable TV & Internet'),
          ServiceItem(icon: Icons.credit_card, label: 'Kartu Uang'),
          ServiceItem(icon: Icons.church, label: 'Gereja'),
          ServiceItem(icon: Icons.volunteer_activism, label: 'Infaq'),
          ServiceItem(icon: Icons.card_giftcard, label: 'Other Donations'),
          ServiceItem(icon: Icons.more_horiz, label: 'More'),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String label;

  ServiceItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red[100],
          child: Icon(icon, color: Color(0xFFC60B21), size: 30),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class BannerSection extends StatefulWidget {
  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<Map<String, dynamic>> banners = [
    {
      'image': 'assets/banner1.jpg',
      'borderRadius': 10.0,
    },
    {
      'image': 'assets/banner2.jpg',
      'borderRadius': 10.0,
    },
    {
      'image': 'assets/banner3.jpg',
      'borderRadius': 10.0,
    },
  ];

  final PageController _pageController = PageController(viewportFraction: 1.0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16.0),
          height: 150, // Mengatur tinggi gambar banner menjadi 160
          child: PageView.builder(
            controller: _pageController,
            itemCount: banners.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 0.0 : 8.0,
                  right: index == banners.length - 1 ? 0.0 : 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: banners[index]['bgColor'],
                    borderRadius: BorderRadius.circular(banners[index]['borderRadius']),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(banners[index]['borderRadius']),
                    child: Image.asset(
                      banners[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (index) {
            return GestureDetector(
              onTap: () {
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Color(0xFFC60B21) : Colors.grey,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

class BestDealsSection extends StatefulWidget {
  @override
  _BestDealsSectionState createState() => _BestDealsSectionState();
}

class _BestDealsSectionState extends State<BestDealsSection> {
  final List<Map<String, dynamic>> deals = [
    {
      'image': 'assets/banner4.jpg',
      'borderRadius': 10.0,
      'description': 'Main Turnamen Mgames & ada hadiah menarik!',
    },
    {
      'image': 'assets/banner5.jpg',
      'borderRadius': 10.0,
      'description': 'Pulsa XL & INDOSAT Turun Harga',
    },
    {
      'image': 'assets/banner6.jpg',
      'borderRadius': 10.0,
      'description': 'Pakai LinkAja di Grab HEMAT s/d 40.000',
    },
  ];

  final PageController _pageController = PageController(viewportFraction: 1.0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Best Deals',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          height: 180, // Atur tinggi kontainer lebih besar dari tinggi gambar
          child: PageView.builder(
            controller: _pageController,
            itemCount: deals.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 0.0 : 8.0,
                  right: index == deals.length - 1 ? 0.0 : 8.0,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(deals[index]['borderRadius']),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(deals[index]['borderRadius']),
                        child: Image.asset(
                          deals[index]['image'],
                          fit: BoxFit.cover,
                          height: 140, // Sesuaikan tinggi gambar
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded( // Menambahkan Expanded untuk menghindari overflow
                      child: Text(
                        deals[index]['description'],
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFFC60B21),
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
        BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
      ],
    );
  }
}