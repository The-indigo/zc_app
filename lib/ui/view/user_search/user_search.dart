import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
import 'package:stacked/stacked.dart';

import '../../../utilities/constants.dart';
import '../../shared/colors.dart';
import 'user_search_viewmodel.dart';
import 'widget/custom_dm_list_tile.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserSearchViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: ZuriAppBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: AppColors.whiteColor,
            ),
            backgroundColor: AppColors.zuriPrimaryColor,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.arrow_back_ios),
                      Column(
                        children: const [
                          Text('People'),
                          Text('2552 members'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Search for members',
                        hintStyle: GoogleFonts.lato(
                          // ignore: todo
                          //TODO Change to brand colors
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const CustomDMListTile(
                    userName: 'Princess (You)',
                    imagelink: dummyUserImage,
                  ),
                  const SizedBox(height: 16),
                  const CustomDMListTile(
                    userName: 'Tobi',
                    imagelink: dummyUserImage,
                  ),
                  const SizedBox(height: 16),
                  const CustomDMListTile(
                    userName: 'Victor',
                    imagelink: dummyUserImage,
                  ),
                  const SizedBox(height: 16),
                  const CustomDMListTile(
                    userName: 'Fierce',
                    imagelink: dummyUserImage,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => UserSearchViewModel(),
    );
  }
}
