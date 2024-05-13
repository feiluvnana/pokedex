import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:test_/core/constant.dart';
import 'package:test_/domain/entities/ability_entity.dart';
import 'package:test_/domain/providers/ability_provider.dart';
import 'package:test_/presentation/components/card.dart';
import 'package:test_/presentation/components/scaffold.dart';
import 'package:test_/presentation/screens/home/home_screen.dart';

class AbilityScreen extends ConsumerStatefulWidget {
  static const routeName = "ability";
  static const fullRouteName = "${HomeScreen.routeName}/$routeName";
  const AbilityScreen({super.key});

  @override
  ConsumerState<AbilityScreen> createState() => _AbilityScreenState();
}

class _AbilityScreenState extends ConsumerState<AbilityScreen> {
  final pagingController =
      PagingController<int, AbilityEntity>(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((page) async {
      var items = await ref.read(getAbilitiesProvider(page).future);
      if (items.length >= tPokeApiPaginationLimit) {
        pagingController.appendPage(items, page + 1);
      } else {
        pagingController.appendLastPage(items);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PokeScaffold(
        body: RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(getAbilitiesProvider);
        pagingController.refresh();
      },
      child: CustomScrollView(
        slivers: [
          const _AppBarSection(),
          const _TitleSection(),
          _AbilitiesListSection(pagingController: pagingController)
        ],
      ),
    ));
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const leadingWidth = 56;

    return SliverPadding(
      padding: const EdgeInsets.only(
          left: leadingWidth / 2 - tIconSize / 2,
          bottom: 32,
          right: leadingWidth / 2 - tIconSize / 2),
      sliver: SliverToBoxAdapter(
          child: Text("Ability", style: textTheme.titleLarge)),
    );
  }
}

class _AppBarSection extends StatelessWidget {
  const _AppBarSection();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))]);
  }
}

class _AbilitiesListSection extends StatelessWidget {
  const _AbilitiesListSection({required this.pagingController});

  final PagingController<int, AbilityEntity> pagingController;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: PagedSliverList<int, AbilityEntity>(
        pagingController: pagingController,
        builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (context, item, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AbilityCard(item),
                ),
            noMoreItemsIndicatorBuilder: (context) => const Center(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("No more Pokémon News."),
                )),
            newPageProgressIndicatorBuilder: (context) => tPikaLoader,
            firstPageProgressIndicatorBuilder: (context) => tPikaLoader),
      ),
    );
  }
}
