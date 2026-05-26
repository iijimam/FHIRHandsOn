# FHIRPath で学ぶ FHIR データ構造

FHIRPath を利用して FHIR リソース内の情報を辿り、患者情報や検査結果などの FHIR データ構造を理解できるようにします。
さらに、医療データ標準化やデータ利活用の基礎理解へ繋げていきます。

具体的には、以下の内容を学習します。

- [FHIR リポジトリの作成](#fhir-リポジトリの作成)

    InterSystems IRIS for Health を Windows にインストールし、FHIR リポジトリを用意します。

- [FHIR リソースの操作](#fhir-リソースの操作)

    作成した FHIR リポジトリに、サンプルの FHIR リソースを登録します（POST）。

    リソース登録時、患者情報と患者の検査データが関連をもちながら登録できるように、FHIR の構造を確認しながら登録していきます。

- [FHIR リソースの検索](#fhir-リソースの検索)

    FHIR リポジトリに登録されたリソースを、FHIR の SearchParameter を利用することで自由にリポジトリから検索できることを確認します。

- [FHIRPath によるデータ抽出](#fhirpath-によるデータ抽出)

    FHIR リポジトリから得られた検索結果のリソース群から、さらに欲しい情報を自由に抽出できるようにするために、FHIRPath によるデータ抽出の練習を行います。

- [テーマに基づいたデータの抽出](#テーマに基づいたデータの抽出)

    サンプルデータを利用して、2 型糖尿病予備軍となる患者を探し出し、健康維持プログラムへの参加を勧めるため、学習した FHIR SearchParameter、FHIRPath を利用して患者情報を抽出します。 



## 事前準備

### 1. 仮想環境の作成

**VSCode のメニュー：Terminal > New Terminal** からターミナルを起動し、以下実行します（仮想環境 fhirenv を作っています）。

```
python -m venv fhirenv
```

作成した仮想環境を有効化します

```
./fhirenv/Scripts/activate
```

### 2. サンプルデータのロード

この事前準備は、**最終演習の「[テーマに基づいたデータの抽出](#テーマに基づいたデータの抽出)」実施直前**に行ってください。

手順は以下の通りです。

1) ISJ.Utilsクラスをインポート

    VSCode をIRISに接続したあと、[ISJ.Utils](./ISJ/Utils.cls) を開き、Ctrl+Sで保存＋コンパイルします。 

2) IRISターミナルを起動

    ユーザ名：SuperUser、パスワード：（インストール時設定した文字列）　でログインします。

3) ネームスペースを移動

    FHIR リポジトリを用意したネームスペースに移動します。

    ```
    set $namespace="R4FHIRNAMESPACE"
    ```

4) メソッド実行

    データロード用ファイルを展開します。ファイルは、[100Set.zip](./100Set.zip) です

    > windows のエクスプローラー上で展開します。

    展開後、作成されたディレクトリ（100Set）のフルパスを、メソッド実行時指定するため、パスを確認します。

    💡ヒント：Zip 展開後、VSCode の左画面：EXPLORER で、[100Set](./100Set/)を右クリックし「Copy Path」をクリックするとパスがコピーできます。

    ターミナルに以下実行文を貼り付ける場合は、**右クリック > 貼り付け** を使用します。
    ```
    do ##class(ISJ.Utils).create100("C:\FHIRHandsOn\100Set")
    ```

    **📝 memo**: 第1引数に指定する [100Set](./100Set/) のディレクトリフルパスは環境に合わせて適宜変更してください。


## FHIR リポジトリの作成

説明資料：[Step1-FHIRハンズオン.pdf](./PDF/Step1-FHIRハンズオン.pdf) P7 まで

## FHIR リソースの操作

説明資料：[Step1-FHIRハンズオン.pdf](./PDF/Step1-FHIRハンズオン.pdf) P8~17 まで

演習用ファイル：[FHIRHandsOn.http](./FHIRHandsOn/FHIRHandsOn.http)

## FHIR リソースの検索

説明資料：[Step1-FHIRハンズオン.pdf](./PDF/Step1-FHIRハンズオン.pdf) P20~21 まで

演習用ファイル：[FHIRHandsOn.http](./FHIRHandsOn/FHIRHandsOn.http) 368行目以降

## FHIRPath によるデータ抽出

Jupyter ノートブックで操作しながら進めていきます。

[Try-FHIRPath-Basic.ipynb](./Try-FHIRPath-Basic.ipynb)

## テーマに基づいたデータの抽出

この演習操作前に、[事前準備：2.サンプルデータのロード](#2-サンプルデータのロード) を実施してください。

サンプルデータロード後、以下のノートブックを参照しながら進めていきます。

[Try-FHIRPath-Advanced.ipynb](./Try-FHIRPath-Advanced.ipynb)