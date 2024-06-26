import 'package:flutter/material.dart';
import 'package:templeticketsystem/base/res/styles/app_styles.dart';
import 'package:templeticketsystem/base/utils/app_routes.dart';
import 'package:templeticketsystem/base/widgets/app_double_text.dart';
import 'package:templeticketsystem/screens/search/widgets/app_text_icon.dart';
import 'package:templeticketsystem/screens/search/widgets/app_ticket_tabs.dart';
import 'package:templeticketsystem/screens/search/widgets/find_tickets.dart';
import 'package:templeticketsystem/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(height: 40,),
            Text("What are\nyou looking for?", style: AppStyles.headLineStyle1.copyWith(fontSize: 35),),
            const SizedBox(height: 20,),
            const AppTicketTabs(
              firstTab: "Events",
              secondTab: "Temples",
            ),
            const SizedBox(height: 25,),
            const AppTextIcon(icon: Icons.search,text: "Search",),
            const SizedBox(height: 25,),
            const FindTickets(),
            const SizedBox(height: 40,),
            AppDoubleText(
              bigText: 'Upcoming Events',
              smallText: 'View all',
              func:  () => Navigator.pushNamed(context, AppRoutes.allTickets),
            ),
            const SizedBox(height: 15,),
            const TicketPromotion(),
          ],
      ),
    );
  }
}
