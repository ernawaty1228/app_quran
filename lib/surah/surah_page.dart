import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_quran/surah/surah_controller.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF019F76),
          title: const Text(
            "Pilih Surat",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GetBuilder<SurahController>(
                builder: (_) {
                  if (_.isLoading) {
                    return Container();
                  } else {
                    return GridView.count(
                      primary: false,
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      children: _.data.map<Widget>((e) {
                        return Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF9ED838),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${e['nama']}",
                                style: const TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              Text(
                                "${e['namaLatin']}",
                                style: const TextStyle(
                                  fontSize: 12
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    );
                  }
                }
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF019F76),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          )
                        ]
                      ),
                      child: Image.asset(
                        "assets/images/jim.png",
                        width: 44,
                        height: 44,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(width: 24),
                  InkWell(
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF019F76),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          )
                        ]
                      ),
                      child: const Icon(
                        Icons.menu_book_rounded,
                        color: Colors.white,
                        size: 44,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(width: 24),
                  InkWell(
                    child: Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF019F76),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          )
                        ]
                      ),
                      child: const Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 44,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}