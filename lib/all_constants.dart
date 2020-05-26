import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//const kBackgroundColor = Color(0xFF24252A);

const kTextColor = Color(0xFF354B98);

const kCardColor = Color(0xFFFFCC01);

var kBackgroundColor = Color(0xFF28387D);

//var kCardColor = Color(0xFF354B98);

var kIconColor = Color(0xFF28387D);

const kFABColor = Colors.white;

//0A154D

//800080

//0xFFF74A59

const kFacultyCardTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    letterSpacing: 4,
    fontFamily: 'SourceSansPro');

const kSearchBarDecoration = InputDecoration(
  filled: false,
  labelText: "Search",
  labelStyle: TextStyle(color: Colors.white),
  hintText: "Search",
  hintStyle: TextStyle(color: Colors.white70),
  prefixIcon: Icon(
    Icons.search,
    color: Colors.white,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
