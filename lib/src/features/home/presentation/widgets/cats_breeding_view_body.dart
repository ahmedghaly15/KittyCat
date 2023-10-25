import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:kitty_cat/src/core/utils/app_colors.dart';
import 'package:kitty_cat/src/core/widgets/custom_error_widget.dart';
import 'package:kitty_cat/src/features/home/presentation/cubit/home_cubit.dart';

import 'cats_breeding_item.dart';

class CatsBreedingViewBody extends StatelessWidget {
  const CatsBreedingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is GetArticlesLoadingState) {
          return SpinKitCircle(
            size: 50.w,
            color: AppColors.kPrimaryColor,
          );
        } else if (state is GetArticlesSuccessState) {
          return GridView.builder(
            itemBuilder: (context, index) =>
                AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 475),
              columnCount: state.articles.length,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: CatsBreedingItem(article: state.articles[index]),
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            itemCount: state.articles.length,
            scrollDirection: Axis.vertical,
            reverse: false,
            primary: true,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            dragStartBehavior: DragStartBehavior.start,
            clipBehavior: Clip.hardEdge,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 220,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              childAspectRatio: 3 / 2,
            ),
          );
        } else if (state is GetArticlesFailureState) {
          return CustomErrorWidget(
            error: state.failure,
            onPressed: () => BlocProvider.of<HomeCubit>(context).getArticles(),
          );
        } else {
          return SpinKitCircle(
            size: 50.w,
            color: AppColors.kPrimaryColor,
          );
        }
      },
    );
  }
}
