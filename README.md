# KMDGEN.X

KMD file template generator for X680x0/Human68k

PCM/S44/A44データをaubioライブラリを使って音響解析し、テンポ・ビート・小節・楽器構成変化を捉えてKMDファイルのタイミングテーブルとして出力します。歌詞ディクテーション機能は無いのでそこは人力でお願いしますw

KMD再生の前にデータが無いことには始まらない...けどゼロからタイミング情報を拾っていくのも大変...ということでまずはデータ作成支援(ﾟ∀ﾟ ) 

以下の形式のPCMデータに対応しています。ファイルの種類は拡張子で判別されます。

- X680x0 (MSM6258V) ADPCM 15.6kHz mono (.PCM)
- 16bit raw PCM (big endian) 32kHz/44.1kHz/48kHz stereo/mono (.S44/.M44など)
- YM2608 ADPCM 32kHz/44.1kHz/48kHz stereo/mono (.A44/.N44など)

KMDファイルは Mercury-Unit 対応プレーヤ・レコーダの標準的ソフトである SMR.X を使ってPCMデータと共に再生することのできる歌詞データファイルです。

---

### Install

KMDGNxxx.ZIP をダウンロードして展開し、KMDGEN.X をパスの通ったディレクトリに置きます。

---

### How to use

引数をつけずに実行するか、`-h` オプションをつけて実行するとヘルプメッセージが表示されます。

    KMDGEN.X - KMD file template generator for X680x0 version 0.x.x by tantan
    usage: kmdgen.x [options] <pcm-file>
    options:
      -m<n> ... 何小節ごとにタイミングを出力するか (default:4)
      -s<n> ... 出だしの何小節をスキップしてからタイミングの出力を開始するか
      -q ... 画面表示を行わずにファイルの書き出しのみとする
      -l ... 16bit raw PCM ファイルを little endian とみなす
      -h ... show help message
      -o <out-name> ... output filename (default:auto assign)

`-m`オプションで何小節ごとにタイミングデータを出力するか指定できます。デフォルトは4です。

`-s`オプションで出だしの何小節をスキップしてからタイミングデータを出力し始めるか指定できます。デフォルトは0です。

`-q`オプションで画面出力を行わずにファイルの書き出しのみとします。デフォルトでは画面にもタイミング情報が出力されます。

`-l`オプションで16bit raw PCMを符号付きlittle endian扱いとします。なお.S44の仕様はbig endianですので、特別な変換を行なったケースでのみ有効です。

`-o`オプションで出力ファイル名を指定します。これを省略した場合、元のPCMファイル名の拡張子を出力形式に合わせて自動的に変更したものとなります。ファイルが既に存在する場合は確認を求められます。`-o` の後にはスペースを入れる必要がありますので注意してください。

### License

オーディオ特性データ抽出ライブラリとして aubio 0.4.9 をx68k向けにコンパイルしたものを利用させて頂いています。KMDGENのライセンスはaubioのライセンスに準じGPLv3となります。

YM2608 ADPCM形式のエンコードライブラリとして Otankonas氏のライブラリコードの一部を当方でデバッグしたものを利用させて頂いています。

---

### Special Thanks

* KMDの技術情報およびサンプルデータ提供 thanks to かきうちさん / X68PROさん 
* xdev68k thanks to ファミべのよっしんさん
* HAS060.X on run68mac thanks to YuNKさん / M.Kamadaさん / GOROmanさん
* HLK301.X on run68mac thanks to SALTさん / GOROmanさん
* XEiJ thanks to M.Kamadaさん
* ADPCMLIB thanks to Otankonas さん

---

### History

* 0.1.0 (2023/02/28) ... 初版