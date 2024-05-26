import 'package:flutter/material.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryDetailsPage extends StatelessWidget {
  final GithubRepository repository;

  const RepositoryDetailsPage({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFF091729),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF091729),
          title: Text(
            'Repository details',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                _OwnerCard(repository: repository),
                SizedBox(height: 16),
                GithubLinkButton(repositoryUrl: repository.repositoryUrl),
                SizedBox(height: 16),
                GithubRepositoryDetailsCard(repository: repository)
              ],
            ),
          ),
        ),
      );
}

class GithubLinkButton extends StatelessWidget {
  const GithubLinkButton({
    super.key,
    required this.repositoryUrl,
  });

  final String repositoryUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          backgroundColor: Color.fromARGB(255, 229, 238, 241),
        ),
        onPressed: () async {
          await launchUrl(Uri.parse(repositoryUrl));
        },
        child: Text(
          'View Repository on GitHub',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF1C2739),
          ),
        ),
      ),
    );
  }
}

class _OwnerCard extends StatelessWidget {
  const _OwnerCard({
    super.key,
    required this.repository,
  });

  final GithubRepository repository;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF121F31),
          border: Border.all(
            color: Color(0xFF1C2739),
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          children: [
            Flexible(
              child: Hero(
                tag: repository.name,
                child: Image.network(
                  repository.owner.avatarUrl ?? '',
                ),
              ),
            ),
            SizedBox(width: 20),
            Flexible(
              flex: 3,
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Owner',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      repository.owner.login,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

class GithubRepositoryDetailsCard extends StatelessWidget {
  final GithubRepository repository;

  const GithubRepositoryDetailsCard({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF121F31),
          border: Border.all(
            color: Color(0xFF1C2739),
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TitleWithContent(
              title: 'Repository name: ',
              content: repository.name,
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: _TitleWithContent(
                    title: 'Description: ',
                    content: repository.description ?? '',
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            _TitleWithContent(
              title: 'Stars: ',
              content: repository.stars?.toString() ?? '0',
            ),
            SizedBox(height: 8),
            _TitleWithContent(
              title: 'Forks: ',
              content: repository.forks.toString(),
            ),
            SizedBox(height: 8),
            _TitleWithContent(
              title: 'Watchers: ',
              content: repository.watchersCount.toString(),
            ),
            SizedBox(height: 8),
            _TitleWithContent(
              title: 'Open issues: ',
              content: repository.openIssues.toString(),
            ),
          ],
        ),
      );
}

class _TitleWithContent extends StatelessWidget {
  final String title;
  final String content;

  const _TitleWithContent({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
              fontWeight: FontWeight.w600,
              height: 1.6,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              height: 1.3,
            ),
          ),
        ],
      );
}
