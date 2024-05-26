# github_repository_search_flutter

This is a Flutter project that uses the GitHub API to search for repositories by keyword. Results are sorted by the number of stars. App allows to see the details of a repository and also visit the repository on GitHub. 

The project was developed using the BLoC pattern. Application's code is divided into Data, Domain and Presentation layers to organise code and separate concerns. Project utilises the GetIt and Injectable packages for dependency injection. For networking and accesing the Github API a Dio package was used along side Retrofit. Get request uses debounce implementation made with Flutter Hooks to avoid overloading the server with requests. Response of the GET request is paginated, so that data is fetched only when needed. Simple animations were added to the project to make it more visually appealing. Simple UI was inspired by designs found on Dribbble and other apps with similar features. Search is performed on user input, so that the user can see the results as they type, which provides a better user experience. Tests were written for the business logic contained inside a Cubit.

