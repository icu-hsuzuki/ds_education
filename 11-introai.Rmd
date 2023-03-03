# 数理、データサイエンス、AI  {#introai}

## はじめに

まず、個人的なことから、書こうと思う。

わたしが、データサイエンスを勉強したいと考えるようになったのは、2016年3月に、トップ棋士の李世乭（イ・セドル）に対する、五番勝負で、Alpha Go が ４勝１敗で勝利したことに端を発する。Alpha Go は、過去の人間の打碁を学んで、強くなっていったと報道されたが、次の年には、Alpha Zero が登場し、人間の打碁のデータを用いず、コンピュータ同士で、打つことによって、強くなっていき、Alpha Go を十分しのぐ状態になったのである。

小学生のころに、囲碁を覚えていたわたしは、直線的に、王を詰める、Chess や、将棋とちがって、盤面での評価が困難な、囲碁の場合には、AI が勝利するには、まだ、かなりの時間がかかるのではないかと思っていた。ランダムな手の価値を推測していく、モンテカルロ法を用いたアルゴリズムである程度、強くなったと聞いて、ひょっとすると、わたしが生きているうちに、人間に勝利する AI が登場するかもしれないとは、考えるようになっていた。

現在の囲碁や将棋のAIをみていると、完全読み、または局所的に、生き死にを決定する場面では、AI の候補にない手をプロ棋士が打って、形勢が変化する場面はあるが、全局的な形勢判断おいては、AIの判断が、圧倒的に、プロを凌駕しているように見える。将棋においては、途中まで、形勢に差がない場合が多いが、囲碁においては、最初から微妙な差を計算して、評価値を示している。上に書いたように、囲碁のようなゲームの方が、AI には、難しいのではないかと考えていたが、すくなくとも、その部分において、大きな飛躍があり、乗り越えられたことは、確かである。

後からも述べるが、論理的に完全に結果を出すよりも、膨大なデータ（Big Data）から、より、確率が高いものを示すことが得意であることを、示していると言える。

Alpha Go 関連の記事を追いかけながら、開発者の中心人物、Demis Hassabis についても、いくつか講演を聞き、書いたものを読み、インタビュー記事を読んだ。

