# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	[	email: ENV['ADMIN_MAIL'],
		password: ENV['ADMIN_PASS'],
		password_confirmation: ENV['ADMIN_PASS_CONFI']
	]
)

PlanTag.create!(
		[
			{name: 'ガーデンウェディング・お庭がある', category: 0, tag_image:open("./app/assets/images/tag10.jpg")},
			{name: 'クラシック', category: 0,  tag_image:open("./app/assets/images/tag2.jpg")},
			{name: 'ナチュラル', category: 0,  tag_image:open("./app/assets/images/tag6.jpg")},
			{name: 'フェミニン', category: 0, tag_image:open("./app/assets/images/tag14.jpg")},
			{name: '木の雰囲気のある', category: 1, tag_image:open("./app/assets/images/tag4.jpg")},
			{name: '独立チャペル', category: 1, tag_image:open("./app/assets/images/tag13.jpg")},
			{name: 'お庭がある', category: 1, tag_image:open("./app/assets/images/tag16.jpg")},
			{name: '大人っぽい雰囲気', category: 2, tag_image:open("./app/assets/images/tag12.jpg")},
			{name: 'チャペルがある', category: 2, tag_image:open("./app/assets/images/tag8.jpg")},
			{name: 'シックな内装', category: 2, tag_image:open("./app/assets/images/tag17.jpg")},
			{name: 'フェミニンなドレス', category: 3, tag_image:open("./app/assets/images/tag1.jpg")},
			{name: 'カラードレス', category: 3, tag_image:open("./app/assets/images/tag15.jpg")},
			{name: '和装', category: 3, tag_image:open("./app/assets/images/tag3.jpg")},			
			{name: 'ナイトウェディング', category: 4, tag_image:open("./app/assets/images/tag5.jpg")},		
			{name: 'フラワーシャワー', category: 4, tag_image:open("./app/assets/images/tag7.jpg")},		
			{name: 'オリジナルケーキ', category: 4, tag_image:open("./app/assets/images/tag9.jpg")},		
			{name: '家族や親しい友人と', category: 4,  tag_image:open("./app/assets/images/tag11.jpg")}
			
		]
	  )


ItemCategory.create!(
		[
		  {id: 1, name: '飲食'},
		  {id: 2, name: '装花'},
		  {id: 3, name: 'ケーキ'},
		  {id: 4, name: 'ドレス'},
		  {id: 5, name: 'メモリー'},
		  {id: 6, name: '基本パッケージ'},
		  {id: 7, name: 'その他'}
		]
	  )




# 式場情報登録

