import 'package:flutter/material.dart';

bool didSomeoneWin(var grid, String p, var context) {
  if (grid[0][0] == p && grid[0][1] == p && grid[0][2] == p) {
    return true;
  } else if (grid[1][0] == p && grid[1][1] == p && grid[1][2] == p) {
    return true;
  } else if (grid[2][0] == p && grid[2][1] == p && grid[2][2] == p) {
    return true;
  } else if (grid[0][0] == p && grid[1][0] == p && grid[2][0] == p) {
    return true;
  } else if (grid[0][1] == p && grid[1][1] == p && grid[2][1] == p) {
    return true;
  } else if (grid[0][2] == p && grid[1][2] == p && grid[2][2] == p) {
    return true;
  } else if (grid[0][0] == p && grid[1][1] == p && grid[2][2] == p) {
    return true;
  } else if (grid[0][2] == p && grid[1][1] == p && grid[2][0] == p) {
    return true;
  } else {
    return false;
  }
}

dialog(BuildContext context, String msg) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(msg), actions: [
          ElevatedButton(
            child: const Text("New game"),
            onPressed: () => Navigator.pop(context),
          ),
        ]);
      });
}