特に印象的だったのは、Demis Hasabis が AI の将来について語った次の言葉だった^[2016年03月11日 囲碁チャンピオンを打ち破ったGoogleの人工知能「AlphaGo」を作った天才デミス・ハサビスが人工知能を語る（[DeepMind founder Demis Hassabis on how AI will shape the future](https://www.theverge.com/2016/3/10/11192774/demis-hassabis-interview-alphago-google-deepmind-ai) の訳）：https://gigazine.net/news/20160311-demis-hassabis-talk-ai/]。

> 私が本当にエキサイティングだと思っているAIとは科学的な部分で、科学をより早く進化させるところです。私はAIによってアシストされる科学を見たいと思います。そこでは、AIは効果的に研究を助け、多くのつまらない労働をサポートして、興味深いことを教えてくれ、山のようなデータから構造を見つけてくれ、人間のエキスパートや研究者がブレイクスルーをもっと素早く達成できます。数カ月前にCERNの研究者と話す機会がありましたが、彼らは世界で最も多くのデータと格闘しています。データの量があまりに膨大で処理できないほどです。AIが膨大なデータの中から新しい何かを見つけてくれる未来はクールだと思います。

>  What I’m really excited to use this kind of AI for is science, and advancing that faster. I’d like to see AI-assisted science where you have effectively AI research assistants that do a lot of the drudgery work and surface interesting articles, find structure in vast amounts of data, and then surface that to the human experts and scientists who can make quicker breakthroughs. I was giving a talk at CERN a few months ago; obviously they create more data than pretty much anyone on the planet, and for all we know there could be new particles sitting on their massive hard drives somewhere and no-one’s got around to analyzing that because there’s just so much data. So I think it’d be cool if one day an AI was involved in finding a new particle.

何かの研究をしているひとは、みな、経験があると思うが、多くの情報のなかで、なにが大切なのか、それを見極めるのが難しい。それを、AI が助けてくれる、そんな世界を、Demis Hassabis は、第一局目が終了した時点での、インタビューで語っています。

まさに、囲碁においては、19x19 の碁盤の、どこに着手すれば良いか、どこが最も価値が高いかを判断します。それを、効果的に見つける、アルゴリズムを作り、Google の支援を受けて、膨大なコンピュータを使って、強化していったのです。アルゴリズムとトレーニング。AI の背後にある、このようなものを、学んでみたいと考えたのでした。

囲碁・将棋における完全読みと表現した部分や、アルゴリズムは、数理的な部分と考えられるように思うが、トレーニングの部分は、まさに、データサイエンス。統計的なものが、ある程度背後にあることは確かだが、より、コンピュータ工学的な面がつよいと思われる。トレーニングの背後には、ニューラルネットワークや、深層学習（Deep Learning）、強化学習（Reinforcement Learning）のような、アルゴリズムに関わることがあることは確かだが、コンピュータのリソースを最大限に用いる技術がやはり、大きいように思われる。すでに、アルゴリズムに関わる部分は、パッケージ、または、モジュール化され、それを、組み合わせて、どのように活用するかが大切になっているように思われる。

:::{.rmdnote}
囲碁に興味のある方は、簡単に、AI Go を経験できますので、試してみてください。[KataGui](https://katagui.baduk.club/) ハンディキャップも、九子まで増やすことができます。また、観戦をすることもできますし、最善手や、形成も見ることができます。
:::

Google 検索の基本は、[PageRank](https://en.wikipedia.org/wiki/PageRank)（Page は Google の創業者のうちの一人の名前）というアルゴリズムで、検索結果に順序をつけて、表示します。数を入れれば、答えが出るというような単純な形ではありませんが、単純化すると、計算式のようなものです。

もう一つの、トレーニング。さまざまなトレーニング方法がありますが、大きく括ると、機械学習（Macine Learning）と呼ばれています。そのなかに、いくつかの手法があります。プログラム化された、深層学習（Deep Learning）などが、有名ですが、ここで、より、適切なものを選択していくことが、データサイエンスの手法と言っても良いかもしれません。データから、探求していくので、データ分析の分野では、探索的データ分析（Exploratory Data Analysis）と呼ばれます。人間の営みとしても、この、探索的データ分析がとても、大切だと考えています。

最近は、もっと、複雑なことにも、答えてくれます。わたしは、昨年暮れに、一般公開されて、あまりたたない頃から、[Chat GPT](https://openai.com/blog/chatgpt) を少しずつ利用し、Browser（Google Chrome などのホームページ閲覧ソフト）の[機能拡張](https://chrome.google.com/webstore/detail/chatgpt-for-google/jgjaeacdkonaoafenlfkkkmbaopkbilf)として、組み込んでも、使っています。また、あまり長くない（254文字以内）問いの場合は、[Perplexity](https://www.perplexity.ai) も使っています。

AIに仕事を奪われるとか、AI も間違いを犯すので、AI に任せては危険だとか、こんなことは、AI にはできないだろう。なとど、排除しようとしたり、否定的な考えを持つ方も、おられるでしょうが、すこしずつ、人間にとって、たいへんなしごとを担うことができるようになり、人間よりも、優秀な答えを出してくれることもある、そんな AI とは、丁寧にお付き合いをして、よい関係を築くことがたいせつだと考えています。

AI と、どうお付き合いをしていったら良いでしょうか。それは、分かりません。しかし、ちょっと、変わっていて、常識が通じないような、ひとと出会った時に、どうしますか。わたしは、否定したり、排除したり、敵対したりするのではなく、「あなたのことを教えてください」と、伝えながら、少しずつ関係を築いていくことだと考えています。そして、AI に対しても、そのように、できればと考えています。

簡単に、いうと、それが、データサイエンスを学び始めた経緯です。

## 安全な AI?

AIを使い、開発していく時に、どのようなことに注意する必要があるのだろうか。AI (Artificial Intelligence) や、そのロボットへの応用の専門家である、Stewart Russel^[Stuart Jonathan Russell OBE (born 1962) is a British computer scientist known for his contributions to artificial intelligence (AI).[5][3] He is a professor of computer science at the University of California, Berkeley and was from 2008 to 2011 an adjunct professor of neurological surgery at the University of California, San Francisco. He holds the Smith-Zadeh Chair in Engineering at University of California, Berkeley. He founded and leads the Center for Human-Compatible Artificial Intelligence (CHAI) at UC Berkeley. Russell is the co-author with Peter Norvig of the most popular textbook in the field of AI: Artificial Intelligence: A Modern Approach used in more than 1,500 universities in 135 countries. (Wikipedia: https://en.wikipedia.org/wiki/Stuart_J._Russell)] は、その著書（Human Compatible: Artificial Intelligence and the Problem of Control）や、講演で、次のようなテーゼを唱えている。

### 安全な AI を創るための三つの基本原則

:::{.rmdimportant}
**[3 principles for creating safer AI](https://www.newworldai.com/three-principles-for-creating-safer-artificial-intelligence-stuart-russell/) | Stuart Russell**

1. The robot’s only objective is to maximize the realization of human values.
	- ロボット（AI：人工知能）が目指す（べき）ものは、ひとにとってたいせつなことを実現することである。
2. The robot is initially uncertain about what those values are
	- ロボット（AI）は、最初は、ひとにとってたいせつなことが何であるかはわかっていない。
3. Human behaviour provides information about human values
	- ロボット（AI）は、ひとがどのように行動し・思考し・感じるかを観察して、ひとにとってたいせつなことが何であるかを学習していく。
:::

ここで言っている、Human ひととは、誰のことでしょうか。特定のひとや、会社など、一部のひとにならなっては、問題が生じるでしょうね。人類、ひとびと全体を観察して、なにが大切なのかを学習していくことができるのでしょうか。

それは、ロボットや、AI だけでなく、わたしたちに、課された使命でもあると思われます。みなさんは、ひとにとって、たいせつなことがなんであるか、知っていますか。

## AI を体験してみよう

「あなた（AI）のことを教えてください」まずは、体験してみることですかね。

### 語学学習アプリ Duolingo

一つ目は、語学学習アプリ（無償で十分使える）Duolingo。

携帯電話などの、モバイル（App Store、Google Play で取得）で利用することが一般的だが、コンピュータでも使うことが可能。

世界で、４億人以上が使った経験を持っているといわれ、300万人以上が、１年間以上継続していると報じられている。ゲーム感覚でできることもあり、ゲームにはまる時間をある程度、学びにつかい、語学学習の実益をかねるためにも、おすすめ。日本語からは、英語、中国語、韓国語、フランス語しか、学べないが、英語からは、38言語学ぶことができる。英検２級程度の力があれば、英語からの学習も可能と思われ、英語を使った学びを経験できる。授業では、あくまでも、AI について学ぶために、共通の学習経験と、評価をすることを目的とする。その後、継続するかどうかは個人の自由。

なお、英語など、学習したことのある言語の学習をはじめるときは、最初に簡単なテストをうけると、簡単な部分を、スキップすることができます。

- Duolingo を使ってみる。二週間ほど。
  - どのような種類の問題があるか
  - 継続するために、どのような方法が考えられているか。
  - なぜ、Follow や、Followed by のような仲間を作ることを奨励しているのか。
  - 仲間とのやりとりはどのように制限されているか。
  - 課金のためには、どのような方法が取られているか。
  - 採点には、どのような手法が取られているか。
  - AI が使われているのは、どのような部分だと思われるか。
  - 気に入った点、気に入らない点、すばらしいと思えること、改善が必要だと思うこと。


### Chat GPT などを、学びにも活用する  

- ChatGPT を使ってみる
- Perplexity を使ってみる
- 他の、無償で利用できる、AI を調べてみる

### Cookie についてしらべてみる

身近なものとして、レコメンデーションシステムがありますが、そこでも、使われている、Cookie はどのようなものなのでしょうか。調べてみましょう。

マーケティングなどで、Cookie の情報を使っている卒業生などに、講演してもらうのも良いでしょう。

## まとめ

- どのようなことに、AI は使われていくだろうか。
  - 有効と思われるものを挙げてみよう。
  - 問題、課題がある使われ方を挙げてみよう。
  - 不安を感じることはどのようなことだろうか。
  
- どのように、付き合って行ったら良いだろうか。

