import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    AccountPage(),
    AccountPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedIndex], 
        bottomNavigationBar: Container(
          height: 63.0, 
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped, 
            selectedItemColor: Color(0xFFC60B21),
            unselectedItemColor: Colors.grey, 
            iconSize: 24.0, 
            selectedLabelStyle: TextStyle(fontSize: 12.0), 
            unselectedLabelStyle: TextStyle(fontSize: 12.0), 
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment), 
                label: 'Pay', 
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.inbox),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            type: BottomNavigationBarType.fixed, 
          ),
        ),
      ),
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
    'assets/linkaja.png', 
    height: 40, 
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
          height: 150, 
          child: PageView.builder(
            controller: _pageController,
            itemCount: banners.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 0), 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(banners[index]['borderRadius']),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(banners[index]['borderRadius']),
                  child: Image.asset(
                    banners[index]['image'],
                    fit: BoxFit.cover,
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
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          height: 180, 
          child: PageView.builder(
            controller: _pageController,
            itemCount: deals.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 0), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 140, 
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      deals[index]['description'],
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
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

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Transaction History',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xFFC60B21),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('All Transactions Is Completed!')),
            DoneTransactionsList(),
          ],
        ),
      ),
    );
  }
}

class DoneTransactionsList extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'title': 'Pay Merchant',
      'date': '15 Sep 2024, 17:32 WIB',
      'amount': 'Rp45.400',
      'status': 'Success',
      'details': 'Indomaret_purchase',
    },
    {
      'title': 'Pay Merchant',
      'date': '15 Sep 2024, 17:28 WIB',
      'amount': 'Rp55.000',
      'status': 'Success',
      'details': 'Indomaret_purchase',
    },
    {
      'title': 'Top Up from Bank',
      'date': '15 Sep 2024, 17:26 WIB',
      'amount': 'Rp100.000',
      'status': 'Success',
      'details': 'Top Up from BCA',
    },
    {
      'title': 'Top Up from Bank',
      'date': '15 Sep 2024, 17:26 WIB',
      'amount': 'Rp100.000',
      'status': 'Success',
      'details': 'Top Up from BCA',
    },
    {
      'title': 'Top Up from Bank',
      'date': '15 Sep 2024, 17:26 WIB',
      'amount': 'Rp100.000',
      'status': 'Success',
      'details': 'Top Up from BCA',
    },
    {
      'title': 'Pay QRIS',
      'date': '31 Aug 2024, 11:49 WIB',
      'amount': 'Rp21.000',
      'status': 'Success',
      'details': 'SBY - MOG TP S1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      transaction['amount'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black, 
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction['date'],
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      transaction['status'],
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), 
                Text(
                  transaction['details'],
                  style: TextStyle(color: const Color.fromARGB(255, 71, 71, 71), fontSize: 12),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileHeader(),
              Divider(thickness: 8),
              _buildListTile('Account Type', 'FULL SERVICE'),
              Divider(),
              _buildListTile('Account Settings', ''),
              Divider(),
              _buildListTile('LinkAja Syariah', 'Not Active'),
              Divider(),
              _buildListTile('Payment Method', ''),
              Divider(thickness: 8),
              _buildListTile('Email', 'satria.abrarr@gmail.com'),
              Divider(),
              _buildListTile('Security Question', 'Set'),
              Divider(),
              _buildListTile('PIN Settings', ''),
              Divider(thickness: 8),
              _buildListTile('Language', 'English'),
              Divider(),
              _buildListTile('Terms of Service', ''),
              Divider(),
              _buildListTile('Privacy Policy', ''),
              Divider(thickness: 8),
              _buildLogoutTile(), 
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Satria Abrar Sambarana Wira Pratama',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('+6285575739005',
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/foto.jpg'), 
            radius: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, String subtitle, {bool isLogout = false}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isLogout ? Color(0xFFC60B21) : null, 
            ),
          ),
          if (subtitle.isNotEmpty)
            Row(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey, 
                  ),
                ),
                SizedBox(width: 8), 
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16, 
                  color: Color(0xFFC60B21), 
                ),
              ],
            ),
        ],
      ),
      onTap: () {
        
      },
    );
  }

  Widget _buildLogoutTile() {
    return Container(
      alignment: Alignment.center, 
      padding: EdgeInsets.symmetric(vertical: 16), 
      child: Text(
        'Log Out',
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          color: Color(0xFFC60B21), 
          fontSize: 16, 
        ),
      ),
    );
  }
}
