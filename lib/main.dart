import 'package:flutter/material.dart';

void main() {
  runApp(MentalHealthApp());
}

class MentalHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health',
      theme: ThemeData(
        primaryColor: Color(0xFF0077b6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0077b6), // Цвет AppBar
          foregroundColor: Colors.white, // Цвет текста AppBar
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF0077b6), // Белый цвет текста на кнопках
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Список экранов для отображения
  final List<Widget> _screens = [
    HomeScreen(),
    PsychologistSearchScreen(),
    ArticlesScreen(),
    ProfileScreen(), // Новый экран - Профиль
    SupportScreen(), // Новый экран - Контакты
  ];

  // Метод переключения экранов
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedIndex == 0
            ? 'Mental Health'
            : _selectedIndex == 1
            ? 'Поиск психолога'
            : _selectedIndex == 2
            ? 'Статьи и советы'
            : _selectedIndex == 3
            ? 'Профиль'
            : 'Контакты с поддержкой'),
      ),
      body: _screens[_selectedIndex], // Меняем экран в зависимости от индекса
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Статьи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Контакты',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF0077b6),
        onTap: _onItemTapped, // Меняем индекс при нажатии на пункт меню
      ),
    );
  }
}

// Экран Главной страницы
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( // Обёртка для текста с дополнительным стилем
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Добро пожаловать в Mental Health',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          Container( // Обёртка для кнопки с фоном
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Поиск психолога'),
            ),
          ),
          SizedBox(height: 20),
          Container( // Обёртка для другой кнопки с фоном
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Статьи и советы'),
            ),
          ),
        ],
      ),
    );
  }
}

// Экран поиска психолога
class PsychologistSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // Обёртка для текста
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Здесь будет поиск психологов'),
      ),
    );
  }
}

// Экран со статьями
class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // Обёртка для текста
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Здесь будут статьи и советы'),
      ),
    );
  }
}

// Экран профиля
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // Обёртка для текста
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Здесь будет профиль пользователя'),
      ),
    );
  }
}

// Экран контактов с поддержкой
class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container( // Обёртка для текста
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Здесь будут контакты с поддержкой'),
      ),
    );
  }
}
