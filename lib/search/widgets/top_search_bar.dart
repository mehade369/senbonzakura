import 'package:flutter/material.dart';
import 'package:milky_way/milky_way.dart';

class TopSearchBar extends StatefulWidget {
  const TopSearchBar._({
    Key? key,
    this.onChanged,
    this.onTap,
    required this.isReadOnly,
  }) : super(key: key);

  const TopSearchBar.editable({
    Key? key,
    required ValueChanged<String> onChanged,
  }) : this._(
          key: key,
          onChanged: onChanged,
          isReadOnly: false,
        );

  const TopSearchBar.readOnly({
    Key? key,
    required VoidCallback onTap,
  }) : this._(
          key: key,
          onTap: onTap,
          isReadOnly: true,
        );

  final bool isReadOnly;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  @override
  State<TopSearchBar> createState() => _TopSearchBarState();
}

class _TopSearchBarState extends State<TopSearchBar> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      onChanged: widget.onChanged,
      cursorColor: context.isLight
          ? context.colorScheme.onPrimary
          : context.colorScheme.primary,
      decoration: InputDecoration(
        fillColor: context.isLight
            ? Colors.black.withOpacity(.1)
            : Colors.white.withOpacity(.1),
        filled: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white54,
        ),
        hintText: 'I am looking for...',
        hintStyle: context.textTheme.subtitle2?.copyWith(
          color: Colors.white54,
        ),
      ),
      onTap: widget.onTap,
      readOnly: widget.isReadOnly,
    );
  }
}
