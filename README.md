# toko_anita

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
* Stateless Widget adalah widget yang bersifat immutable atau tidak bisa dirubah. Widget ini cocok digunakan untuk elemen yang tidak berubah sepanjang waktu atau tidak tergantung pada data yang dapat diperbarui. Widget ini cocok untuk elemen statis atau konten tetap yang hanya butuh ditampilkan satu kali tanpa perubahan.
* Stateful Widget adalah widget yang bersifat muttable atau widget yang dapat berubah dan memiliki state yang bisa diperbarui saat aplikasi berjalan. Widget ini memiliki objek State terpisah yang digunakan untuk menyimpan data atau status yang dapat diubah. Cocok untuk elemen yang perlu diubah atau diperbarui secara real-time, misalnya mengubah teks ketika tombol ditekan atau memperbarui data dari internet.
## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya
1. `main.dart`

| Nama          | Fungsi                                                                                                                                        |
| --------------|:---------------------------------------------------------------------------------------------------------------------------------------------:|
| `runApp`      | Memulai aplikasi Flutter dan menampilkan widget yang diberikan di layar penuh.                                                                |
| `MaterialApp` | Widget utama yang mengatur keseluruhan aplikasi Flutter. Menyediakan tema, navigasi, dan pengaturan parameter penting seperti judul aplikasi. |
| `ThemeData`   | Mendefinisikan tema aplikasi, termasuk warna, font, dan gaya elemen UI.                                                                       |
| `ColorScheme` | Menyediakan skema warna untuk aplikasi, termasuk warna primer dan sekunder yang digunakan di seluruh aplikasi.                                |

4. `menu.dart`
   
| Nama          | Fungsi                                                                                                                                        |
| --------------|:---------------------------------------------------------------------------------------------------------------------------------------------:|
| `Scaffold`    | Digunakan untuk mengatur layout utama halaman beserta struktur dasar aplikasi. Widget dasar untuk membangun halaman.                          |
| `AppBar`      | Widget yang digunakan untuk menyediakan area header di bagian atas layar, biasanya berisi judul dan opsi navigasi.                            |
| `Padding`     | Memberikan ruang kosong di sekitar widget.                                                                                                    |
| `Column`      | Menyusun widget secara vertikal.                                                                                                              |
| `Row`         | Menyusun widget secara horizontal. Digunakan untuk menampilkan beberapa `InfoCard` secara berdampingan dalam satu baris.                      |
| `Card`        | Menampilkan widget dalam kotak dengan efek bayangan, biasanya digunakan untuk menonjolkan informasi tertentu.                                 |
| `Text`        | Menampilkan teks statis. Digunakan untuk menampilkan berbagai teks seperti judul, sambutan, dan informasi di dalam kartu.                     |
| `InkWell`     | Menyediakan efek klik atau sentuh untuk widget yang dibungkusnya.                                                                             |
| `SnackBar`    | Menampilkan pesan singkat di bagian bawah layar, biasa digunakan untuk notifikasi sementara.                                                  |
| `Icon`        | Menampilkan ikon di layar.                                                                                                                    |

Dengan format ini, Anda dapat dengan mudah melihat fungsi masing-masing widget yang digunakan dalam aplikasi Flutter Anda. Jika ada tambahan informasi atau kolom lain yang diinginkan, silakan beri tahu!
## Apa fungsi dari `setState()` ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
Fungsi `setState()` dalam widget Stateful Flutter digunakan untuk memberitahu framework bahwa ada perubahan pada state widget yang memerlukan pembaruan tampilan. Ketika `setState()` dipanggil, Flutter akan memicu proses rendering ulang hanya pada bagian yang terpengaruh, sehingga perubahan pada UI dapat terlihat dengan segera tanpa perlu merender ulang seluruh halaman. Variabel yang dapat dipengaruhi oleh fungsi ini adalah variabel yang dideklarasikan dalam kelas `State`, yang biasanya menyimpan data dinamis atau status aplikasi yang berubah seiring dengan interaksi pengguna, seperti nilai penghitung, data input pengguna, atau elemen daftar yang diperbarui.

