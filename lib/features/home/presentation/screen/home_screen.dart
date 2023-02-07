import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/customers/custom_text.dart';
import '../../../../core/style/color.dart';
import '../widgets/card_category_widget.dart';
import '../widgets/card_widget.dart';
import '../widgets/qr_widget.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.width;
    double height = SizeConfig.screenHeight;
    final title = [
      'Вакансии',
      'Маркет',
      'Цветы',
      'Спорт'
    ];
    return Scaffold(
      backgroundColor: kBg,
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 60,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const  QrWidget(),
                  const SizedBox(
                    height: 25,
                  ),
                  const CardWidget(
                    image: "assets/images/card1.png",
                    title: 'Еда',
                    description: 'Из кафе и\nресторанов',
                    color: kLightRed,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CardWidget(
                    image: "assets/images/card2.png",
                    title: 'Бьюти',
                    description: 'Салоны красоты и\nтовары',
                    color: kLightRed,
                  ),
                  const SizedBox(
                    height:30,
                  ),
                  CustomText(
                    text: 'Скоро в Malina',
                    color: kBlack,
                    size: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height:8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(title.length, (index) => CardCategoryWidget(title: title[index],color: colorCategorise[index],)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



}
