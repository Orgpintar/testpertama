import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/listmakanan_Controller.dart';
import 'package:testpertama/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ListmakananController controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: 220, 
        child: Obx(
          () => ListView.builder(
            scrollDirection: Axis.horizontal, 
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.detailmakanan,
                    arguments: {
                      'namaMakanan': makanan.namaMakanan,
                      'hargaMakanan': makanan.hargaMakanan,
                      'imageUrl': makanan.imageUrl,
                      'deskripsiMakanan': makanan.deskripsiMakanan,
                    },
                  );
                },
                child: Container(
                  width: 150, 
                  margin: const EdgeInsets.only(right: 10),
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10),
                          ),
                          child: Image.network(
                            makanan.imageUrl,
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                makanan.namaMakanan,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                makanan.hargaMakanan.toString(),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                )
              );
            },
          ),
        ),
      ),
    );
  }
}