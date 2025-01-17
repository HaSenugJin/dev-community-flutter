import 'package:dev_community/dtos/board/board_request.dart';
import 'package:dev_community/pages/home/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'board_save_app_bar_btn.dart';

class BoardSaveAppBar extends StatelessWidget {
  final HomeViewmodel viewmodel;
  final SaveBoardDTO saveBoardDTO;

  BoardSaveAppBar({required this.viewmodel,required this.saveBoardDTO});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 25),
      child: InkWell(
        onTap: () {
          viewmodel.saveBoard(saveBoardDTO);
        },
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: BoardSaveAppBarBtn(55, Color(0xff3e5239), "완료"),
            ),
          ],
        ),
      ),
    );
  }
}