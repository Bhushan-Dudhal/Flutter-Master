# 📱 Flutter Layout Example

This project demonstrates how to use **Row** and **Column** layouts in Flutter.
You can experiment with different `mainAxisAlignment` and `crossAxisAlignment` options to see how widgets are positioned.

---

## 🔰 What You’ll Learn

* **Column** → Arranges widgets vertically (top to bottom).
* **Row** → Arranges widgets horizontally (left to right).
* **mainAxisAlignment** → Controls alignment along the main axis (Row = horizontal, Column = vertical).
* **crossAxisAlignment** → Controls alignment along the cross axis.

---

## 🛠 Widgets Used

* `Scaffold` → Basic app structure (AppBar, Body).
* `AppBar` → Top title bar.
* `Container` → Used to define width/height.
* `Row` and `Column` → Layouts for horizontal and vertical arrangement.
* `Text` → Displays text.
* `ElevatedButton` → Clickable button with action.

---

## 📌 Example Code (Snippet)

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text("A", style: TextStyle(fontSize: 30)),
    Text("B", style: TextStyle(fontSize: 30)),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("C", style: TextStyle(fontSize: 30)),
        Text("D", style: TextStyle(fontSize: 30)),
        ElevatedButton(onPressed: () {}, child: Text("Click")),
      ],
    ),
    Text("E", style: TextStyle(fontSize: 30)),
  ],
)
```

---

## 📷 Output Example

* `mainAxisAlignment: spaceEvenly` → Equal spacing between widgets.
* `crossAxisAlignment: center` → Widgets aligned to the center on the cross axis.

---

## 🚀 How to Run

1. Install Flutter SDK.
2. Clone this repo:

   ```bash
   git clone <repo-link>
   ```
3. Get dependencies:

   ```bash
   flutter pub get
   ```
4. Run the app:

   ```bash
   flutter run
   ```

---

## 📖 Notes

* In **Column** → mainAxis = vertical, crossAxis = horizontal.
* In **Row** → mainAxis = horizontal, crossAxis = vertical.
* `spaceAround`, `spaceEvenly`, `spaceBetween` → Different ways to distribute space between widgets.
* Try uncommenting different alignment options in code to experiment with layouts.
