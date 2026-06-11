import 'package:flutter/material.dart';
import 'package:profilepage/features/profile/widgets/profile_contact.dart';
import 'package:profilepage/features/profile/widgets/profile_header.dart';
import 'package:profilepage/features/profile/widgets/profile_social.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../widgets/profile_about.dart';
import '../../widgets/profile_education.dart';
import '../../widgets/profile_experience.dart';
import '../../widgets/profile_skills.dart';
import '../../widgets/profile_footer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sliver App Bar with Cover Photo
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            stretch: true,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: AppColors.primaryGradient,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Cover Photo Background
                    Image.asset(
                      'lib/assets/images/cover_photo.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: AppColors.primaryDark,
                        );
                      },
                    ),
                    // Gradient Overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.primary.withOpacity(0.3),
                            AppColors.primaryDark.withOpacity(0.8),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title: const Text(
              AppStrings.portfolio,
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.share, color: AppColors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: AppColors.white),
                onPressed: () {},
              ),
            ],
          ),

          // Main Content
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Profile Header Section
                const ProfileHeader(),

                const SizedBox(height: AppDimensions.paddingL),

                // Action Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.paddingM,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.email),
                          label: const Text(AppStrings.contactMe),
                        ),
                      ),
                      const SizedBox(width: AppDimensions.paddingM),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download),
                          label: const Text(AppStrings.downloadCV),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppDimensions.paddingXL),

                // About Section
                const ProfileAbout(),

                const SizedBox(height: AppDimensions.paddingL),

                // Skills Section
                const ProfileSkills(),

                const SizedBox(height: AppDimensions.paddingL),

                // Experience Section
                const ProfileExperience(),

                const SizedBox(height: AppDimensions.paddingL),

                // Education Section
                const ProfileEducation(),

                const SizedBox(height: AppDimensions.paddingL),

                // Contact Section
                const ProfileContact(),

                const SizedBox(height: AppDimensions.paddingL),

                // Social Media Section
                const ProfileSocial(),

                const SizedBox(height: AppDimensions.paddingXL),

                // Footer
                const FooterWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
