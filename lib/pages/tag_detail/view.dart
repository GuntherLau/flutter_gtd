import 'package:common_ui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tag_list/state.dart';
import 'logic.dart';
import 'state.dart';

class TagDetailPage extends StatefulWidget {
  const TagDetailPage({Key? key}) : super(key: key);

  @override
  State<TagDetailPage> createState() => _TagDetailPageState();
}

class _TagDetailPageState extends State<TagDetailPage> {
  final TagDetailLogic logic = Get.put(TagDetailLogic());
  final TagDetailState state = Get.find<TagDetailLogic>().state;
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    Get.delete<TagDetailLogic>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitleText: logic.mode == TagMode.Edit ? 'Edit Tag' : 'Add New Tag',
        actions: [
          CustomIconButton(
              icon: CupertinoIcons.trash,
              press: () {

              }
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: SingleChildScrollView(
          child: buildForm(context),
      ),
    );
  }

  buildForm(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIconAndName(),
                _buildGridViewColorPicker(),
                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ]
          ),
        ));
  }

  _buildIconAndName() {
    return SizedBox(
      height: 70,
      child: TextField(
        controller: logic.nameController,
        autofocus: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(.2),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)
          ),
        ),
        // validator: (v) {
        //   return v == null || v.trim().isEmpty ? "请填写目标名称" : null;
        // },
      ),
    );
  }

  final PageController pageController = PageController();
  final List<List<Color>> colorTypes = [
    [Colors.red, Colors.redAccent],
    [Colors.pink, Colors.pinkAccent],
    [Colors.purple, Colors.purpleAccent],
    [Colors.deepPurple, Colors.deepPurpleAccent],
    [Colors.indigo, Colors.indigoAccent],
    [Colors.blue, Colors.blueAccent],
    [Colors.lightBlue, Colors.lightBlueAccent],
    [Colors.cyan, Colors.cyanAccent],
    [Colors.teal, Colors.tealAccent],
    [Colors.green, Colors.greenAccent],
    [Colors.lightGreen, Colors.lightGreenAccent],
    [Colors.lime, Colors.limeAccent],
    [Colors.yellow, Colors.yellowAccent],
    [Colors.amber, Colors.amberAccent],
    [Colors.orange, Colors.orangeAccent],
    [Colors.deepOrange, Colors.deepOrangeAccent],
    [Colors.brown],
    [Colors.grey],
    [Colors.blueGrey],
    [Colors.black],
  ];

  int _selectedCategoryIndex = 0;
  int _selectedColorIndex = 0;

  _buildGridViewColorPicker() {
    final int columns = 4;
    final int rows = 5;
    List<Widget> selectors = [];
    final List<Widget> pages = [];

    for(int i=0; i<colorTypes.length; i++) {
      selectors.add(Container(
        width: MediaQuery.of(context).size.width / 9,
        height: MediaQuery.of(context).size.width / 9,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colorTypes[i],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
      ));
      pages.add(ColorPageView(
        primaryColor: colorTypes[i][0],
        categoryIndex: i,
        selectedCategoryIndex: _selectedCategoryIndex,
        selectedColorIndex: _selectedColorIndex,
        onSelected: (categoryIndex, colorIndex) {
          Color primaryColor = colorTypes[categoryIndex][0];
          List<Map<Color, String>> colorList = _shadingTypes([primaryColor]);
          var color = colorList[colorIndex];
          final Color _color = color.keys.first;
          print('categoryIndex: $categoryIndex, colorIndex: $colorIndex color:$_color');
          setState(() {
            _selectedCategoryIndex = categoryIndex;
            _selectedColorIndex = colorIndex;
          });
        },
      ));
    }

    return Column(
      children: [
        SizedBox(
          height: 50,
          child:FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: selectors,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.width / columns) * rows,
          child: PageView(
            pageSnapping: true,
            controller: pageController,
            children: pages,
          ),
        ),
      ],
    );
  }

}

typedef OnColorPageChanged = void Function(int categoryIndex, int colorIndex);

class ColorPageView extends StatelessWidget {

  final int categoryIndex;
  final Color primaryColor;
  final int columns = 4;
  final int rows = 5;
  final bool selected;
  final OnColorPageChanged onSelected;
  final int selectedCategoryIndex;
  final int selectedColorIndex;

  const ColorPageView({
    super.key,
    required this.categoryIndex,
    required this.onSelected,
    required this.selectedCategoryIndex,
    required this.selectedColorIndex,
    required this.primaryColor,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<Color, String>> colorList = _shadingTypes([primaryColor]);
    return Container(
      child: GridView.count(
        crossAxisCount: columns,
        children: List.generate(
          // rows * columns,
          colorList.length,
              (index) {
            if (index >= colorList.length) return Container();
            var color = colorList[index];
            final Color _color = color.keys.first;
            return Container(
              alignment: Alignment.center,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  print("选择前:$_color");
                  onSelected(categoryIndex, index);
                },
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double width = constraints.maxWidth * 0.8;
                    double height = constraints.maxHeight * 0.8;
                    return Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        color: _color,
                        shape: BoxShape.circle,
                      ),
                      child: categoryIndex == selectedColorIndex && index == selectedColorIndex ? const Icon(Icons.check, color: Colors.white) : null,
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }



}

List<Map<Color, String>> _shadingTypes(List<Color> colors) {
  List<Map<Color, String>> result = [];

  for (Color colorType in colors) {
    if (colorType == Colors.grey) {
      result.addAll([50, 100, 200, 300, 350, 400, 500, 600, 700, 800, 850, 900]
          .map((int shade) => {Colors.grey[shade]!: shade.toString()})
          .toList());
    } else if (colorType == Colors.black || colorType == Colors.white) {
      result.addAll([
        {Colors.black: ''},
        {Colors.white: ''}
      ]);
    } else if (colorType is MaterialAccentColor) {
      result.addAll([100, 200, 400, 700].map((int shade) => {colorType[shade]!: 'A$shade'}).toList());
    } else if (colorType is MaterialColor) {
      result.addAll([50, 100, 200, 300, 400, 500, 600, 700, 800, 900]
          .map((int shade) => {colorType[shade]!: shade.toString()})
          .toList());
    } else {
      result.add({const Color(0x00000000): ''});
    }
  }

  return result;
}