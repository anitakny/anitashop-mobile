# Toko Anita

Nama : Anita Khoirun Nisa
NPM : 2306152273
PBP E

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

# Tugas 9
## Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan karena model berfungsi sebagai template yang memastikan struktur data JSON konsisten. Model juga digunakan untuk melakukan validasi data sebelum diterima atau dikirim. Dengan demikian, kita dapat memastikan bahwa semua properti yang diperlukan (misalnya, tipe data, panjang string, atau format) sesuai. Jika kita tidak membuat model, ada risiko data yang dikirim/diterima tidak sesuai dengan struktur yang diharapkan oleh sistem penerima (misal server), dimana hal tersebut dapat menyebabkan error atau masalah saat memproses data, dimana hal tersebut dapat berakibat fatal di tahap berikutnya dalam alur kerja aplikasi.

## Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk mengirim/menerima berbagai jenis response ataupun request http yang digunakan untuk menghubungkan aplikasi Flutter dengan server Django. Library ini juga mengatur data dari Flutter yang dikemas dalam format JSON sebelum dikirim ke server Django.
## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- CookieRequest berfungsi untuk penyimpanan dan dan pengiriman cookie. Dengan menyimpan dan mengirimkan cookie yang tepat, CookieRequest membantu menjaga sesi pengguna tetap aktif tanpa perlu autentikasi ulang setiap kali pengguna melakukan tindakan dalam aplikasi. Dengan demikian, CookieRequest membantu melindungi data sensitif seperti token autentikasi dari potensi kebocoran atau akses yang tidak sah.
Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter agar semua komponen aplikasi dapat mengakses dan memperbarui data sesi yang sama. Ini mencegah adanya data sesi yang tidak sinkron atau terpisah di berbagai bagian aplikasi. Dengan satu titik pengelolaan cookie, lebih mudah untuk menerapkan kebijakan keamanan yang konsisten di seluruh aplikasi, seperti enkripsi cookie atau pembatasan akses. Jika ada perubahan dalam cara pengelolaan cookie atau autentikasi, perubahan hanya perlu dilakukan di satu tempat, memudahkan pemeliharaan dan pengembangan aplikasi.
## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Pengguna memasukkan data melalui antarmuka pengguna di aplikasi Flutter, seperti menggunakan formulir input atau elemen UI lainnya (misalnya, TextField). Kemudian, data yang dimasukkan oleh pengguna disimpan sementara dalam variabel atau model aplikasi Flutter.
- Setelah pengguna mengisi formulir atau melakukan aksi yang memicu pengiriman data (seperti tombol login), aplikasi Flutter mengirimkan data ke backend server menggunakan permintaan HTTP. Library http digunakan untuk membuat permintaan seperti POST, mengirim data dalam format JSON, dan mengirimkan data ke endpoint yang tepat di backend Django.
- Backend django menerima data yang dikirim oleh aplikasi Flutter. Kemudian, Django akan memproses data, misalnya memverifikasi kredensial pengguna (username dan password), membuat sesi pengguna, atau memproses informasi lain yang dikirim. Jika data valid (misalnya login berhasil), Django akan mengembalikan respons yang berisi data yang relevan (misalnya token autentikasi, status login, atau data pengguna lainnya).
- Setelah django memproses data, respons dikirimkan kembali ke aplikasi Flutter dalam bentuk JSON atau format lainnya. Kemudian, aplikasi Flutter menerima respons ini melalui objek http.Response yang mengandung status dan body dari respons.
- Setelah menerima data (misalnya token autentikasi atau respons lainnya) dari server, aplikasi Flutter dapat menggunakan data tersebut untuk memperbarui UI pengguna. Data tersebut bisa disimpan di model atau state dan digunakan untuk memodifikasi widget di antarmuka. Jika menggunakan state management (misalnya, Provider, Riverpod, atau setState), perubahan data akan memicu pembaruan UI secara otomatis.
- Setelah data diterima dan diproses, seperti token autentikasi, aplikasi dapat menyimpannya untuk penggunaan lebih lanjut (misalnya, menyimpan token untuk autentikasi di penyimpanan lokal seperti SharedPreferences). Hal ini memungkinkan pengguna untuk tetap terautentikasi saat aplikasi dijalankan kembali.
-Setelah data disimpan, komponen lain dalam aplikasi dapat mengakses data tersebut (misalnya, token) untuk melakukan permintaan HTTP lainnya atau untuk memperbarui UI sesuai kebutuhan. Dengan menggunakan state management atau sistem penyimpanan data lokal, aplikasi bisa berbagi dan memperbarui data antar komponen yang relevan.
## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
a. Register
Pengguna memasukkan data login seperti username dan password melalui antarmuka pengguna di Flutter menggunakan widget seperti TextField. Setelah itu, data tersebut disimpan dan dikirimkan ke server django menggunakan HTTP POST request untuk didaftarkan. Django menerima data pendaftaran, memverifikasi apakah username atau email sudah terdaftar, dan kemudian membuat akun baru. Setelah pengguna berhasil didaftarkan, server dapat mengirimkan respons sukses ke Flutter.
b. Login
Pengguna memasukkan data login seperti username dan password melalui antarmuka pengguna di Flutter menggunakan widget seperti TextField. Setelah itu, data tersebut disimpan dan dikirimkan ke server django menggunakan HTTP POST request untuk diautentikasi. Django menerima data login (username dan password) yang dikirim dari aplikasi Flutter. Kemudian, server Django akan memeriksa kredensial pengguna dengan mencocokkan data yang diterima dengan data yang ada di database. Jika kredensial valid, Django akan menghasilkan token autentikasi (misalnya, JWT atau token session) yang akan dikirimkan kembali ke aplikasi Flutter sebagai bagian dari respons HTTP. Setelah itu, server dapat mengirim respons berisi token autentikasi (misalnya, JWT) yang diperlukan untuk mengakses API yang dilindungi. Setelah menerima token autentikasi dari server Django, aplikasi Flutter menyimpannya untuk digunakan dalam autentikasi berikutnya, seperti pada penyimpanan lokal menggunakan SharedPreferences. Setelah token disimpan, aplikasi Flutter dapat menavigasi ke halaman utama atau menu yang dilindungi berdasarkan status autentikasi pengguna.
c. Logout
Setelah pengguna menekan tombol logout, aplikasi Flutter menghapus token yang disimpan dan menavigasi pengguna kembali ke halaman login.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Buat folder `authentication` yang berguna untuk login, logout. isi`views.py` dengan:
    ```
   from django.shortcuts import render
   from django.contrib.auth.models import User
   from django.contrib.auth import authenticate, login as auth_login
   from django.contrib.auth import logout as auth_logout
   from django.http import JsonResponse
   from django.views.decorators.csrf import csrf_exempt
   import json
   
   @csrf_exempt
   def login(request):
       username = request.POST['username']
       password = request.POST['password']
       user = authenticate(username=username, password=password)
       if user is not None:
           if user.is_active:
               auth_login(request, user)
               # Successful login status.
               return JsonResponse({
                   "username": user.username,
                   "status": True,
                   "message": "Login successful!"
                   # Add other data if you want to send data to Flutter.
               }, status=200)
           else:
               return JsonResponse({
                   "status": False,
                   "message": "Login failed, account disabled."
               }, status=401)
   
       else:
           return JsonResponse({
               "status": False,
               "message": "Login failed, check email or password again."
           }, status=401)
       
   @csrf_exempt
   def register(request):
       if request.method == 'POST':
           data = json.loads(request.body)
           username = data['username']
           password1 = data['password1']
           password2 = data['password2']
   
           # Check if the passwords match
           if password1 != password2:
               return JsonResponse({
                   "status": False,
                   "message": "Passwords do not match."
               }, status=400)
   
           # Check if the username is already taken
           if User.objects.filter(username=username).exists():
               return JsonResponse({
                   "status": False,
                   "message": "Username already exists."
               }, status=400)
   
           # Create the new user
           user = User.objects.create_user(username=username, password=password1)
           user.save()
   
           return JsonResponse({
               "username": user.username,
               "status": 'success',
               "message": "User created successfully!"
           }, status=200)
   
       else:
           return JsonResponse({
               "status": False,
               "message": "Invalid request method."
           }, status=400)
       
   @csrf_exempt
   def logout(request):
       username = request.user.username
   
       try:
           auth_logout(request)
           return JsonResponse({
               "username": username,
               "status": True,
               "message": "Logged out successfully!"
           }, status=200)
       except:
           return JsonResponse({
           "status": False,
           "message": "Logout failed."
           }, status=401)
   ```
    Dan tambahkan juga `urls.py`
