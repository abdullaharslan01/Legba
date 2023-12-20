import 'package:flutter/material.dart';
import 'package:legba/companents/app_textfield.dart';
import 'package:legba/companents/toolbar.dart';
import 'package:legba/companents/user_avatar.dart';
import 'package:legba/config/app_strings.dart';
import 'package:legba/constants/enums/project_enums.dart';
import 'package:legba/styles/app_color.dart';
import 'package:legba/styles/app_text.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _nameState();
}

class _nameState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    void changeGender(Gender selectGender) {
      setState(() {
        gender = selectGender;
      });
    }

    return Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                            color: AppColors.black,
                          )))
                ],
              ),
              SizedBox(
                height: 60,
              ),
              AppTextField(hintText: AppStrings.firstName),
              _buildSpace(),
              AppTextField(hintText: AppStrings.lastName),
              _buildSpace(),
              AppTextField(hintText: AppStrings.phoneNumber),
              _buildSpace(),
              AppTextField(hintText: AppStrings.location),
              _buildSpace(),
              AppTextField(hintText: AppStrings.birthday),
              _buildSpace(),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: AppColors.fieldColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            visualDensity: visualDensityRadioListTile(),
                            title: Text(AppStrings.female),
                            value: Gender.female,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) => changeGender(value!),
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: visualDensityRadioListTile(),
                            title: Text(AppStrings.male),
                            value: Gender.male,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (value) => changeGender(value!),
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            visualDensity: visualDensityRadioListTile(),
                            title: Text(AppStrings.other),
                            value: Gender.other,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (value) => changeGender(value!),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  VisualDensity visualDensityRadioListTile() {
    return VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity);
  }
}

class _buildSpace extends StatelessWidget {
  const _buildSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
    );
  }
}
