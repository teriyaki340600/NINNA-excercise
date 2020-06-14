# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CameraMaker.create!([
              {:name => "NIKON"},
              {:name => "CANON"},
              {:name => "SONY"},
              {:name => "LEICA"},
              {:name => "PENTAX"},
              {:name => "LUMIX"},
              {:name => "FUJIFILM"}
              ])
=begin
MagnifierMaker.create!([
              {:name => "NIKON"},
              {:name => "CANON"},
              {:name => "SONY"},
              {:name => "LEICA"},
              {:name => "SIGMA"},
              {:name => "TAMRON"},
              {:name => "ZEISS"},
              {:name => "PENTAX"},
              {:name => "PANASONIC"},
              {:name => "FUJIFILM"},
              {:name => "TOKINA"}
              ])
Magnifier.create!(name: "AF-S NIKKOR 24-70mm f/2.8E ED VR",
              magnifier_maker_id: 1,
              introduction: "手軽に持ち運べる",
              image_id:
              File.open("./app/assets/images/NIK2470mm2.8VR.jpg"))
=end
sleep 5
Camera.create!(name: "Z7",
               camera_maker_id: 1,
              introduction: "最高画質のミラーレス",
              image_id:
              File.open("./app/assets/images/Z7.jpg"))
Camera.create!(name: "D500",
               camera_maker_id: 1,
              introduction: "D5同等の最高性能と進化した機動力を融合したDX最強モデル。ニコンDXフォーマットデジタル一眼レフカメラD500。",
              image_id:
              File.open("./app/assets/images/D500.jpg"))
Camera.create!(name: "D780",
               camera_maker_id: 1,
              introduction: "クリエイティブを刺激する高度な仕様と最新の高機能を搭載。多彩な高性能ニコンFXフォーマットデジタル一眼レフカメラD780。",
              image_id:
              File.open("./app/assets/images/D780.jpg"))
Camera.create!(name: "D850",
               camera_maker_id: 1,
              introduction: "有効画素数4575万画素と最高約9コマ/秒の高速連写性能、多彩な機能で表現領域を大きく拡げる。ニコンFXフォーマットデジタル一眼レフカメラD850。",
              image_id:
              File.open("./app/assets/images/D850.jpg"))
Camera.create!(name: "D5",
               camera_maker_id: 1,
              introduction: "あらゆる状況下で、瞬間を逃さず高品位な映像表現を可能にする。ニコンFXフォーマットデジタル一眼レフカメラD5。",
              image_id:
              File.open("./app/assets/images/D5.jpg"))
Camera.create!(name: "D7500",
               camera_maker_id: 1,
              introduction: "D500の高画質と高速性能を軽量・薄型ボディーに凝縮。ニコンDXフォーマットデジタル一眼レフカメラD7500。",
              image_id:
              File.open("./app/assets/images/D7500.jpg"))
Camera.create!(name: "Z50",
               camera_maker_id: 1,
              introduction: "高い描写力と多彩な表現力を小型・軽量ボディーに凝縮した、ニコンDXフォーマットミラーレスカメラ Z 50",
              image_id:
              File.open("./app/assets/images/Z50.jpg"))
Camera.create!(name: "EOS 5D",
               camera_maker_id: 2,
              introduction: "あなたの写真に新しい力を。",
              image_id:
              File.open("./app/assets/images/EOS 5D.jpg"))
Camera.create!(name: "EOS RP",
               camera_maker_id: 2,
              introduction: "写真は進化する。",
              image_id:
              File.open("./app/assets/images/EOS RP.jpg"))
Camera.create!(name: "EOS-1D X Mark Ⅲ",
               camera_maker_id: 2,
              introduction: "誰も見たことのない世界へ。",
              image_id:
              File.open("./app/assets/images/EOS-1D X Mark Ⅲ.jpg"))
Camera.create!(name: "EOS R",
               camera_maker_id: 2,
              introduction: "いい写真の予感。",
              image_id:
              File.open("./app/assets/images/EOS R.jpg"))
Camera.create!(name: "A9",
               camera_maker_id: 3,
              introduction: "「光を捉え続ける」革新的なシステムにより新次元の高速性能を実現。新たな撮影表現の可能性を広げるフルサイズミラーレス一眼カメラ",
              image_id:
              File.open("./app/assets/images/A9.jpg"))
Camera.create!(name: "α7R Ⅳ",
               camera_maker_id: 3,
              introduction: "世界初有効約6100万画素、最高約10コマ/秒高速連写、高速・高精度AFを小型ボディに凝縮したフルサイズ一眼。第4世代の革新が、ここから始まる",
              image_id:
              File.open("./app/assets/images/A7R Ⅳ.jpg"))
Camera.create!(name: "α7 Ⅲ",
               camera_maker_id: 3,
              introduction: "35mmフルサイズ裏面照射型CMOSセンサー搭載、最高約10コマ/秒高速連写、高速・高精度なAFを実現しフルサイズミラーレスの新基準へ",
              image_id:
              File.open("./app/assets/images/A7 Ⅲ.jpg"))
Camera.create!(name: "α7S Ⅱ",
               camera_maker_id: 3,
              introduction: "フルサイズ対応5軸ボディ内手ブレ補正を搭載し、高画質4K動画記録が可能なフルサイズ一眼",
              image_id:
              File.open("./app/assets/images/A7S Ⅱ.jpg"))
Camera.create!(name: "α6600",
               camera_maker_id: 3,
              introduction: "光学式ボディ内手ブレ補正と業界最大バッテリーライフを小型ボディに凝縮。静止画・動画性能を極めたオールラウンド一眼",
              image_id:
              File.open("./app/assets/images/A6600.jpg"))
Camera.create!(name: "α6400",
               camera_maker_id: 3,
              introduction: "世界最速0.02秒の高速AFを実現し、高速・高精度な「リアルタイム瞳AF」「リアルタイムトラッキング」機能搭載の小型・軽量一眼カメラ",
              image_id:
              File.open("./app/assets/images/A6400.jpg"))
Camera.create!(name: "SL2",
               camera_maker_id: 4,
              introduction: "新時代を切り拓いたライカSL の次世代モデル。ライカの新たな象徴となる革新的なミラーレスシステムカメラ",
              image_id:
              File.open("./app/assets/images/SL2.jpg"))
Camera.create!(name: "KP",
               camera_maker_id: 8,
              introduction: "その一瞬が、奇蹟になる。",
              image_id:
              File.open("./app/assets/images/KP.jpg"))
Camera.create!(name: "DC-G9",
               camera_maker_id: 9,
              introduction: "撮影者の意思に呼応するような機動力と操作性を備えたハイエンド・ミラーレス一眼 LUMIX G9 PRO誕生。",
              image_id:
              File.open("./app/assets/images/DC-G9.jpg"))
Camera.create!(name: "X-T4",
               camera_maker_id: 10,
              introduction: "Photography in Motion",
              image_id:
              File.open("./app/assets/images/X-T4.jpg"))


