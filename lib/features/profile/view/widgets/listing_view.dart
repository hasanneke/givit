import 'package:flutter/material.dart';

class ListingView extends StatelessWidget {
  final ValueChanged<bool> onListChange;
  final ScrollController scrollController;

  const ListingView({Key? key, required this.onListChange, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    onListChange(false);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_back_sharp),
                      Text('History'),
                    ],
                  ),
                ),
                const Spacer(),
                const Text('#### Live Listings'),
                const Spacer(),
                const Icon(Icons.filter_alt_rounded),
                const Text('Filter')
              ],
            ),
            Expanded(
              child: GridView.builder(
                controller: scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: MediaQuery.of(context).size.width / 1.1),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      // height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              children: [
                                Text('Product Name'),
                                Spacer(),
                                Text('Size'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              'Price',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
