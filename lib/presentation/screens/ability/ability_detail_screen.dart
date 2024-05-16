import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AbilityDetailScreen extends ConsumerStatefulWidget {
  final String abilityName;
  const AbilityDetailScreen({super.key, required this.abilityName});

  @override
  ConsumerState<AbilityDetailScreen> createState() =>
      _AbilityDetailScreenState();
}

class _AbilityDetailScreenState extends ConsumerState<AbilityDetailScreen>
    with TickerProviderStateMixin {
  late final tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: IconButton(
              onPressed: context.pop,
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.sizeOf(context).height / 10 * 8.8,
        minHeight: MediaQuery.sizeOf(context).height / 10 * 8.8,
        body: Container(color: Theme.of(context).colorScheme.primary),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        panel: Column(
          children: [
            TabBar(
              labelColor: Theme.of(context).colorScheme.primary,
              indicator: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2))),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              dividerHeight: 0,
              labelStyle:
                  textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
              controller: tabController,
              tabs: const [
                Tab(text: "About"),
                Tab(text: "Pokémon"),
                Tab(text: "Changes")
              ],
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: [
              SingleChildScrollView(child: Text("1")),
              SingleChildScrollView(child: Text("1")),
              SingleChildScrollView(child: Text("1"))
            ])),
          ],
        ),
      ),
    );
  }
}