Client.create!(
	[
	   {plan_id: 1,
		name: 'ホテルかるいざわ別邸',
		catch: '自然に囲まれた空間でゆったりとした時間をお過ごしください', 
		introduction: "創業１００周年を迎えました。宿泊施設も完備しております",
		client1_image:open("./app/assets/images/client1-1.jpg"),
		client2_image:open("./app/assets/images/client1-2.jpg"),
		client3_image:open("./app/assets/images/client1-3.jpg"),
		phone_number: '030-1234-5678',
		email: 'karuizawabetei@mail',
		homepage_url: 'http://karuizawabettei.com',
		acces: '軽井沢駅よりタクシーで10分',
		capacity: 'ご着席の場合：200席、立食の場合：250名様まで対応可能。',
		regular_holiday: '毎週水曜日',
		business_hours: 'ウェディング相談窓口の営業時間：10時〜18時（水曜を除く土日祝日も営業中）',
		wedding_time_zone: '10時〜、13時〜、17時〜',
		other: 'ペット同伴可能、ドレス持ち込み可能、その他持ち込みについても持ち込み料はかかりません。ご相談ください',
		office_name: '株式会社ホテルかるいざわ',
		staff_name: '鈴木　花子',
		staff_name_kana: 'すずき　はなこ',
		staff_email: 'suzukihanako@mail',
		staff_phone_number: '090-0101-0101',
		is_active: true
		},

		{plan_id: 2,
		name: 'ナチュラルガーデン軽井沢',
		catch: '大きなお庭が特徴の式場です。ガーデンウェディングをお届けします', 
		introduction: "旧軽井沢庭園がリニューアルし、2020年春、結婚式場としてオープンしました。木々に囲まれた壮大なお庭でガーデンウェディングはいかがでしょうか。",
		client1_image:open("./app/assets/images/client2-1.jpg"),
		client2_image:open("./app/assets/images/client2-2.jpg"),
		client3_image:open("./app/assets/images/client2-3.jpg"),
		phone_number: '222-1234-5678',
		email: 'gardenkaruizawa@mail',
		homepage_url: 'http://gardenkaruizawa.com',
		acces: '軽井沢駅よりタクシーで20分',
		capacity: 'ご着席の場合：最大300席、立食の場合：400名様まで対応可能。20名以下も対応可能',
		regular_holiday: '毎週火曜日、年末年始（詳細は公式サイトをご参照ください）',
		business_hours: 'ウェディング相談窓口の営業時間：10時〜18時（水曜を除く土日祝日も営業中）',
		wedding_time_zone: '11時〜、14時〜',
		other: '雨天時はお庭の見える宴会場をご用意しております',
		office_name: '株式会社Weddings',
		staff_name: '庭　庭子',
		staff_name_kana: 'にわ　にわこ',
		staff_email: 'niwaniwako@mail',
		staff_phone_number: '090-0101-0101',
		is_active: true
		},

		{plan_id: 3,
			name: 'ハルノヒ',
			catch: '1日1組限定♪軽井沢で貸し切りハウスウェディングはいかがでしょうか', 
			introduction: "クラシックな雰囲気はそのままに、〜〜会館をリノベーションしました。アットホームな雰囲気が特徴です。１棟貸し切りでパーティを楽しめる場所をご提供しております",
			client1_image:open("./app/assets/images/client3-1.jpg"),
			client2_image:open("./app/assets/images/client3-2.jpg"),
			client3_image:open("./app/assets/images/client3-3.jpg"),
			phone_number: '333-1234-5678',
			email: 'gardenkaruizawa@mail',
			homepage_url: 'http://gardenkaruizawa.com',
			acces: '軽井沢駅よりタクシーで5分',
			capacity: 'ご着席の場合：最大70席、10名以下の小規模パーティも対応可能',
			regular_holiday: '毎週火曜日',
			business_hours: '10時〜18時',
			wedding_time_zone: '1日1組の貸し切りのため、ご希望のお時間で対応いたします',
			other: 'ペット同伴可能',
			office_name: '株式会社ハルノヒ',
			staff_name: '晴日　はるか',
			staff_name_kana: 'はるひ　はるか',
			staff_email: 'haruhiharuka@mail',
			staff_phone_number: '090-0101-0101',
			is_active: true
			},

			{plan_id: 4,
				name: '軽井沢　森の協会',
				catch: 'ウッドテイストの協会で自然に囲まれながら素敵な時間を', 
				introduction: "森の道を抜けるとそこには大きな協会が。森の奥の静かな空間が特徴です",
				client1_image:open("./app/assets/images/client4-1.jpg"),
				client2_image:open("./app/assets/images/client4-2.jpg"),
				client3_image:open("./app/assets/images/client4-3.jpg"),
				phone_number: '444-1234-5678',
				email: 'gardenkaruizawa@mail',
				homepage_url: 'http://gardenkaruizawa.com',
				acces: '軽井沢駅よりタクシーで30分。軽井沢駅より送迎に参ります',
				capacity: 'ご着席の場合：最大100席、10名以下の小規模パーティも対応可能',
				regular_holiday: '毎週火曜日',
				business_hours: '10時〜18時',
				wedding_time_zone: 'ご希望のお時間で対応いたします',
				other: 'ドレス持ち込み可能、直前割引あり',
				office_name: '株式会社森の教会',
				staff_name: '森山　もりお',
				staff_name_kana: 'もりやま　もりお',
				staff_email: 'moriyamamorio@mail',
				staff_phone_number: '090-0101-0101',
				is_active: true
				},

				{plan_id: 5,
					name: 'ウェディングハウス・ナチュレ',
					catch: '白を基調としたシンプルなハウスウェディング', 
					introduction: "木漏れ日が白い空間に広がり温かい気持ちで過ごせる場所となっています。三つ星シェフが腕を振るうこだわりの料理を自信を持ってご提供しております。ぜひ一度お試しください。",
					client1_image:open("./app/assets/images/client5-1.jpg"),
					client2_image:open("./app/assets/images/client5-2.jpg"),
					client3_image:open("./app/assets/images/client5-3.jpg"),
					phone_number: '555-1234-5678',
					email: 'gardenkaruizawa@mail',
					homepage_url: 'http://gardenkaruizawa.com',
					acces: '軽井沢駅より徒歩10分',
					capacity: 'ご着席の場合：最大100席、10名以下の小規模パーティも対応可能',
					regular_holiday: '毎週火曜日',
					business_hours: '10時〜18時',
					wedding_time_zone: 'ご希望のお時間で対応いたします',
					other: 'デザートビュッフェあり、産地にこだわった料理メニュー',
					office_name: '株式会社ナチュレ',
					staff_name: '自然　好き子',
					staff_name_kana: 'しぜん　すきこ',
					staff_email: 'shizensukiko@mail',
					staff_phone_number: '090-0101-0101',
					is_active: true
					},

				{plan_id: 6,
					name: 'ホテル軽井沢壮',
					catch: 'お庭×プールで演出にこだわった結婚式を', 
					introduction: "ホテル併設でご宿泊も楽しんでいただけます。中庭には大きなプールもございます。バルーンを使った演出が人気です。夜はライトアップした美しい空間となり、ナイトウェディングも人気です",
					client1_image:open("./app/assets/images/client6-1.jpg"),
					client2_image:open("./app/assets/images/client6-2.jpg"),
					client3_image:open("./app/assets/images/client6-3.jpg"),
					phone_number: '666-1234-5678',
					email: 'gardenkaruizawa@mail',
					homepage_url: 'http://gardenkaruizawa.com',
					acces: '軽井沢駅より徒歩20分。専用車で送迎あり',
					capacity: 'ご着席の場合：最大300席、10~50名以下の小規模宴会場もございます',
					regular_holiday: '毎週水曜日',
					business_hours: '9時〜19時',
					wedding_time_zone: '10:00~、14:00~、17:00~からお選びいただけます',
					other: 'ナイトウェディングはキャンドルライト演出がセットになっております。施設内全てバリアフリー',
					office_name: '株式会社ナチュレ',
					staff_name: '夜景　美子',
					staff_name_kana: 'やけい　みこ',
					staff_email: 'yakeimiko@mail',
					staff_phone_number: '090-0101-0101',
					is_active: true
					},
	
	]
  )

   # 式場商品
