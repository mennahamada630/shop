import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/core/widgets/custom_app_bar.dart';
import 'package:shop/features/home/cubit/home_cubit.dart';
import 'package:shop/features/home/widgets/banner_widgets.dart';
import 'package:shop/features/home/widgets/featured_section.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/product_item.dart';
import '../cubit/home_state.dart';
import '../widgets/category_item.dart';
import '../widgets/recommended_item.dart';
import '../widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context){
        HomeCubit cubit = HomeCubit();
        cubit.getCategories();
        cubit.getProducts();
        return cubit;
      },
      child: BlocBuilder<HomeCubit,HomeState>(
        builder: (context,state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
          ),
          ],
          ),
          appBar: CustomAppBar(title: 'Stylish'),

          body: SafeArea(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:SingleChildScrollView(
          child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            SearchWidget(),
          SizedBox(height: 20.h),
          BannerWidget(),
          SizedBox(height: 25.h),
          FeaturedSection(title: 'All Featured'),
          SizedBox(height: 15,),
            SizedBox(
              height: 100.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return CategoryItem(
                    model:
                    cubit.categories[index],
                  );
                },
                separatorBuilder:
                    (_, __) =>
                    SizedBox(width: 15.w),
                itemCount:
                cubit.categories.length,
              ),
            ),

            SizedBox(height: 25.h),
            const FeaturedSection(
              title: "Recommended",
            ),

            SizedBox(height: 15.h),

            GridView.builder(
              shrinkWrap: true,
              physics:
              const NeverScrollableScrollPhysics(),
              itemCount:
              cubit.products.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.w,
                childAspectRatio: .62,
              ),

              itemBuilder: (context, index){
                return RecommendedItem(
                  model:
                  cubit.products[index],
                );
              },
            ),
          ],
          ),
          ),
          ),
          )
          );
        }),
    );

  }
}