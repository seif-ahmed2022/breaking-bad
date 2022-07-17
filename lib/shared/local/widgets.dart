import 'package:flutter/material.dart';
import '../../models/character.dart';
import '../../screens/character_details.dart';
import 'my_colors.dart';

class MyWidgets {
  static Widget gridViewItem(Character character, BuildContext context) =>
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CharactersDetails(
                  character: character,
                ),
              ));
        },
        child: Container(
          width: double.infinity,
          margin: const EdgeInsetsDirectional.all(8),
          padding: const EdgeInsetsDirectional.all(4),
          decoration: BoxDecoration(
            color: MyColors.myWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GridTile(
            footer: Container(
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                character.name!,
                style: const TextStyle(
                  height: 2,
                  fontSize: 16,
                  color: MyColors.myWhite,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            child: Container(
              color: MyColors.myGrey,
              child: //character.img!.isNotEmpty?
                  Hero(
                       tag: character.char_id!,
                      child: FadeInImage.assetNetwork(
                          image: character.img!,
                          placeholder: "assets/images/ben-redblock-loading.gif",
                          fit: BoxFit.cover,
                          width: double.infinity,
                           height: double.infinity,
                           imageErrorBuilder: (BuildContext context, Object object,
                           StackTrace? stackTrace) {
                           return const Icon(
                           Icons.image_not_supported_outlined,
                             size: 100,
                            color: MyColors.myWhite,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
}
