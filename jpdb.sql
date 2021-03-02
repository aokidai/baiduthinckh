Create database Japanese
Go
Use Japanese
Go
--drop database Japanese
Create table bai
(
	Bai int identity(1,1) primary key,
	TenBai nvarchar(max) not null,
)
Create table Word
(
	HiraganaID int identity(1,1) primary key,
	HiraWord nvarchar(max) not null,
	KanjiWord nvarchar(max),
	MeanWord nvarchar(max) not null,
	Bai int references bai(Bai),
)
Create table Acc
(
	AccID int identity(1,1) primary key,
	Username varchar(50) not null,
	Password varchar(max) not null,
	AccUser int not null, 
)
Create table NguPhap
(
	NguPhapID int identity(1,1) primary key,
	Bai int references bai(Bai),
	NoiDung nvarchar(max) not null,
	CongThuc nvarchar(max) not null,
)
Create table Kanji
(
	KanjiID int identity(1,1) primary key,
	KanjiWord nvarchar(max) not null,
	HiraWord nvarchar(max) not null,
	MeanWord nvarchar(max),
	HanTu nvarchar(max),
	Bai int references bai(Bai),
)


insert into bai values('Bài 1')
insert into bai values('Bài 2')
insert into bai values('Bài 3')
insert into bai values('Bài 4')
insert into bai values('Bài 5')

insert into Word values(N'わたし',N'',N'Tôi',1)
insert into Word values(N'わたしたち',N'',N'Chúng tôi',1)
insert into Word values(N'あなた',N'',N'Bạn (you)',1)
insert into Word values(N'あのひと',N'',N'Người kia',1)
insert into Word values(N'あのかた',N'',N'Vị kia',1)
insert into Word values(N'みなさん',N'',N'Mọi người, các bạn',1)
insert into Word values(N'～さん',N'',N'Dùng khi gọi tên người khác',1)
insert into Word values(N'～ちゃん',N'',N'Thường dùng để gọi tên bé gái nhỏ tuồi tuổi hơn',1)
insert into Word values(N'～くん',N'',N'Thường dùng để gọi tên bé trái nhỏ tuồi tuổi hơn',1)
insert into Word values(N'"～じん',N'',N'ví dụ: アメリカじん" "Người nước～Người Mĩ"',1)
insert into Word values(N'せんせい',N'',N'Giáo viên, bác sỹ (dùng khi xưng hô)',1)
insert into Word values(N'きょうし',N'',N'Giáo viên ( dùng chỉ nghề nghiệp,)',1)
insert into Word values(N'がくせい',N'',N'Sinh viên',1)
insert into Word values(N'かいしゃいん	',N'',N'Nhân viên công ty',1)
insert into Word values(N'しゃいん',N'',N'Nhân viên công ty (chỉ dùng khi nói kèm tên công ty phía trước)',1)
insert into Word values(N'ぎんこういん	',N'',N'Nhân viên ngân hàng',1)
insert into Word values(N'いしゃ',N'',N'Bác sỹ',1)
insert into Word values(N'けんきゅうしゃ',N'',N'Nhà nghiên cứu',1)
insert into Word values(N'エンジニア',N'',N'Kỹ sư',1)
insert into Word values(N'だいがく',N'',N'Trường đại học',1)
insert into Word values(N'びょういん',N'',N'Bệnh viện',1)
insert into Word values(N'でんき',N'',N'Điện',1)
insert into Word values(N'だれ',N'',N'Ai',1)
insert into Word values(N'どなた',N'',N'Vị nào (cách nói lịch sự của だれ)',1)
insert into Word values(N'～さい',N'',N'～Tuổi',1)
insert into Word values(N'なんさい',N'',N'Mấy tuổi, bao nhiêu tuổi?',1)
insert into Word values(N'おいくつ',N'',N'Bao nhiêu tuổi (hỏi lịch sử)',1)
insert into Word values(N'はい',N'',N'Vâng; dạ',1)
insert into Word values(N'いいえ',N'',N'Không',1)
insert into Word values(N'しつれいですが。',N'',N'Xin lỗi,...(Trước khi hỏi điều gì)',1)
insert into Word values(N'おなまえは? / おなまえは　なんですか',N'',N'Tên bạn là gì?',1)
insert into Word values(N'はじめまして',N'',N'Hân hạnh gặp mặt',1)
insert into Word values(N'どうぞ よろしく 「おねがいします」',N'',N'	Mong Anh (chị) giúp đỡ cho',1)
insert into Word values(N'こちらは～さんです。',N'',N'Đây là Ông (Bà,)...',1)
insert into Word values(N'～からきました。',N'',N'Đến từ....',1)
insert into Word values(N'アメリカ',N'',N'Mỹ',1)
insert into Word values(N'イギリス',N'',N'Anh',1)
insert into Word values(N'インド',N'',N'Ấn Độ',1)
insert into Word values(N'インドネシア	',N'',N'Indonexia',1)
insert into Word values(N'かんこく',N'',N'Hàn Quốc',1)
insert into Word values(N'タイ',N'',N'Thái Lan',1)
insert into Word values(N'ちゅうごく',N'',N'Trung Quốc',1)
insert into Word values(N'ドイツ',N'',N'Đức',1)
insert into Word values(N'にほん',N'',N'Nhật Bản',1)
insert into Word values(N'フランス',N'',N'Pháp',1)
insert into Word values(N'ブラジル',N'',N'Braxin',1)
insert into Word values(N'さくらだいがく',N'',N'Trường đại học Sakura',1)
insert into Word values(N'ふじだいがく	',N'',N'Trường đại học Fuji',1)
insert into Word values(N'ICM',N'',N'Công ty ICM',1)
insert into Word values(N'パワーでんき	',N'',N'Công ty điện Power',1)
insert into Word values(N'ブラジルエア',N'',N'	Hãng hàng không Brazin',1)
insert into Word values(N'AKC',N'',N'Viện nghiên cứu AKC',1)
insert into Word values(N'こうべびょういん',N'',N'Bệnh viện KOBE',1)

