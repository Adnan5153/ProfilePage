import 'package:flutter/material.dart';
import 'package:profilepage/core/constants/app_colors.dart';
import 'package:profilepage/core/constants/app_dimensions.dart';
import 'package:profilepage/core/constants/app_strings.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      transform: Matrix4.translationValues(0, -40, 0),
      child: Column(
        children: [
          // Profile Avatar
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.3),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: AppDimensions.avatarL / 2,
              backgroundColor: AppColors.grey200,
              child: CircleAvatar(
                radius: AppDimensions.avatarL / 2 - 4,
                backgroundImage: const AssetImage('assets/images/profile_photo.jpg'),
                onBackgroundImageError: (exception, stackTrace) {},
                child: const Icon(
                  Icons.person,
                  size: 50,
                  color: AppColors.grey400,
                ),
              ),
            ),
          ),

          const SizedBox(height: AppDimensions.paddingM),

          // Name
          const Text(
            AppStrings.fullName,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.grey900,
            ),
          ),

          const SizedBox(height: AppDimensions.paddingXS),

          // Designation
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingM,
              vertical: AppDimensions.paddingXS,
            ),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppDimensions.radiusCircle),
            ),
            child: const Text(
              AppStrings.designation,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ),

          const SizedBox(height: AppDimensions.paddingM),

          // Stats Row
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingXL,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatItem('42', 'Projects'),
                Container(
                  width: 1,
                  height: 40,
                  color: AppColors.grey300,
                ),
                _buildStatItem('5+', 'Years'),
                Container(
                  width: 1,
                  height: 40,
                  color: AppColors.grey300,
                ),
                _buildStatItem('15+', 'Clients'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.grey900,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.grey500,
          ),
        ),
      ],
    );
  }
}