Item.create!(
	[
		{item_category_id: 1,
			client_id: 1,
			category: 0,
			name: '基本お料理コース', 
			description: "メイン２品がついた10品のコースです。飲料は〜〜〜〜〜",
			unit_price: 22000,
			item_image:open("./app/assets/images/food-m.jpg"),
			},
		{item_category_id: 1,
			client_id: 1,
			category: 1,
			name: '豪華お料理コース', 
			description: "メインが２品ついたフルコースに食後はスイーツビュッフェもご用意した豪華プラン。飲料も最大種類数となる〜〜〜からお選びいただけます。",
			unit_price: 40000,
			item_image:open("./app/assets/images/food-l.jpg"),
			},
		{item_category_id: 2,
			client_id: 1,
			category: 2,
			name: '基本装花セット', 
			description: "メインテーブル（ボリューム5割）、各テーブル、ブーケ×２、ブートニア、ご両親への贈呈用花束のセット",
			unit_price: 250000,
			item_image:open("./app/assets/images/flower-m.jpg"),
			},
		{item_category_id: 2,
			client_id: 1,
			category: 3,
			name: '豪華装花セット', 
			description: "メインテーブル（ボリューム8~9割）、各テーブル、ブーケ×２、ブートニア、ご両親への贈呈用花束のセット。お花のアレンジも相談可能です",
			unit_price: 400000,
			item_image:open("./app/assets/images/flower-l.jpg"),
			},
		{item_category_id: 3,
			client_id: 1,
			category: 4,
			name: '標準ケーキコース', 
			description: "3段のウェディングケーキ。お乗せするフルーツやクリームの色合いをチョコレートへ変更も可能。",
			unit_price: 30000,
			item_image:open("./app/assets/images/cake-m.jpg"),
			},
		{item_category_id: 3,
			client_id: 1,
			category: 5,
			name: '豪華ケーキコース', 
			description: "完全オーダーメイドのケーキプランです。こだわりたい方へおすすめです。",
			unit_price: 80000,
			item_image:open("./app/assets/images/cake-l.jpg"),
			},
		{item_category_id: 4,
			client_id: 1,
			category: 6,
			name: '標準ドレスコース', 
			description: "200種類のドレス・ドレスからそれぞれ1セットずつ、お色直しのドレスが１セット含まれています",
			unit_price: 200000,
			item_image:open("./app/assets/images/dress-m.jpg"),
			},
		{item_category_id: 4,
			client_id: 1,
			category: 7,
			name: '豪華ドレスコース', 
			description: "提携ドレスショップ、総計1,000種類以上からご自由に選び放題。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
			unit_price: 600000,
			item_image:open("./app/assets/images/dress-l.jpg"),
			},
		{item_category_id: 5,
			client_id: 1,
			category: 8,
			name: '標準メモリーコース', 
			description: "当日カメラマンが400カットほど撮影。撮影データを後日Web上でご送付",
			unit_price: 180000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
		{item_category_id: 5,
			client_id: 1,
			category: 9,
			name: '豪華メモリーコース', 
			description: "当日カメラマンが400カット写真撮影に加え、動画も当日撮影。製本アルバム２冊をセット。撮影データとアルバムは後日Web上でご送付",
			unit_price: 250000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
		{item_category_id: 6,
			client_id: 1,
			category: 10,
			name: 'ホテルかるいざわ別邸基本パッケージ', 
			description: "内訳は下記になります。・挙式料15万円、控室利用料3万円、ヘアメイク8万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
			unit_price: 250000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
# クライアントその２
			{item_category_id: 1,
				client_id: 2,
				category: 0,
				name: '標準お料理コース', 
				description: "一番人気の各商品をセットにしたパッケージとなっています",
				unit_price: 20000,
				item_image:open("./app/assets/images/food2-m.jpg"),
				},
			{item_category_id: 1,
				client_id: 2,
				category: 1,
				name: '豪華お料理コース', 
				description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
				unit_price: 50000,
				item_image:open("./app/assets/images/food2-l.jpg"),
				},
			{item_category_id: 2,
				client_id: 2,
				category: 2,
				name: '標準装花セット', 
				description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
				unit_price: 250000,
				item_image:open("./app/assets/images/flower2-m.jpg"),
				},
			{item_category_id: 2,
				client_id: 2,
				category: 3,
				name: '豪華装花セット', 
				description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
				unit_price: 400000,
				item_image:open("./app/assets/images/flower2-l.jpg"),
				},
			{item_category_id: 3,
				client_id: 2,
				category: 4,
				name: '標準ケーキコース', 
				description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
				unit_price: 22000,
				item_image:open("./app/assets/images/cake2-m.jpg"),
				},
			{item_category_id: 3,
				client_id: 2,
				category: 5,
				name: '豪華ケーキコース', 
				description: "３段のケーキプランです。こだわりたい方へおすすめです。",
				unit_price: 60000,
				item_image:open("./app/assets/images/cake2-l.jpg"),
				},
			{item_category_id: 4,
				client_id: 2,
				category: 6,
				name: '標準ドレスコース', 
				description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
				unit_price: 220000,
				item_image:open("./app/assets/images/dress2-m.jpg"),
				},
			{item_category_id: 4,
				client_id: 2,
				category: 7,
				name: '豪華ドレスコース', 
				description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
				unit_price: 700000,
				item_image:open("./app/assets/images/dress2-l.jpg"),
				},
			{item_category_id: 5,
				client_id: 2,
				category: 8,
				name: '標準メモリーコース', 
				description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
				unit_price: 200000,
				item_image:open("./app/assets/images/no_image.jpg"),
				},
			{item_category_id: 5,
				client_id: 2,
				category: 9,
				name: '豪華メモリーコース', 
				description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
				unit_price: 300000,
				item_image:open("./app/assets/images/no_image.jpg"),
				},
			{item_category_id: 6,
				client_id: 2,
				category: 10,
				name: '基本パッケージ', 
				description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
				unit_price: 150000,
				item_image:open("./app/assets/images/no_image.jpg"),
				},
	#クライアントその3
		{item_category_id: 1,
			client_id: 3,
			category: 0,
			name: '標準お料理コース', 
			description: "一番人気の各商品をセットにしたパッケージとなっています",
			unit_price: 20000,
			item_image:open("./app/assets/images/food2-m.jpg"),
			},
		{item_category_id: 1,
			client_id: 3,
			category: 1,
			name: '豪華お料理コース', 
			description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
			unit_price: 50000,
			item_image:open("./app/assets/images/food2-l.jpg"),
			},
		{item_category_id: 2,
			client_id: 3,
			category: 2,
			name: '定番セット', 
			description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
			unit_price: 250000,
			item_image:open("./app/assets/images/flower2-m.jpg"),
			},
		{item_category_id: 2,
			client_id: 3,
			category: 3,
			name: '豪華セット', 
			description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
			unit_price: 400000,
			item_image:open("./app/assets/images/flower2-l.jpg"),
			},
		{item_category_id: 3,
			client_id: 3,
			category: 4,
			name: 'ケーキ人気コース', 
			description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
			unit_price: 22000,
			item_image:open("./app/assets/images/cake2-m.jpg"),
			},
		{item_category_id: 3,
			client_id: 3,
			category: 5,
			name: '豪華コース', 
			description: "３段のケーキプランです。こだわりたい方へおすすめです。",
			unit_price: 60000,
			item_image:open("./app/assets/images/cake2-l.jpg"),
			},
		{item_category_id: 4,
			client_id: 3,
			category: 6,
			name: '定番コース', 
			description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
			unit_price: 220000,
			item_image:open("./app/assets/images/dress2-m.jpg"),
			},
		{item_category_id: 4,
			client_id: 3,
			category: 7,
			name: '豪華コース', 
			description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
			unit_price: 700000,
			item_image:open("./app/assets/images/dress2-l.jpg"),
			},
		{item_category_id: 5,
			client_id: 3,
			category: 8,
			name: '定番コース', 
			description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
			unit_price: 200000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
		{item_category_id: 5,
			client_id: 3,
			category: 9,
			name: '豪華コース', 
			description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
			unit_price: 300000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
		{item_category_id: 6,
			client_id: 3,
			category: 10,
			name: '基本パッケージ', 
			description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
			unit_price: 150000,
			item_image:open("./app/assets/images/no_image.jpg"),
			},
# クライアントその4
	{item_category_id: 1,
		client_id: 4,
		category: 0,
		name: '定番お料理コース', 
		description: "一番人気の各商品をセットにしたパッケージとなっています",
		unit_price: 20000,
		item_image:open("./app/assets/images/food2-m.jpg"),
		},
	{item_category_id: 1,
		client_id: 4,
		category: 1,
		name: '豪華お料理コース', 
		description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
		unit_price: 50000,
		item_image:open("./app/assets/images/food2-l.jpg"),
		},
	{item_category_id: 2,
		client_id: 4,
		category: 2,
		name: '定番セット', 
		description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
		unit_price: 250000,
		item_image:open("./app/assets/images/flower2-m.jpg"),
		},
	{item_category_id: 2,
		client_id: 4,
		category: 3,
		name: '豪華セット', 
		description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
		unit_price: 400000,
		item_image:open("./app/assets/images/flower2-l.jpg"),
		},
	{item_category_id: 3,
		client_id: 4,
		category: 4,
		name: 'ケーキ人気コース', 
		description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
		unit_price: 22000,
		item_image:open("./app/assets/images/cake2-m.jpg"),
		},
	{item_category_id: 3,
		client_id: 4,
		category: 5,
		name: '豪華コース', 
		description: "３段のケーキプランです。こだわりたい方へおすすめです。",
		unit_price: 60000,
		item_image:open("./app/assets/images/cake2-l.jpg"),
		},
	{item_category_id: 4,
		client_id: 4,
		category: 6,
		name: '定番コース', 
		description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
		unit_price: 220000,
		item_image:open("./app/assets/images/dress2-m.jpg"),
		},
	{item_category_id: 4,
		client_id: 4,
		category: 7,
		name: '豪華コース', 
		description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
		unit_price: 700000,
		item_image:open("./app/assets/images/dress2-l.jpg"),
		},
	{item_category_id: 5,
		client_id: 4,
		category: 8,
		name: '定番コース', 
		description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
		unit_price: 200000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 5,
		client_id: 4,
		category: 9,
		name: '豪華コース', 
		description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
		unit_price: 300000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 6,
		client_id: 4,
		category: 10,
		name: '基本パッケージ', 
		description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
		unit_price: 150000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
		# クライアントその4
	{item_category_id: 1,
		client_id: 4,
		category: 0,
		name: '定番お料理コース', 
		description: "一番人気の各商品をセットにしたパッケージとなっています",
		unit_price: 20000,
		item_image:open("./app/assets/images/food2-m.jpg"),
		},
	{item_category_id: 1,
		client_id: 4,
		category: 1,
		name: '豪華お料理コース', 
		description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
		unit_price: 50000,
		item_image:open("./app/assets/images/food2-l.jpg"),
		},
	{item_category_id: 2,
		client_id: 4,
		category: 2,
		name: '【プランM】定番セット', 
		description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
		unit_price: 250000,
		item_image:open("./app/assets/images/flower2-m.jpg"),
		},
	{item_category_id: 2,
		client_id: 4,
		category: 3,
		name: '【プランL】豪華セット', 
		description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
		unit_price: 400000,
		item_image:open("./app/assets/images/flower2-l.jpg"),
		},
	{item_category_id: 3,
		client_id: 4,
		category: 4,
		name: '【プランM】ケーキ人気コース', 
		description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
		unit_price: 22000,
		item_image:open("./app/assets/images/cake2-m.jpg"),
		},
	{item_category_id: 3,
		client_id: 4,
		category: 5,
		name: '【プランL】豪華コース', 
		description: "３段のケーキプランです。こだわりたい方へおすすめです。",
		unit_price: 60000,
		item_image:open("./app/assets/images/cake2-l.jpg"),
		},
	{item_category_id: 4,
		client_id: 4,
		category: 6,
		name: '【プランM】定番コース', 
		description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
		unit_price: 220000,
		item_image:open("./app/assets/images/dress2-m.jpg"),
		},
	{item_category_id: 4,
		client_id: 4,
		category: 7,
		name: '【プランL】豪華コース', 
		description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
		unit_price: 700000,
		item_image:open("./app/assets/images/dress2-l.jpg"),
		},
	{item_category_id: 5,
		client_id: 4,
		category: 8,
		name: '【プランM】定番コース', 
		description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
		unit_price: 200000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 5,
		client_id: 4,
		category: 9,
		name: '【プランL】豪華コース', 
		description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
		unit_price: 300000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 6,
		client_id: 4,
		category: 10,
		name: '基本パッケージ', 
		description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
		unit_price: 150000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
#クライアントアイテムその５
	{item_category_id: 1,
		client_id: 5,
		category: 0,
		name: '【プランM】定番お料理コース', 
		description: "一番人気の各商品をセットにしたパッケージとなっています",
		unit_price: 20000,
		item_image:open("./app/assets/images/food2-m.jpg"),
		},
	{item_category_id: 1,
		client_id: 5,
		category: 1,
		name: '【プランL】豪華お料理コース', 
		description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
		unit_price: 50000,
		item_image:open("./app/assets/images/food2-l.jpg"),
		},
	{item_category_id: 2,
		client_id: 5,
		category: 2,
		name: '【プランM】定番セット', 
		description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
		unit_price: 250000,
		item_image:open("./app/assets/images/flower2-m.jpg"),
		},
	{item_category_id: 2,
		client_id: 5,
		category: 3, 
		name: '【プランL】豪華セット', 
		description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
		unit_price: 400000,
		item_image:open("./app/assets/images/flower2-l.jpg"),
		},
	{item_category_id: 3,
		client_id: 5,
		category: 4,
		name: '【プランM】ケーキ人気コース', 
		description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
		unit_price: 22000,
		item_image:open("./app/assets/images/cake2-m.jpg"),
		},
	{item_category_id: 3,
		client_id: 5,
		category: 5,
		name: '【プランL】豪華コース', 
		description: "３段のケーキプランです。こだわりたい方へおすすめです。",
		unit_price: 60000,
		item_image:open("./app/assets/images/cake2-l.jpg"),
		},
	{item_category_id: 4,
		client_id: 5,
		category: 6,
		name: '【プランM】定番コース', 
		description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
		unit_price: 220000,
		item_image:open("./app/assets/images/dress2-m.jpg"),
		},
	{item_category_id: 4,
		client_id: 5,
		category: 7,
		name: '【プランL】豪華コース', 
		description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
		unit_price: 700000,
		item_image:open("./app/assets/images/dress2-l.jpg"),
		},
	{item_category_id: 5,
		client_id: 5,
		category: 8,
		name: '【プランM】定番コース', 
		description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
		unit_price: 200000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 5,
		client_id: 5,
		category: 9,
		name: '【プランL】豪華コース', 
		description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
		unit_price: 300000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 6,
		client_id: 5,
		category: 10,
		name: '基本パッケージ', 
		description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
		unit_price: 150000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
#クライアントその６
	{item_category_id: 1,
		client_id: 6,
		category: 0,
		name: '【プランM】定番お料理コース', 
		description: "一番人気の各商品をセットにしたパッケージとなっています",
		unit_price: 20000,
		item_image:open("./app/assets/images/food2-m.jpg"),
		},
	{item_category_id: 1,
		client_id: 6,
		category: 1,
		name: '【プランL】豪華お料理コース', 
		description: "シェフこだわりの軽井沢の食材をふんだんに使ったコースです。",
		unit_price: 50000,
		item_image:open("./app/assets/images/food2-l.jpg"),
		},
	{item_category_id: 2,
		client_id: 6,
		category: 2,
		name: '【プランM】定番セット', 
		description: "メインテーブルの5割を占めるボリュームでご用意。一番受注数の多いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットに含まれておりません",
		unit_price: 250000,
		item_image:open("./app/assets/images/flower2-m.jpg"),
		},
	{item_category_id: 2,
		client_id: 6,
		category: 3,
		name: '【プランL】豪華セット', 
		description: "選び放題のお花の種類にボリュームもMAX。お花にこだわりたい方へおすすめの欲張りセットです。メインテーブルの8~9割を占めるボリュームでご用意。いコースとなっております。ご両親への贈呈用花束もついております。お色直し用のブーケはセットもついております。お花も自由に選ぶことができます（季節によってはご用意できないお花の種類もございます。お打ち合わせ時に確認ください。",
		unit_price: 400000,
		item_image:open("./app/assets/images/flower2-l.jpg"),
		},
	{item_category_id: 3,
		client_id: 6,
		category: 4,
		name: '【プランM】ケーキ人気コース', 
		description: "1段のウェディングケーキをご用意します。クリームの色合いをチョコレートへ変更も可能です。ご相談ください。一番人気のケーキプランです",
		unit_price: 22000,
		item_image:open("./app/assets/images/cake2-m.jpg"),
		},
	{item_category_id: 3,
		client_id: 6,
		category: 5,
		name: '【プランL】豪華コース', 
		description: "３段のケーキプランです。こだわりたい方へおすすめです。",
		unit_price: 60000,
		item_image:open("./app/assets/images/cake2-l.jpg"),
		},
	{item_category_id: 4,
		client_id: 6,
		category: 6,
		name: '【プランM】定番コース', 
		description: "200種類のドレス・ドレスからそれぞれ1セットずつお選びいただけます。新婦様のみ、お色直しのドレスが１セット追加できます。一番人気のプランです",
		unit_price: 220000,
		item_image:open("./app/assets/images/dress2-m.jpg"),
		},
	{item_category_id: 4,
		client_id: 6,
		category: 7,
		name: '【プランL】豪華コース', 
		description: "ブランドにこだわりたい方へ。インポートブランドも数多く揃えています。総計１０００種類以上からご自由に選び放題のプランです。複数回お色直しを予定されている方や、ドレスにこだわりたい方へおすすめです",
		unit_price: 700000,
		item_image:open("./app/assets/images/dress2-l.jpg"),
		},
	{item_category_id: 5,
		client_id: 6,
		category: 8,
		name: '【プランM】定番コース', 
		description: "当日カメラマンが300カットほど撮影。撮影データを後日Web上でご送付いたします",
		unit_price: 200000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 5,
		client_id: 6,
		category: 9,
		name: '【プランL】豪華コース', 
		description: "当日カメラマンが350カットほど撮影。動画も当日撮影いたします。撮影データを後日Web上でご送付いたします",
		unit_price: 300000,
		item_image:open("./app/assets/images/no_image.jpg"),
		},
	{item_category_id: 6,
		client_id: 6,
		category: 10,
		name: '基本パッケージ', 
		description: "内訳は下記になります。・挙式料10万円、司会：5万円、控室利用料1万円、ヘアメイク10万円、〜〜〜〜〜10万円、〜〜〜〜〜5万円。基本パッケージにウェルカムスペースの小物やドレスの下着は含まれておりません。ご自身でご用意いただき、当日持ち込みをお願いします。",
		unit_price: 150000,
		item_image:open("./app/assets/images/no_image.jpg"),
		}
	]
)