insert into Word values(N'これ',N'',N'Cái này',2)
insert into Word values(N'それ',N'',N'Cái đó',2)
insert into Word values(N'あれ',N'',N'Cái kia',2)
insert into Word values(N'この～',N'',N'～này',2)
insert into Word values(N'その～',N'',N'～đó',2)
insert into Word values(N'あの～',N'',N'～kia',2)
insert into Word values(N'ほん',N'',N'Sách',2)
insert into Word values(N'じしょ',N'',N'Từ điển',2)
insert into Word values(N'ざっし',N'',N'Tạp chí',2)
insert into Word values(N'しんぶん',N'',N'Báo',2)
insert into Word values(N'ノート',N'',N'Vở',2)
insert into Word values(N'てちょう',N'',N'Sổ tay',2)
insert into Word values(N'めいし',N'',N'Danh thiếp',2)
insert into Word values(N'カード',N'',N'Thẻ',2)
insert into Word values(N'テレホンカード',N'',N'Thẻ điện thoại',2)
insert into Word values(N'えんぴつ',N'',N'Bút chì',2)
insert into Word values(N'ボールペン',N'',N'Bút bi',2)
insert into Word values(N'シャープペンシル	',N'',N'Bút chì bấm, Bút chì kim',2)
insert into Word values(N'かぎ',N'',N'Chìa khóa',2)
insert into Word values(N'とけい',N'',N'Đồng hồ',2)
insert into Word values(N'かさ',N'',N'Cái ô/dù',2)
insert into Word values(N'かばん',N'',N'Cái cặp, túi',2)
insert into Word values(N'｢カセット」テープ',N'',N'Băng',2)
insert into Word values(N'テープレコーダ',N'',N'Máy ghi âm',2)
insert into Word values(N'テレビ',N'',N'Ti vi',2)
insert into Word values(N'ラジオ',N'',N'Radio, Đài',2) 
insert into Word values(N'カメラ',N'',N'Máy ảnh',2)
insert into Word values(N'コンピューター',N'',N'Máy tính',2)
insert into Word values(N'おみやげ',N'',N'Quà lưu niệm',2)
insert into Word values(N'じどうしゃ・くるま',N'',N'Ô tô　, xe hơi)',2)
insert into Word values(N'つくえ',N'',N'Cái bàn',2)
insert into Word values(N'いす',N'',N'Cái ghế',2)
insert into Word values(N'チョコレート',N'',N'Socola',2)
insert into Word values(N'コーヒー',N'',N'Cà Phê',2)
insert into Word values(N'えいご',N'',N'Tiếng Anh',2)
insert into Word values(N'にほんご',N'',N'Tiếng Nhật',2)
insert into Word values(N'～ご',N'',N'Tiếng～',2)
insert into Word values(N'なん',N'',N'Cái gì?',2)
insert into Word values(N'そう',N'',N'Đúng vậy',2)
insert into Word values(N'ちがいます',N'',N'Nhầm rồi, sai rồi',2)
insert into Word values(N'そうですか。	',N'',N'Vậy à',2)
insert into Word values(N'ほんのきもちです	',N'',N'Đây là chút lòng thành của tôi',2)
insert into Word values(N'どうぞ。',N'',N'Xin mời',2)
insert into Word values(N'"どうもありがとうございます どうもありがとう ありがとうございます ありがとう どうも"',N'',N'Cảm ơn',2)
insert into Word values(N'これからおせわになります',N'',N'Từ nay mong được anh(chị) giúp đở',2)
insert into Word values(N'こちらこそよろしく。',N'',N'Chính tôi mới mong được anh (chị) giúp đở',2)