## Jelaskan perbedaan antara `const` dengan `final`
Perbedaan utama antara `const` dan `final` di Dart adalah pada waktu inisialisasi dan fleksibilitas nilainya. `final` digunakan untuk variabel yang hanya diinisialisasi sekali dan dapat menerima nilai yang ditentukan saat runtime. Sebaliknya, `const` digunakan untuk konstanta yang nilainya tetap dan ditentukan saat kompilasi. Objek `const` bersifat singleton; jika ada dua objek `const` dengan nilai yang sama, Dart akan menggunakan satu instance yang sama di memori.
## Cara mengimplementasi
1. Buka terinal lalu generate proyek dengan cara
```
flutter create <APP_NAME>
cd <APP_NAME>
```
2. Jalankan proyek dengan
    ```
    flutter run
    ```
3. Buatlah file baru di `lib` dengan nama `menu.dart`, lalu tambahkan
     ```
     import 'package:flutter/material.dart';
     ```
4. Cut baris 39 sampai bawah dari `mmain.dart` dan pindahkan ke  `menu.dart`
   ```
        class MyHomePage ... {
        ...
    }
    
    class _MyHomePageState ... {
        ...
    }
    ```
5. Ubah `mmain.dart` menjadi :
   ```
      import 'package:flutter/material.dart';
      import 'package:toko_anita/menu.dart'; 
      
      void main() {
        runApp(const MyApp());
      }
      
      class MyApp extends StatelessWidget {
        const MyApp({super.key});
      
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            title: 'Toko Anita',
            theme: ThemeData(
              // Set primaryColor and secondary color directly
              primaryColor: const Color.fromARGB(255, 66, 159, 125), // Hijau
              colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: const Color.fromARGB(255, 66, 159, 125), // Hijau
                secondary: const Color.fromARGB(255, 43, 143, 152), // Teal
              ),
              useMaterial3: true,
            ),
            home: MyHomePage(),
          );
        }
    }

    ```
6. Ubah `mmenu.dart` menjadi sebagai berikut :
    ```
      import 'package:flutter/material.dart';

      class MyHomePage extends StatelessWidget {
        final String npm = '2306152273'; // NPM
        final String name = 'Anita Khoirun Nisa'; // Nama
        final String className = 'PBP E'; // Kelas
  
        final List<ItemHomepage> items = [
               ItemHomepage("Lihat Daftar Produk", Icons.shopping_bag, const Color.fromARGB(255, 32, 91, 45)),
               ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(66, 146, 158, 70)),
               ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 186, 74, 66)),
           ];
      
        MyHomePage({super.key});
      
          @override
        Widget build(BuildContext context) {
          // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
          return Scaffold(
            // AppBar adalah bagian atas halaman yang menampilkan judul.
            appBar: AppBar(
              // Judul aplikasi "Toko Anita" dengan teks putih dan tebal.
              title: const Text(
                'Toko Anita',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            // Body halaman dengan padding di sekelilingnya.
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              // Menyusun widget secara vertikal dalam sebuah kolom.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Row untuk menampilkan 3 InfoCard secara horizontal.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoCard(title: 'NPM', content: npm),
                      InfoCard(title: 'Name', content: name),
                      InfoCard(title: 'Class', content: className),
                    ],
                  ),
    
                // Memberikan jarak vertikal 16 unit.
                const SizedBox(height: 16.0),
    
                // Menempatkan widget berikutnya di tengah halaman.
                Center(
                  child: Column(
                    // Menyusun teks dan grid item secara vertikal.
    
                    children: [
                      // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Welcome to Toko Anita',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
    
                      // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                      GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        // Agar grid menyesuaikan tinggi kontennya.
                        shrinkWrap: true,
    
                        // Menampilkan ItemCard untuk setiap item dalam list items.
                        children: items.map((ItemHomepage item) {
                          return ItemCard(item);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

    class InfoCard extends StatelessWidget {
      // Kartu informasi yang menampilkan title dan content.
    
      final String title;  // Judul kartu.
      final String content;  // Isi kartu.
    
      const InfoCard({super.key, required this.title, required this.content});
    
      @override
      Widget build(BuildContext context) {
        return Card(
          // Membuat kotak kartu dengan bayangan dibawahnya.
          elevation: 2.0,
          child: Container(
            // Mengatur ukuran dan jarak di dalam kartu.
            width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
            padding: const EdgeInsets.all(16.0),
            // Menyusun title dan content secara vertikal.
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(content),
              ],
            ),
          ),
        );
      }
    }
    
    class ItemHomepage {
         final String name;
         final IconData icon;
         final Color color;
    
         ItemHomepage(this.name, this.icon, this.color);
    }


    class ItemCard extends StatelessWidget {
      // Menampilkan kartu dengan ikon dan nama.
    
      final ItemHomepage item; 
      
      const ItemCard(this.item, {super.key}); 
    
      @override
      Widget build(BuildContext context) {
        return Material(
          // Menentukan warna latar belakang dari tema aplikasi.
          color: item.color,
          // Membuat sudut kartu melengkung.
          borderRadius: BorderRadius.circular(12),
          
          child: InkWell(
            // Aksi ketika kartu ditekan.
            onTap: () {
              // Menampilkan pesan SnackBar saat kartu ditekan.
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
            // Container untuk menyimpan Icon dan Text
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  // Menyusun ikon dan teks di tengah kartu.
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item.icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                      item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
      
    }


    ```

