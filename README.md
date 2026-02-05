# ⌨️ 大西配列 / Norman / QWERTY 切り替え AutoHotkey マクロ

AutoHotkey を使って  
**大西配列**・**Norman レイアウト**・**QWERTY 配列** を  
`Ctrl + Alt + Space` でワンタッチ切り替えできる Windows 用キーボードマクロです。

👉 **AutoHotkey v2.0.19 で動作確認済み**

---

## 🚀 Features

### 🔁 配列切り替え（3モードトグル）

| Key | Action |
|---|---|
| `Ctrl + Alt + Space` | **QWERTY → 大西 → Norman → QWERTY** の順に切り替え |

画面右下に現在の配列がポップアップ表示されます。

| 表示 | 意味 |
|------|------|
| 🔤 QWERTY配列 | 通常のキーボード配列 |
| 🈶 大西配列 | 大西キー配列有効 |
| 🇺🇸 Norman配列 | 英語入力最適化 Norman レイアウト |

---

### ⌨️ 半角 / 全角 切り替え

| Key | Action |
|---|---|
| `q + w` 同時押し | 半角 / 全角 切り替え |

※ 75ms 以内の同時押しで判定

---

## 🈶 大西配列モード時のみ有効な拡張キー

※ **大西配列が有効なときだけ** 動作します  
（QWERTY / Norman 時は通常入力）

| Key | Result |
|---|---|
| `変換 + Space` | Enter |
| `無変換 + Space` | Backspace |
| `変換 + k` | ↓ |
| `変換 + i` | ↑ |
| `変換 + j` | ← |
| `変換 + l` | → |

---

## 🇺🇸 Norman レイアウトについて

Norman は **QWERTY に近いまま英語タイピング効率を改善した配列** です。

### 特徴

- ホームポジション使用率アップ  
- 指の移動距離が減少  
- QWERTY からの移行が比較的ラク  
- 英文入力・プログラミング向き  

仕事用PCと自宅環境でのギャップを最小にしつつ、  
英語入力を快適にしたい方向けのレイアウトです。

---

## 🛡️ 安全設計

以下の状況では **自動的にQWERTY動作になります**

- `Ctrl` 押下中  
- `Alt` 押下中  

→ ショートカットキー誤動作を防ぎます

---

## 🖥️ Environment

| 項目 | 内容 |
|------|------|
| OS | Windows 10 / 11 |
| AutoHotkey | **v2.0.19** |
| 旧バージョン | ❌ AutoHotkey v1.x 非対応 |

---

## 📦 Installation

1. **AutoHotkey v2** をインストール  
   https://www.autohotkey.com/

2. 本リポジトリを clone または zip ダウンロード

```bash
git clone https://github.com/yourname/onishi-norman-qwerty-ahk.git
```

3. `.ahk` ファイルをダブルクリックで起動

---

## 🔁 Auto Start（Windows起動時に自動実行）

1. `.ahk` ファイルのショートカットを作成  
2. 以下のフォルダに配置

```
C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

---

## 🧩 想定ユーザー

✔ 大西配列ユーザー  
✔ 英語タイピングを効率化したい人  
✔ 自作キーボード利用者  
✔ QWERTYを残しつつ別配列も使いたい人  

---

## 📄 License

MIT License  
自由に改変・再配布・個人利用 / 商用利用可能

---

## 🙏 Acknowledgements

- AutoHotkey Community  
- 大西配列ユーザーの皆さま  
- Norman Layout 提唱者コミュニティ
