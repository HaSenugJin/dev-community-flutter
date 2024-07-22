import 'package:dev_community/pages/my/widgets/profile_detail_sliver_adapter.dart';
import 'package:dev_community/pages/my/widgets/profile_detail_sliver_list.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  final userId;

  ProfileDetail(this.userId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          ProfileDetailSliverAdapter(),
          ProfileDetailSliverList(),
        ],
      ),
    );
  }
}