insert into Word values(N'ここ	',N'',N'Chổ này, ở đây',3)
insert into Word values(N'そこ	',N'',N'Chổ đó, ở đó',3)
insert into Word values(N'あそこ	',N'',N'Chổ kia, ở kia',3)
insert into Word values(N'どこ	',N'',N'Chổ nào',3)
insert into Word values(N'こちら	',N'',N'Chổ này, hướng này',3)
insert into Word values(N'そちら	',N'',N'Chổ đó, hướng đó',3)
insert into Word values(N'あちら	',N'',N'Chổ kia, hướng kia',3)
insert into Word values(N'どちら	',N'',N'Chổ nào',3)
insert into Word values(N'きょうしつ	',N'',N'Phòng học',3)
insert into Word values(N'しょくどう	',N'',N'Phòng ăn',3)
insert into Word values(N'じむしょ	',N'',N'Văn phòng, công sở',3)
insert into Word values(N'かいぎしつ	',N'',N'Phòng họp',3)
insert into Word values(N'うけつけ	',N'',N'Phòng tiếp tân, thường trực',3)
insert into Word values(N'ロビー	',N'',N'phòng chờ, đại sảnh',3)
insert into Word values(N'へや	',N'',N'Phòng',3)

insert into Word values(N'おきます（II）		',N'起きます		',N'Thức dậy',4)
insert into Word values(N'ねます（II）		',N'寝ます		',N'Ngủ',4)
insert into Word values(N'はたらきます（I）		',N'働きます		',N'Làm việc',4)
insert into Word values(N'やすみます（I）		',N'休みます		',N'Nghỉ',4)
insert into Word values(N'べんきょうします　（III）		',N'勉強します		',N'Học',4)
insert into Word values(N'おわります（I）	',N'	終わります		',N'Kết thúc',4)
insert into Word values(N'デパート				',N'',N'Bách hóa tổng hợp',4)
insert into Word values(N'ぎんこう		',N'銀行		',N'Ngân hàng',4)
insert into Word values(N'ゆうびんきょく		',N'郵便局		',N'Bưu điện',4)
insert into Word values(N'としょかん		',N'図書館		',N'Thư viện',4)
insert into Word values(N'びじゅつかん		',N'美術館		',N'Viện bảo tàng mỹ thuật',4)
insert into Word values(N'かいぎ		',N'会議		',N'họp, cuộc họp',4)
insert into Word values(N'しけん		',N'試験		',N'thi, kiểm tra',4)
insert into Word values(N'～じ		',N'～時	',N'～giờ',4)
insert into Word values(N'いま		',N'今	',N'Bây giờ',4)
insert into Word values(N'～じ		',N'～時	',N'～giờ',4)

