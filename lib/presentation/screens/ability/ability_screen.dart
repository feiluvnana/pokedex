import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/core/constant.dart';
import 'package:pokedex/domain/entities/ability_entity.dart';
import 'package:pokedex/domain/entities/ability_filter_entity.dart';
import 'package:pokedex/domain/providers/ability_provider.dart';
import 'package:pokedex/presentation/components/card.dart';
import 'package:pokedex/presentation/components/popup.dart';
import 'package:pokedex/presentation/components/scaffold.dart';

class AbilityScreen extends ConsumerStatefulWidget {
  const AbilityScreen({super.key});

  @override
  ConsumerState<AbilityScreen> createState() => _AbilityScreenState();
}

class _AbilityScreenState extends ConsumerState<AbilityScreen> {
  List<AbilityFilterEntity> filters = [];
  final pagingController =
      PagingController<int, AbilityEntity>(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener((page) async {
      if (!mounted) return;
      if (filters.isEmpty) {
        var items = await ref.read(getAbilitiesProvider(page).future);
        if (items.length < tPokeApiPaginationLimit) {
          pagingController.appendLastPage(items);
        } else {
          pagingController.appendPage(items, page + 1);
        }
      } else {
        var items =
            await ref.read(getAbilitiesWithFiltersProvider(filters).future);
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
          SliverAppBar(
              pinned: true,
              scrolledUnderElevation: 0,
              leading: IconButton(
                  onPressed: context.pop, icon: const Icon(Icons.arrow_back)),
              actions: [
                IconButton(
                    onPressed: () {
                      context
                          .showGenerationPopup(
                              selectedGens: filters
                                  .whereType<AbilityGenerationFilter>()
                                  .map((e) => e.generation)
                                  .toList())
                          .then((gen) {
                        if (gen == null) return;
                        setState(() {
                          final newFilter = AbilityGenerationFilter(gen);
                          if (filters.contains(newFilter)) {
                            filters.remove(newFilter);
                          } else {
                            filters.add(newFilter);
                          }
                        });
                        ref.invalidate(getAbilitiesWithFiltersProvider);
                        pagingController.refresh();
                      });
                    },
                    icon: const Icon(Icons.filter_alt_outlined))
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 12),
                        child: Text("Ability",
                            style: Theme.of(context).textTheme.titleLarge),
                      )))),
          _AbilitiesListSection(pagingController: pagingController)
        ],
      ),
    ));
  }
}

class _AbilitiesListSection extends StatelessWidget {
  const _AbilitiesListSection({required this.pagingController});

  final PagingController<int, AbilityEntity> pagingController;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PagedMasonryGridView<int, AbilityEntity>.extent(
          pagingController: pagingController,
          builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AbilityCard(item, index: index + 1),
                  ),
              noMoreItemsIndicatorBuilder: (context) => const Center(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("No more Pokémon Abilities."),
                  )),
              newPageProgressIndicatorBuilder: (context) => tPikaLoader,
              firstPageProgressIndicatorBuilder: (context) => tPikaLoader),
          maxCrossAxisExtent: 600,
        ),
      ),
    );
  }
}
