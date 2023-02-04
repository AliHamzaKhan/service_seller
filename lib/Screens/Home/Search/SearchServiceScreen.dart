

import 'package:flutter/material.dart';

import '../../../Models/ServiceSearchWords.dart';

class SearchServiceScreen extends StatefulWidget {
  SearchServiceScreen({Key? key, required this.listWordsDetail}) : super(key: key);
  final ServiceSearchWords listWordsDetail;
  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