insert into Word values(N'いきます　（I）	',N'行きます	',N'Đi',5)
insert into Word values(N'きます（III）	',N'来ます	',N'Đến',5)
insert into Word values(N'かえります　（I）	',N'帰ります	',N'Trở về',5)
insert into Word values(N'がっこう	',N'学校	',N'Trường học',5)
insert into Word values(N'スーパー		',N'',N'Siêu thị',5)
insert into Word values(N'えき	',N'駅	',N'Nhà ga',5)
insert into Word values(N'ひこうき	',N'飛行機	',N'Máy bay',5)
insert into Word values(N'ふね	',N'船	',N'Tàu, thuyền',5)
insert into Word values(N'でんしゃ	',N'電車',N'	Xe điện',5)
insert into Word values(N'ちかてつ	',N'地下鉄	',N'Tàu điện ngầm',5)
insert into Word values(N'しんかんせん	',N'新幹線	',N'Tàu siêu tốc',5)
insert into Word values(N'バス		',N'',N'Xe buýt',5)
insert into Word values(N'タクシー		',N'',N'Taxi',5)
insert into Word values(N'じてんしゃ	',N'自転車	',N'Xe đạp',5)
insert into Word values(N'あるいて	',N'歩いて	',N'Đi bộ',5)


insert into NguPhap values(1, N'Thì/ là　（Trợ từ は）',N'Sは　Nです。')
insert into NguPhap values(1, N'Cũng, cũng là（ Trợ từ も）',N'Sも　Nです。')
insert into NguPhap values(1, N'Phủ định ',N'N＋では　ありません／じゃありません')
insert into NguPhap values(1, N'ですか:Phải không',N'Sは　Nですか。→はい、N です　／いいえ、Nでは　ありません／じゃありません')
insert into NguPhap values(1, N'Người kia ai vậy? Vị kia là vị nào vậy?	',N'あのひとは　だれですか。あのかたは　どなたですか。')
insert into NguPhap values(1, N'Mấy tuổi／Bao nhiêu tuổi	',N'あなたは　ないさいですか。／おいくつですか')
insert into NguPhap values(1, N'Bạn tên gì	',N'失礼(しつれい)ですか、お名前(なまえ)は何(なん)ですか。')
insert into NguPhap values(1, N'Đây là ông/ bà ...	',N'こちらは　～さんです')

insert into NguPhap values(2, N'Cái này/ cái đó/cái kia là N	 ',N'これ／それ／あれは Nです')
insert into NguPhap values(2, N'この・その・あの này/ đó/ kia	 ',N'この／その／あの＋Nは　だれのですか。')
insert into NguPhap values(2, N'なん：Cái gì 	 ',N'何(なん)ですか。/ これは　何ですか')
insert into NguPhap values(2, N'の：về nội dung gì / N về gì vậy?	 ',N'何のNですか。')
insert into NguPhap values(2, N'の：của ai / N của ai vậy	 ',N'だれのNですか。')
insert into NguPhap values(2, N'Từ nay mong đc giúp đỡ / Chính tôi mới là người mong dc giúp	 ',N'これからお世話(せわ)になります。/ こちらこそよろしく。')