7. git `push`, `commit`, `push`

# Tugas 8
## Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` digunakan untuk mendefinisikan nilai yang tetap dan tidak berubah selama runtime aplikasi, seperti warna, padding, margin, teks, atau ukuran tertentu. Keunggulan menggunakan `const` adalah peningkatan performa, karena Flutter dapat mengoptimalkan widget dengan mengetahui bahwa widget tersebut tidak perlu di-rebuild, sehingga tidak perlu diproses ulang jika terjadi perubahan dalam aplikasi. Selain itu, objek yang di-compile dengan `const` hanya disimpan sekali dalam memori bersama (shared memory), sehingga jika objek `const` yang sama digunakan di beberapa tempat, hanya satu objek yang disimpan, membuat penggunaan memori lebih efisien.

Disarankan menggunakan `const` untuk menyimpan nilai widget atau objek yang tidak akan berubah selama runtime aplikasi dan tidak bergantung pada data dinamis, seperti teks, padding, margin, warna, atau ikon yang tetap. Namun, `const` sebaiknya tidak digunakan jika Anda membutuhkan widget atau objek yang dinamis, yaitu objek yang nilainya bergantung pada perubahan state atau input pengguna. Sebagai contoh, widget yang nilainya diperoleh dari variabel yang dapat berubah, seperti hasil dari `setState`, tidak sebaiknya menggunakan `const`.

##  Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
- Column adalah widget yang mengatur tata letak widget di dalamnya secara vertikal (dari atas ke bawah). Column berguna ketika kita ingin menumpuk widget secara vertikal dalam satu kolom. Contoh implementasinya sebagai berikut:

```
    Column(
        mainAxisAlignment: MainAxisAlignment.center,    // Mengatur ruang antara widget di sepanjang sumbu utama (vertikal dalam kasus Column)
        crossAxisAlignment: CrossAxisAlignment.start,   // Digunakan untuk mengatur widget di sepanjang sumbu silang (horizontal dalam kasus Column)
        children: <Widget>[
            Text('Halo'),
            SizedBox(height: 10),
            Text('Tayo'),
            SizedBox(height: 10),
            ElevatedButton(
            onPressed: () {},
            child: Text('oyoy'),
            ),
        ],
    );
```
Dalam contoh di atas, widget Text dan ElevatedButton ditampilkan secara vertikal dengan jarak antar item menggunakan SizedBox.

- Row adalah widget yang mengatur tata letak widget di dalamnya secara horizontal (dari kiri ke kanan). Ini berguna ketika Anda ingin menyusun widget secara horizontal dalam satu baris. Contoh implementasinya sebagai berikut:

```
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,   // Mengatur ruang antara widget di sepanjang sumbu utama (horizontal dalam kasus Row)
        crossAxisAlignment: CrossAxisAlignment.center,  // Digunakan untuk mengatur widget di sepanjang sumbu silang (vertikal dalam kasus Row)
        children: <Widget>[
            Icon(Icons.star, color: Colors.orange),
            Text('Halo'),
            ElevatedButton(
            onPressed: () {},
            child: Text('Tombol'),
            ),
        ],
    );
```
Dalam contoh di atas, Icon, Text, dan ElevatedButton ditampilkan secara horizontal dengan jarak yang merata di antara elemen menggunakan MainAxisAlignment.spaceAround.

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form ini, elemen input yang digunakan adalah sebagai berikut:

1. **TextFormField**:
   - Untuk mengisi **nama produk** (`Product Name`), **harga** (`Price`), **deskripsi** (`Description`), dan **jumlah** (`Quantity`).
   - Setiap elemen ini memiliki fungsi validasi untuk memastikan bahwa nilai yang dimasukkan benar dan tidak kosong.

