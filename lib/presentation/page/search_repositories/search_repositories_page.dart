import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/presentation/hooks/debounce_timer_hook.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_cubit.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_state.dart';
import 'package:github_repository_search_flutter/presentation/routing/app_routes.dart';
import 'package:github_repository_search_flutter/utils/or_else_ignore.dart';
import 'package:go_router/go_router.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

class SearchRepositoriesPage extends HookWidget {
  const SearchRepositoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchRepositoriesCubit cubit = useBloc<SearchRepositoriesCubit>();
    final SearchRepositoriesState state = useBlocBuilder(cubit, buildWhen: cubit.buildWhen);
    useBlocListener(cubit, _listener, listenWhen: cubit.listenWhen);

    final Debouncer debouncer = useDebouncer(1000);

    return Scaffold(
      backgroundColor: Color(0xFF091729),
      appBar: AppBar(
        backgroundColor: Color(0xFF091729),
        title: const Text(
          'Github Repository Search',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchBar(debouncer: debouncer, cubit: cubit),
            SizedBox(height: 20),
            state.maybeWhen(
              loaded: (repositories) => Flexible(
                child: ListView.builder(
                  itemCount: repositories.length + 1,
                  itemBuilder: (context, index) => index != repositories.length
                      ? GithubRepositoryCard(
                          repository: repositories[index],
                          onTap: () => context.pushNamed(
                            AppRoutes.repositoryDetails.name,
                            extra: repositories[index],
                          ),
                        )
                      : LoadMoreButton(),
                ),
              ),
              loading: () => LoadingBody(),
              error: (_) => ErrorBody(),
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(
    SearchRepositoriesCubit cubit,
    SearchRepositoriesState state,
    BuildContext context,
  ) =>
      state.maybeWhen(
        orElse: doNothing,
      );
}

class LoadMoreButton extends StatelessWidget {
  const LoadMoreButton({super.key});

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          backgroundColor: Color.fromARGB(255, 229, 238, 241),
        ),
        onPressed: () {},
        child: Text(
          'Load more',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF1C2739),
          ),
        ),
      );
}

class ErrorBody extends StatelessWidget {
  const ErrorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              Text('🧐', style: TextStyle(fontSize: 32)),
              SizedBox(height: 4),
              Text(
                'Connection with server failed.\nPlease try again later.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingBody extends StatelessWidget {
  const LoadingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Expanded(
        child: Center(
          child: Platform.isAndroid
              ? CircularProgressIndicator(
                  color: Colors.white,
                )
              : CupertinoActivityIndicator(
                  color: Colors.white,
                  radius: 12,
                ),
        ),
      );
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.debouncer,
    required this.cubit,
  });

  final Debouncer debouncer;
  final SearchRepositoriesCubit cubit;

  @override
  Widget build(BuildContext context) => TextField(
        decoration: InputDecoration(
          labelText: 'Search Repositories',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Icon(Icons.search),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black),
          ),
          filled: true,
        ),
        onChanged: (text) => debouncer.run(() => cubit.searchRepositories(text)),
      );
}

const BorderRadius githubRepositoryCardBorderRadius = BorderRadius.all(Radius.circular(12));

class GithubRepositoryCard extends StatelessWidget {
  final GithubRepository repository;
  final VoidCallback onTap;

  const GithubRepositoryCard({
    super.key,
    required this.repository,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Material(
          color: Color.fromARGB(255, 229, 238, 241),
          borderRadius: githubRepositoryCardBorderRadius,
          child: InkWell(
            splashColor: Colors.blueGrey[200],
            borderRadius: githubRepositoryCardBorderRadius,
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: githubRepositoryCardBorderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Hero(
                              tag: repository.name,
                              child: Image.network(
                                repository.owner.avatarUrl ?? '',
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(repository.owner.login, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(repository.name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text(
                            repository.description ?? '',
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Stars: ${repository.stars}'),
                              SizedBox(width: 8),
                              Text('Forks: ${repository.forks}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
