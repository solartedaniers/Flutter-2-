import '../models/product.dart';

// Lista simulada de productos
class SampleProducts {
  static List<Product> getProducts() {
    return [
      Product(
        id: 1,
        name: "Laptop Gamer",
        description: "Laptop de alto rendimiento con 16GB RAM, SSD 1TB.",
        price: 2500,
        image: "https://picsum.photos/300?1",
      ),
      Product(
        id: 2,
        name: "Mouse RGB",
        description: "Mouse ergonómico con iluminación personalizable.",
        price: 80,
        image: "https://picsum.photos/300?2",
      ),
      Product(
        id: 3,
        name: "Teclado Mecánico",
        description: "Switch Blue profesional ideal para programación.",
        price: 150,
        image: "https://picsum.photos/300?3",
      ),
      Product(
        id: 4,
        name: "Monitor 27''",
        description: "Resolución 4K UHD para diseño y gaming.",
        price: 620,
        image: "https://picsum.photos/300?4",
      ),
      Product(
        id: 5,
        name: "Audífonos Pro",
        description: "Cancelación de ruido activa, sonido envolvente.",
        price: 210,
        image: "https://picsum.photos/300?5",
      ),
      Product(
        id: 6,
        name: "Silla Gamer",
        description: "Ergonómica, soporte lumbar profesional.",
        price: 340,
        image: "https://picsum.photos/300?6",
      ),
      Product(
        id: 7,
        name: "Tablet",
        description: "Pantalla AMOLED ideal para trabajo y estudio.",
        price: 480,
        image: "https://picsum.photos/300?7",
      ),
      Product(
        id: 8,
        name: "Smartwatch",
        description: "Monitoreo cardíaco, deportivo y notificaciones.",
        price: 190,
        image: "https://picsum.photos/300?8",
      ),
      Product(
        id: 9,
        name: "Disco SSD",
        description: "Velocidad extrema NVMe 1TB.",
        price: 130,
        image: "https://picsum.photos/300?9",
      ),
      Product(
        id: 10,
        name: "Cámara Web HD",
        description: "Ideal para streaming y videollamadas.",
        price: 95,
        image: "https://picsum.photos/300?10",
      ),
      Product(
        id: 11,
        name: "Router Gaming",
        description: "WiFi 6 ultra rápido para baja latencia.",
        price: 260,
        image: "https://picsum.photos/300?11",
      ),
    ];
  }
}
