class Joypad {
  boolean up, down, left, right;

  Joypad() {
    up = false;
    down = false;
    left = false;
    right = false;
  }

  void keyPressed(char key) {
    if (key == 'w' || key == 'W') {
      up = true;
    } else if (key == 's' || key == 'S') {
      down = true;
    } else if (key == 'a' || key == 'A') {
      left = true;
    } else if (key == 'd' || key == 'D') {
      right = true;
    }
  }

  void keyReleased(char key) {
    if (key == 'w' || key == 'W') {
      up = false;
    } else if (key == 's' || key == 'S') {
      down = false;
    } else if (key == 'a' || key == 'A') {
      left = false;
    } else if (key == 'd' || key == 'D') {
      right = false;
    }
  }
}