2. Melengkapi Django sebelumnya bagian `settings.py` , tambahkan :
   ```
   INSTALLED_APPS = [
   'authentication',
    'corsheaders',
   ]
   
   MIDDLEWARE = [
   .....
   'corsheaders.middleware.CorsMiddleware',
   .....
   ]

   CORS_ALLOW_ALL_ORIGINS = True
   CORS_ALLOW_CREDENTIALS = True
   CSRF_COOKIE_SECURE = True
   SESSION_COOKIE_SECURE = True
   CSRF_COOKIE_SAMESITE = 'None'
   SESSION_COOKIE_SAMESITE = 'None'
   ```
3. Modifikasi main.dart supaya meneydiakan CookieResponse:
   ```
    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return Provider(
        create: (_) {
            CookieRequest request = CookieRequest();
            return request;
        },
        child: MaterialApp(
            title: 'Toko Anita',
            theme: ThemeData(
    ....
    )))}}
   ```
4. Membuat login.dart pada folder screen yang berisi:
```
   import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:toko_anita/screens/menu.dart';
import 'package:toko_anita/screens/register.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
      ).copyWith(
        primary: const Color(0xFF415474),
        secondary: const Color(0xFF5670CD),
      ),
    ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // Cek kredensial
          
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request
                          .login("http://127.0.0.1:8000/auth/login/", {
                        'username': username,
                        'password': password,
                      });

                      if (request.loggedIn) {
                        String message = response['message'];
                        String uname = response['username'];
                        if (context.mounted) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content:
                                      Text("$message Selamat datang, $uname.")),
                            );
                        }
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Login Gagal'),
                              content: Text(response['message']),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 36.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Don\'t have an account? Register',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
   ```