2. **ElevatedButton**:
   - Tombol untuk menyimpan data produk yang telah diisi. Ketika ditekan, tombol ini akan memvalidasi form dan menampilkan dialog konfirmasi jika semua input valid.

Selain elemen yang telah digunakan, beberapa elemen input Flutter lain yang tidak digunakan dalam tugas ini adalah:

1. **DropdownButton**:
   - Berguna untuk memilih satu nilai dari beberapa opsi dalam bentuk dropdown. Elemen ini tidak digunakan karena semua data input dalam form ini adalah input teks atau angka, dan tidak ada kebutuhan untuk pemilihan opsi.

2. **Checkbox**:
   - Cocok untuk input dengan pilihan boolean (ya/tidak, aktif/tidak aktif). Elemen ini tidak digunakan karena form ini tidak memerlukan input boolean atau pilihan ganda.

3. **Radio**:
   - Biasa digunakan untuk memilih satu dari beberapa opsi yang tetap. Elemen ini tidak diperlukan karena tidak ada data yang membutuhkan pemilihan satu opsi dari beberapa pilihan.

4. **Slider**:
   - Untuk memilih nilai numerik dalam rentang tertentu dengan cara menggeser. Elemen ini tidak diperlukan karena jumlah dan harga diinput secara langsung sebagai angka.

5. **Switch**:
   - Digunakan sebagai input boolean (on/off). Seperti `Checkbox`, elemen ini tidak diperlukan dalam tugas karena form ini tidak melibatkan pilihan on/off.

6. **DatePicker** dan **TimePicker**:
   - Keduanya digunakan untuk memilih tanggal dan waktu, berguna dalam form reservasi atau event yang memerlukan input waktu. Elemen ini tidak digunakan karena tidak ada kebutuhan untuk memasukkan waktu atau tanggal dalam form ini. 

Setiap elemen di atas dapat menjadi opsi untuk tipe form yang lebih kompleks di masa depan, tergantung kebutuhan data input yang diperlukan.

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi tema dalam aplikasi Flutter, saya menggunakan `ThemeData`, contohnya melalui `ColorScheme` di `MaterialApp` yang terletak di `main.dart`. Lalu, setiap widget yang memerlukan akses ke warna atau gaya yang telah diatur dalam `ThemeData` dapat menggunakan `Theme.of(context)` untuk mendapatkan tema aplikasi. Dengan cara ini, tampilan aplikasi menjadi konsisten, dan jika ada perubahan pada warna atau gaya tema, cukup dilakukan di satu tempat (yaitu di `ThemeData`). Hal ini otomatis memperbarui semua elemen yang menggunakan warna atau gaya tersebut. Dalam aplikasi yang saya buat, beberapa elemen sudah menerapkan tema ini, contohnya sebagai berikut :

```
   class LeftDrawer extends StatelessWidget {
   const LeftDrawer({super.key});
   
       @override
       Widget build(BuildContext context) {
           return Drawer(
           child: ListView(
               children: [
               DrawerHeader(
                       decoration: BoxDecoration(
                   color: Theme.of(context).colorScheme.primary,
               ),
               ...
               )]))}},
```

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Flutter menyediakan class `Navigator` yang memiliki beberapa metode, seperti `Navigator.push`, `Navigator.pop`, dan `Navigator.pushReplacement`, yang dijelaskan dalam tutorial dan saya terapkan pada tugas kali ini.

- **Navigator.push()** digunakan untuk menambahkan suatu route ke dalam stack yang dikelola oleh `Navigator`. Metode ini menempatkan route baru di bagian atas stack, yang berguna saat kita ingin berpindah halaman dan menambahkannya ke stack. Dengan begitu, pengguna dapat menekan tombol Kembali untuk kembali ke halaman sebelumnya yang berada di bawah halaman yang baru dibuka.

- **Navigator.pop()** berfungsi menghapus route yang sedang aktif, sehingga halaman yang muncul adalah route di bawahnya dalam stack yang dikelola `Navigator` (biasanya halaman sebelumnya).

- **Navigator.pushReplacement()** menggantikan route yang sedang aktif dengan route baru yang telah ditentukan, tanpa menambahkannya ke stack. Dengan metode ini, halaman saat ini diganti dengan halaman baru, dan pengguna tidak dapat kembali ke halaman sebelumnya karena halaman sebelumnya sudah tidak ada di stack.