insert into NguPhap values(3, N'Chỗ này/ chỗ đó/ chỗ kia là N',N' どこ	ここ／そこ／あそこ は Nn/cです。Ở đâu')
insert into NguPhap values(3, N'Hướng này/ hướng đó/ hướng kia/ hướng nào	',N'こちら／そちら／あちら／どちら')
insert into NguPhap values(3, N'どちら：tên Đất nước/ cty/ trường 	',N'お国(くに)／会社(かいしゃ)／大学(だいがく)は どちらですか。')
insert into NguPhap values(3, N'どこ：Xuất xứ ở đâu, nước nào	',N'これは　どこ　のNですか。')
insert into NguPhap values(3, N'Bao nhiêu tiền	',N'いくらですか。')

insert into NguPhap values(4, N'Giờ/ Phút	',N'時(じ)／分(ぶん)')
insert into NguPhap values(4, N'Bây giờ mấy giờ	',N'いま 何時(なんじ)ですか。')
insert into NguPhap values(4, N'から～までですか。Từ ~ đến (hỏi giờ làm việc của cơ quan, tổ chức)	',N'SはNから Nまでですか。N: thời gian, nơi chốnから～までVますか')
insert into NguPhap values(4, N'Từ ~ đến (Hỏi hành động cá nhân)	',N'NからNまでVますか。')
insert into NguPhap values(4, N'に：Lúc, vào lúc (thời gian xác định)	',N'Trợ từ に VD:6時に　おきます。')
insert into NguPhap values(4, N'Các thì của động từ 	',N'ます／ません／ました／ませんでした')
insert into NguPhap values(4, N'Số điện thoại là số mấy	',N'電話番号(でんわばんごう)は何番(なんばん)ですか。')

insert into NguPhap values(5, N'Động từ di chuyển	',N'Nへ (いきます／きます／かえります)')
insert into NguPhap values(5, N'Không đi đâu cả	',N'どこへいきますか。（→　どこも　いきません）')
insert into NguPhap values(5, N'Trợ từ で　(bằng phương tiện giao thông)',N'	N (ptgt)で　Nへ　Vd/c')
insert into NguPhap values(5, N'Trợ từ と　( với ai)',N'	N(người)と　Nへ　Vd/c')
insert into NguPhap values(5, N'いつ：Nghi vấn từ thời gian: Khi nào	',N'いつ (Đếm tháng / ngày)')
insert into NguPhap values(5, N'Hỏi ngày sinh nhật	',N'誕生日(たんじょうび)はいつですか VD:誕生日(たんじょうび)は何月何日(なんがつなんにち)ですか。')

insert into Kanji values(N'日',N'ひ','','',1)
insert into Kanji values(N'月',N'つき','','',1)
insert into Kanji values(N'火',N'ひ','','',1)
insert into Kanji values(N'水',N'みず','','',1)
insert into Kanji values(N'木',N'き','','',1)

insert into Kanji values(N'金　',N'（お）かね','','',2)
insert into Kanji values(N'土',N'つち','','',2)
insert into Kanji values(N'山',N'やま','','',2)
insert into Kanji values(N'川',N'かわ','','',2)
insert into Kanji values(N'田',N'た','','',2)

insert into Kanji values(N'一',N'いち','','',3)
insert into Kanji values(N'二',N'に','','',3)
insert into Kanji values(N'三',N'さん','','',3)
insert into Kanji values(N'四',N'よん','','',3)
insert into Kanji values(N'五',N'ご','','',3)
insert into Kanji values(N'六',N'ろく','','',3)
insert into Kanji values(N'七',N'なな','','',3)

insert into Kanji values(N'学生',N'がくせい','','',4)
insert into Kanji values(N'先月',N'せんげつ','','',4)
insert into Kanji values(N'会社員',N'かいしゃいん','','',4)

insert into Kanji values(N'行く',N'いく','','',5)
insert into Kanji values(N'来る',N'くる','','',5)
insert into Kanji values(N'毎日',N'まいにち','','',5)
