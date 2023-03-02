# 生涯学び続ける基盤を構築するデータサイエンス・コースの開発 {#coursedesign}
## ~Free Open Online 教材の活用なども視野に入れて~ {-}

## はじめに

専門分野にもつながりうる、リテラシーレベルのデータサイエンスについて、二段階にわけて（半期二コース程度）、お話ししたいと思う。

内容としては、基本的に下の二つとし、それを融合させた形で行う。

1. AI（人工知能）との付き合い方を学ぶ
2. 世界や、ひとびとの課題について、データサイエンスで学ぶ

ゲームや、SNS、音楽やビデオ視聴だけでなく、学びに、携帯電話や、コンピュータを活用するように促すカリキュラムを考える。それには、まずは、楽しさ。そして、一人ひとりの異なる、知的興味に、対応できる学びの企画が必要である。また、これからの世界を考えると、他者と、どのように協力しながら学んでいくかも、配慮する必要がある。

## 実際の学び

講演では、実際に学びを経験してみたいと考えている。R や R Studio が、インストールされたコンピュータがあると良いが、インストールされていなくても、[Posit Cloud](https://posit.cloud/) というインターネット上のサービスも Email アドレスだけで利用できる。携帯電話などで、ネットにつながっているだけでも、ある程度、体験できると思う。

概略をいかに簡単に記す。

1. 授業を通して、学生と一緒に AI を使いながら学ぶ。
2. AI の考え方の基本（深層学習（Deep Learning など）を学ぶ。ビデオを使っても良い。
3. WDI（[World Development Indicators](https://datatopics.worldbank.org/world-development-indicators/)）、その他の [World Bank Open Data](https://data.worldbank.org/)、[UN Data](https://data.un.org/)、[OECD Data](https://data.oecd.org/)、[WID](https://wid.world/)、[Our World in Data](https://ourworldindata.org/) などのオープンデータを活用して、世界の課題、世界の中の日本について学ぶ^[基本的には、英語であるが、AI 活用の経験として、ホームページ閲覧ソフトの翻訳機能を使えば、意味は十分取ることができる。必要に応じて [DeepL](https://www.deepl.com/en/translator) を用いる。]。
  - 最初のレベルでは、上記のサイトのダッシュボードと呼ばれる、項目や、国などを選んでグラフを表示させるものを活用し、次のレベルでは、いくつかの指標の関係をみるためにも、R Studio で、R を使う。ある程度、テンプレート化すれば、可視化を通して、学ぶことも可能である。
  - 可視化を通してわかることを、グループで話し合い、発表し、さらに、問いを考えていく、探索的データ分析（Exploratory Data Analysis - EDA）を経験することができる。
  - 用語も含め、問いについて、Chat GPT や、Perplexity^[Chat GPT: https://openai.com/blog/chatgpt, Perplexity：https://www.perplexity.ai/] などの、AI に聞く。その応答を、皆で、議論することで、その有用さ、どのような場合に、間違いが生じるかなども、ある程度理解する。

AI の体験の一例として、語学学習アプリ（無償で十分使える）[Duolingo](https://www.duolingo.com/) で、AI を使った学びを二週間ほど経験し、評価し、課題を話し合うなども有効であると思われる。

## おわりにーChat GPT からの提案

**Chat GPT** 学生のモチベーションを高め、データサイエンスにワクワクさせるためには、魅力的でインタラクティブなカリキュラムを提供することが重要です。ここでは、そのようなカリキュラムをどのように設計したらよいかを提案します。

1. 問題解決型学習：学生が共感でき、データサイエンスの手法を使って解決できる実世界の問題から始める。貧困と教育の関係の把握、都市の交通パターンの予測、エネルギー消費の傾向の分析などが考えられます。

2. インタラクティブな可視化。Tableau、PowerBI、D3.js^[これらは、いずれも、Business Intelligence と言われるツールで、無償でも使える。D3.js は、Java Script をつかっており、多少の、プログラムスキルが必要。Tableau は、ビジネスでの利用を中心としている。PowerBI は、Microsoft のもの。おそらくPowerBI が大学で使うには、Tableau、D3.js と比較するとよいと思われるが、個人的には、勧めない。] などのデータ可視化ツールを使用して、データを調査、理解するよう生徒に促します。これらのツールを使用してインタラクティブなダッシュボードやビジュアライゼーションを作成すると、データのパターンや関係性を確認することができます。

3. グループプロジェクト：少人数のグループでデータサイエンス、プロジェクトに取り組むことを奨励します。これにより、協力的で協調的な学習環境が構築され、学生同士が互いに学び合い、学んだことを実践の場で応用する機会を得ることができます。

4. ゲストスピーカー：データサイエンス分野の専門家を招き、学生を対象に講演してもらう。データサイエンスがどのような職業なのか、より深く理解することができます。

5. ハンズオンワークショップ。教室で学んだことを応用できるような、実践的なワークショップを提供する。例えば、データ分析にRを使うワークショップや、データの可視化にTableauを使うワークショップを開催することができます。

6. 学生主導のディスカッション：学生がディスカッションをリードし、自分たちの成果をクラスで共有することを奨励する。これにより、協力的な学習環境を構築することができ、学生同士が知識やアイデアを共有する機会を得ることができます。

これらの要素をカリキュラムに取り入れることで、魅力的でインタラクティブな学習環境を構築することができ、データサイエンスについてもっと学びたいという学生の意欲をかき立てることができます。