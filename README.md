# counter_7

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

Muhammad Nabiel Andityo Purnomo - 2106750465

## Tugas 8 - Flutter Form

### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.

Saat mengganti halaman, `Navigator.push` menimpa(stack) halaman baru di atas halaman saat ini, sedangkan `Navigator.pushReplacement` 
mengganti halaman lama dengan halaman baru. Misalnya, ketika kita berada di halaman kedua, ketika gunakan metode `pushReplacement()` 
dan buka halaman ketiga, ketika kita menekan tombol kembali kita akan pergi ke halaman pertama dan melewati halaman kedua.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- TextFormField() = Widget sebagai TextField berguna untuk input text
- Form : Widget sebagai container form
- Scaffold : Membuat kerangka dalam membuat widget.
- Appbar : Widget default untuk membuat appbar seperti navbar
- Center : Layout widget untuk memposisikan *children* di *center*
- Column : Layout widget untuk tampilan *column*
- Row : Layout widget untuk Tampilan *row*
- Text : Berguna dalam pembuatan teks
- Padding : Widget untuk *wrap children* dengan padding
- Icon : Widget untuk menampilkan *icon* di dalam aplikasi
- IconButton = widget icon yang berfungsi sebagai button
- SizedBox = widget untuk membuat box dengan ukuran yang sesuai
- TextButton = widget sebagai tombol
- InputDatePickerFormField = untuk menerima tanggal yang di-masukkan oleh user
- MyHomePage = widget yang berfungsi sebagai home page awal
- MyDrawer = widget untuk sebagai drawer menu
- MyFormPage = widget untuk menampilkan halaman form

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).

onPressed:  Kode dalam event onPressed akan tereksekusi saat sebuah tombol di klik.<br>
onHover:  Kode dalam event ini akan tereksekusi saat mouse bergerak dalam sebuah tombol (tapi tidak di klik)<br> 
onFocusChange:  Kode dalam event ini akan tereksekusi saat fokus berubah.<br> 
onChanged:  Kode dalam event ini akan tereksekusi dalam TextField saat user melakukan insert atau delete sebuah text.<br> 
onTap:  Mirip dengan onPressed. Namun onPressed cenderung hanya untuk button sedangkan onTap untuk gestur apapun.<br> 
onSaved:  Kode dalam event ini akan tereksekusi saat nilai final dari form disimpan melalui FormState.save.<br>

### Jelaskan bagaimana cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter.

Secara umum, cara kerja Navigator hampir sama dengan Stack. Saat ingin membuka suatu *page*, maka dilakukan push ke dalam
Stack yang berisi halaman tersebut, sehingga item paling atas dari Stack tersebutlah yang akan ditampilkan. Jika ingin kembali
ke *page/route* sebelumnya maka bisa dilakukan dengan `Navigator.pop` untuk menghapus route paling atas dari Stack. Dengan demikian, 
pengguna akan ditujukan ke halaman sebelumnya

### Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas.
1. Menambahkan 3 tombol navigasi pada drawer/hamburger, dilakukan dengan menggunakan widget Column yang berisi ListTile dari
setiap halaman, saya menggunakan pushReplacement untuk menghapus dari stack route dan masukan di top stack.
2. Lalu, menambahkan drawer/humberger menu pada setiap halaman (link to drawer.dart)
`drawer: const MyDrawer(),`
3. Membuat class Budget untuk model penyimpanan data
4. Menambahkan halaman baru pada form.dart dengan form yang berisi judul, nominal, tanggal, dan jenis budget yang disusun vertikal.
5. Membuat data untuk menampilkan list budget, membuat method `addDataBudget` untuk iterasi semua data budget.
Setelah itu, ditampilkan dalam halaman `Data Budget`.

## Tugas 7 - Elemen Dasar Flutter

### Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget* dan jelaskan perbedaan dari keduanya.

Secara sederhana Stateless Widget dapat diartikan sebagai Widget yang tidak dapat dirubah atau tidak akan pernah berubah. 
state yang dimaksud, dapat berupa warna, data, dan atau variabel.<br>
Stateful Widget merupakan widget yang interaktif dan dinamis atau dapat berubah. Berbanding terbalik dengan stateless, 
stateful widget dapat mengupdate tampilan, merubah warna, menambah jumlah baris (style) dll. Jadi dapat disimpulkan bahwa 
apapun widget yang dapat berubah maka itulah stateful widget.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- Scaffold : Membuat kerangka dalam membuat widget.
- Appbar : Widget default untuk membuat appbar seperti navbar
- Center : Layout widget untuk memposisikan *children* di *center*
- Column : Layout widget untuk tampilan *column*
- Row : Layout widget untuk Tampilan *row*
- Text : Berguna dalam pembuatan teks
- Padding : Widget untuk *wrap children* dengan padding
- FloatingActionButton : tombol yang dapat diklik dan terlihat *floating* di layar
- Spacer : Widget untuk menciptakan ruang di antara *children*, berperilaku seperti `flex`

### Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState` akan memberitahu *framework* akan perubahan state, *framework* akan merespon dengan mengupdate *state* yang berupa 
*framework* melakukan *build* ulang pada objek tersebut (*re-render*) pada UI aplikasi. Variabel yang dapat terdampak adalah 
variabel/data yang di-*pass* sebagai argumen pada *function* `setState`. Pada tugas ini, variabel `counter` diubah dalam `setState`.

### Jelaskan perbedaan antara `const` dengan `final`.

`const` adalah modifier variabel yang membuat value sebuah variabel menjadi tetap dan nilainya harus diketahui saat *compile time*. Sedangkan, 
`final` adalah modifier yang membuat *reference* dari sebuah variabel menjadi tetap, namun valuenya masih bisa berubah. Nilai dari `final` tidak harus diketahui saat *compile time*.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat variable penentu di dalam function build, seperti `isEven` dan `isGreaterThanZero`
2. Variabel tersebut digunakan untuk melakukan conditional styling dan render.
```dart
 Text(
      isEven ? 'GENAP' : 'GANJIL',
      style : TextStyle(color: isEven ? Colors.red : Colors.blue )
 ) 
```
3. Selanjutnya, membuat Widget Padding yang men-*warp* Row Layout, dan menerapkan padding.
4. Buat dua tombol "+" dan "-", dan melakukan positioning dan definisikan `onPressed` event.

#### Thanks !