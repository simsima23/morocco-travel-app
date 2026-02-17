import '../models/city.dart';
import '../models/activity.dart';

List<City> getMoroccoCities() {
  return [
    City(
      name: 'Marrakech',
      description: 'The Red City - vibrant markets and historic palaces',
      imagePath: 'assets/images/marrakech.jpg',
      activities: [
        Activity(
          name: 'Visit Jemaa el-Fnaa Square',
          description: 'Experience the bustling main square with street performers, food stalls, and local culture',
          duration: '2-3 hours',
        ),
        Activity(
          name: 'Explore Bahia Palace',
          description: 'Tour this stunning 19th-century palace with beautiful gardens',
          duration: '1-2 hours',
        ),
        Activity(
          name: 'Wander the Souks',
          description: 'Get lost in the traditional markets selling spices, carpets, and crafts',
          duration: '2-4 hours',
        ),
      ],
    ),
    City(
      name: 'Casablanca',
      description: 'Morocco\'s modern economic hub with stunning architecture',
      imagePath: 'assets/images/casablanca.jpg',
      activities: [
        Activity(
          name: 'Hassan II Mosque',
          description: 'Visit one of the largest mosques in the world with ocean views',
          duration: '1-2 hours',
        ),
        Activity(
          name: 'Corniche Beach Walk',
          description: 'Stroll along the Atlantic coastline and enjoy local cafes',
          duration: '1-2 hours',
        ),
        Activity(
          name: 'Rick\'s Café',
          description: 'Visit the famous café inspired by the classic movie',
          duration: '1 hour',
        ),
      ],
    ),
    City(
      name: 'Fes',
      description: 'Ancient imperial city with the world\'s oldest university',
      imagePath: 'assets/images/fes.jpg',
      activities: [
        Activity(
          name: 'Fes el-Bali Medina',
          description: 'Explore the UNESCO World Heritage old city',
          duration: '3-4 hours',
        ),
        Activity(
          name: 'Chouara Tannery',
          description: 'See traditional leather dyeing in colorful vats',
          duration: '1 hour',
        ),
        Activity(
          name: 'Al Quaraouiyine University',
          description: 'Visit the oldest continuously operating university',
          duration: '1 hour',
        ),
      ],
    ),
    City(
      name: 'Chefchaouen',
      description: 'The Blue Pearl - a magical blue-painted mountain town',
      imagePath: 'assets/images/chefchaouen.jpg',
      activities: [
        Activity(
          name: 'Wander Blue Streets',
          description: 'Walk through the famous blue-washed alleyways',
          duration: '2-3 hours',
        ),
        Activity(
          name: 'Ras El Maa Waterfall',
          description: 'Relax by the natural spring and waterfall',
          duration: '1 hour',
        ),
        Activity(
          name: 'Kasbah Museum',
          description: 'Visit the fortress and enjoy panoramic city views',
          duration: '1-2 hours',
        ),
      ],
    ),
  ];
}