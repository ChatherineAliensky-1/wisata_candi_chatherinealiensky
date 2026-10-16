import 'package:flutter/material.dart';
import 'package:wisatacandi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Detail Header 
          Stack(
            children: [
              // Image Utama
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Tombol Back
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withAlpha(80),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Menambahkan aksi kembali (opsional tapi disarankan)
                    },
                  ),
                ),
              ), // <-- Kurang penutup ini sebelumnya
            ],
          ),
          // Detail Info

          // Detail Gallery
        ],
      ),
    );
  }
}