import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> images = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  // Cuando se crea el state por primera y unica vez
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //addNewElementsToList();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addNewElementsToList();

    isLoading = false;
    setState(() {});
  }

  void addNewElementsToList() {
    final lastId = images.last;
    images.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    print(images);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        //backgroundColor: Colors.black12,
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(
        children: [
          ListView.builder(
              controller: scrollController,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity, // hace que ocupe todo el ancho
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder:
                        const AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${images[index]}'));
              }),
          if (isLoading)
            Positioned(
                bottom: 40,
                left: (screenSize.width * 0.5) - 30,
                child: const _LoadingIcon())
        ],
      ),
    ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