5. Membuat register.dart yang berisi :
```
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:toko_anita/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () async {
                      String username = _usernameController.text;
                      String password1 = _passwordController.text;
                      String password2 = _confirmPasswordController.text;

                      // Cek kredensial
                      // Untuk menyambungkan Android emulator dengan Django pada localhost,
                      // gunakan URL http://10.0.2.2/
                      final response = await request.postJson(
                          "http://127.0.0.1:8000/auth/register/",
                          jsonEncode({
                            "username": username,
                            "password1": password1,
                            "password2": password2,
                          }));
                      if (context.mounted) {
                        if (response['status'] == 'success') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully registered!'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Failed to register!'),
                            ),
                          );
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

```

6. Membuat folder models dan berisi file baru bernama product_entry.dart yang berisi:
```
import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
    };
}
```
7. Di folder screens juga membuat list_productentry.dart yang akhirnya berisi:
```
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:toko_anita/models/product_entry.dart';
import 'package:toko_anita/widgets/left_drawer.dart';

class ProductEntryPage extends StatefulWidget {
  const ProductEntryPage({super.key});

  @override
  State<ProductEntryPage> createState() => _ProductEntryPageState();
}

class _ProductEntryPageState extends State<ProductEntryPage> {
  Future<List<ProductEntry>> fetchProducts(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json/');

    // Convert response to ProductEntry objects
    List<ProductEntry> productList = [];
    for (var item in response) {
      if (item != null) {
        productList.add(ProductEntry.fromJson(item));
      }
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder<List<ProductEntry>>(
        future: fetchProducts(request),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'No products available.',
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) {
              final product = snapshot.data![index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.fields.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Price: \$${product.fields.price}'),
                    const SizedBox(height: 8),
                    Text(product.fields.description),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
```
8. Pastikan <uses-permission android:name="android.permission.INTERNET"/> ada di toko_anita/android/app/src/debug/AndroidManifest.xml
9. Tambahkan import di beberapa file:
    ```
    import 'package:provider/provider.dart';
    import 'package:pbp_django_auth/pbp_django_auth.dart';
    ```
10. Pastikan semua fitur berjalan
11. git `push`, `commit`, `push`
