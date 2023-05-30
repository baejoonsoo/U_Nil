import 'package:flutter/material.dart';
import 'package:u_nil/models/recipe_model.dart';
import 'package:u_nil/widgets/Recipe_card.dart';
import 'package:u_nil/widgets/default_header.dart';

class RecipeListScreen extends StatelessWidget {
  RecipeListScreen({Key? key}) : super(key: key);

  final List<RecipeModel> recipeList = [
    RecipeModel(
      title: "폐지로 쇼핑백 만들기",
      writer: "메타메타몽몽",
      profile:
          "https://mblogthumb-phinf.pstatic.net/MjAyMzAxMTJfMjkz/MDAxNjczNDg5MzQ0NzQ3.WGkCwO9BHIx-NGJ0MHc5YSEktwUI4F7PnP5SpPAaZC8g.Btz5urrbLRxXQECaulfP9ms4Q79cE85JURFwbZeTBJAg.JPEG.loveydeeply/IMG＿6864.JPG?type=w800",
      img:
          "https://img1.daumcdn.net/thumb/C500x500.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/7PbN/image/H42iC3ba8EqAo_h-wAERswdpVPY.jpeg",
      like: 0,
    ),
    RecipeModel(
      title: "폐지로 쇼핑백 만들기",
      writer: "메타메타몽몽",
      profile:
      "https://mblogthumb-phinf.pstatic.net/MjAyMzAxMTJfMjkz/MDAxNjczNDg5MzQ0NzQ3.WGkCwO9BHIx-NGJ0MHc5YSEktwUI4F7PnP5SpPAaZC8g.Btz5urrbLRxXQECaulfP9ms4Q79cE85JURFwbZeTBJAg.JPEG.loveydeeply/IMG＿6864.JPG?type=w800",
      img:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZfa1LUzGdPpHAkh2cvprxLtATyWov3A4XFQ&usqp=CAU",
      like: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(

        children: [
          const DefaultHeader(),

          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: recipeList.length,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemBuilder: (context, index) {
                var recipe = recipeList[index];
                return RecipeCard(
                  title: recipe.title,
                  img: recipe.img,
                  writer: recipe.writer,
                  profile: recipe.profile,
                  like: recipe.like,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//  DefaultHeader(),
