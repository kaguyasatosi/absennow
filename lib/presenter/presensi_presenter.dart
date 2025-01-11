import '../model/presensi_model.dart';

class PresensiPresenter {
  // Fungsi untuk mendapatkan data lokasi
  PresensiModel getPresensiData() {
    return PresensiModel(
      lokasiSatu: "Gedung Satu",
      lokasiDua: "Gedung Dua",
      lokasiTiga: "Gedung Tiga",
    );
  }
}
