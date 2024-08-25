import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;
  bool _isFiltered = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        double offset = _scrollController.offset;
        bool collapsed = offset >= (300 - (kToolbarHeight + 10));
        // print(offset);
        if (collapsed != _isCollapsed) {
          setState(() {
            _isCollapsed = collapsed;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          pinned: true,
          toolbarHeight: 0,
          collapsedHeight: 0,
          expandedHeight: 300.0,
          flexibleSpace: const FlexibleSpaceBar(
            background: Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage('assets/images/logo.webp'),
                height: 250,
              ),
            ),
          ),
          bottom: AppBar(
            backgroundColor: _isCollapsed ? null : Colors.transparent,
            title: _isFiltered
                ? TextFormField(
                    autofocus: true,
                  )
                : const Center(child: Text('products')),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _isFiltered = !_isFiltered;
                  });
                },
                icon: _isFiltered
                    ? const Icon(Icons.filter_list_off)
                    : const Icon(Icons.filter_list),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  // Handle menu selection
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: 'shop',
                      child: Text('shop'),
                    ),
                    const PopupMenuItem(
                      value: 'info',
                      child: Text('info'),
                    ),
                    const PopupMenuItem(
                      value: 'follow',
                      child: Text('follow'),
                    ),
                    const PopupMenuItem(
                      value: 'cart',
                      child: Text('cart'),
                    ),
                  ];
                },
              ),
            ],
          ),
        ),
        widget.child,
      ],
    );
  }
}
