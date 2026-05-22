# frozen_string_literal: true
# Exported by 18xxtools — edit freely
# EDITOR_GRID rows=21 cols=36

module Engine
  module Game
    module G1822GC
      module Map
        LAYOUT = :flat

        LOCATION_NAMES = {
          'AA2' => 'Nashville & Knoxville',
          'AA6' => 'Jackson, TN',
          'AA12' => 'Tupelo',
          'AB9' => 'Corinth',
          'AB13' => 'Columbus',
          'AB25' => 'Biloxi',
          'AC18' => 'Meridian',
          'AC24' => 'Mobile',
          'AE10' => 'Huntsville',
          'AE12' => 'Birmingham',
          'AE24' => 'Pensacola',
          'AF17' => 'Montgomery',
          'AF19' => 'Selma',
          'AG8' => 'Chattanooga',
          'AG14' => 'Auburn',
          'AG22' => 'Demopolis',
          'AI20' => 'Columbus',
          'AJ11' => 'Atlanta',
          'AJ23' => 'Tallahassee & Jacksonville',
          'E30' => 'El Paso & Las Cruces',
          'F29' => 'Fort Stockton',
          'F31' => 'Marathon',
          'H39' => 'Monterrey',
          'I18' => 'Odessa & Lubbock',
          'I24' => 'Fredricksburg',
          'I34' => 'Laredo',
          'J27' => 'San Antonio',
          'J37' => 'Brownsville',
          'K14' => 'Abilene',
          'K18' => 'Goldthwaite',
          'K36' => 'Port Isabel',
          'L25' => 'Austin',
          'L31' => 'Corpus Christi',
          'L33' => 'San Jon',
          'L37' => 'South Padre Island',
          'M10' => 'Wichita Falls',
          'M22' => 'Temple',
          'N13' => 'Sherman',
          'N15' => 'Dallas & Fort Worth',
          'N19' => 'Waco',
          'N25' => 'College Station',
          'O4' => 'Oklahoma City',
          'P27' => 'Katy',
          'Q10' => 'Paris',
          'Q16' => 'Tyler',
          'Q22' => 'Lufkin',
          'Q24' => 'Huntsville',
          'Q28' => 'Houston',
          'Q30' => 'Galveston',
          'R13' => 'Texarkana',
          'S2' => 'Tulsa & St. Louis',
          'S16' => 'Shreveport',
          'S24' => 'Woodville',
          'T23' => 'Jasper',
          'T27' => 'Beaumont',
          'U18' => 'Natchitoches',
          'U26' => 'Lake Charles',
          'V3' => 'Branson',
          'V7' => 'Little Rock',
          'V11' => 'Pine Bluff',
          'V13' => 'Hot Springs',
          'V15' => 'Monroe',
          'V19' => 'Alexandria',
          'V25' => 'Lafayette',
          'X13' => 'Vicksburg',
          'X19' => 'Natchez',
          'X23' => 'Baton Rouge',
          'Y6' => 'Memphis',
          'Y16' => 'Jackson, MS',
          'Y28' => 'New Orleans',
          'Z21' => 'Hattiesburg',
        }.freeze

        TILES = {
          '3' => 6,
          '4' => 6,
          '5' => 8,
          '6' => 8,
          '7' => 'unlimited',
          '8' => 'unlimited',
          '9' => 'unlimited',
          '14' => 5,
          '15' => 5,
          '57' => 8,
          '58' => 6,
          '60' => 8,
          '80' => 6,
          '81' => 6,
          '82' => 6,
          '83' => 6,
          '125' => 8,
          '141' => 6,
          '142' => 6,
          '143' => 6,
          '144' => 6,
          '171' => 6,
          '207' => 3,
          '208' => 3,
          '216' => 6,
          '512' => 5,
          '544' => 6,
          '545' => 6,
          '546' => 6,
          '619' => 5,
          '622' => 3,
          '767' => 6,
          '768' => 6,
          '769' => 6,
          '912' => 12,
        }.freeze

        HEXES = {
          white: {
            %w[
              AA4 AA8 AA10 AA14 AA16 AA18 AA20 AA22 AA24 AA26 AA28 AB3 AB5 AB7 AB11 AB15 AB17
              AB19 AB21 AB23 AB27 AC4 AC6 AC8 AC10 AC12 AC14 AC16 AC20 AC22 AC26 AD5 AD7 AD9
              AD11 AD13 AD15 AD17 AD19 AD21 AD23 AD25 AE4 AE6 AE8 AE14 AE16 AE18 AE20 AE22 AF5
              AF7 AF11 AF13 AF15 AF21 AF23 AF25 AG16 AG18 AG20 AG24 AH9 AH15 AH17 AH19 AH21
              AH23 AI8 AI10 AI16 AI22 AI24 F27 F33 G26 G28 G30 G32 G34 G36 H25 H27 H29 H31 H33
              I28 I30 I32 J13 J15 J17 J19 J21 J23 J29 J31 J33 J35 J39 K10 K12 K16 K20 K22 K26
              K28 K30 K32 K34 K38 L9 L11 L13 L15 L17 L19 L21 L23 L27 L29 L35 L39 M6 M8 M12 M14
              M16 M18 M20 M24 M26 M28 M30 N5 N7 N9 N11 N17 N21 N23 N27 N29 O6 O8 O10 O12 O14
              O16 O18 O20 O22 O24 O26 O28 P5 P7 P9 P11 P13 P15 P17 P19 P21 P23 P25 P29 Q4 Q6
              Q8 Q12 Q14 Q18 Q20 Q26 R5 R7 R9 R11 R15 R17 R19 R21 R23 R25 R27 R29 S6 S14 S18
              S20 S22 S26 T13 T15 T17 T19 T21 T25 T31 U4 U6 U8 U10 U12 U14 U16 U20 U22 U24 V5
              V9 V17 V21 V29 V31 W4 W6 W8 W10 W12 W14 W16 W18 W20 W26 W28 X3 X9 X11 X15 X17
              X25 X27 X29 Y4 Y12 Y14 Y22 Y26 Z9 Z17 Z19 Z23 Z25 Z27 Z29
            ] => '',
            %w[
              AA6 AA12 AC18 AC24 AE10 AE24 AF17 AI20 I24 I34 J27 J37 K14 L31 L37 M10 N19 P27
              Q10 Q16 S16 T27 U26 V7 V11 V15 V19 Y16 Z21
            ] => 'city=revenue:0',
            ['AG8'] => 'city=revenue:0;upgrade=cost:40,terrain:hill',
            ['X13'] => 'city=revenue:0;upgrade=cost:40,terrain:river',
            ['V25'] => 'city=revenue:0;upgrade=cost:40,terrain:water',
            ['Y6'] => 'city=revenue:20;city=revenue:20;city=revenue:20;city=revenue:20;city=revenue:20;city=revenue:20;path=a:0,b:_0;path=a:1,b:_1;path=a:2,b:_2;path=a:3,b:_3;path=a:4,b:_4;path=a:5,b:_5;label=L;upgrade=cost:20',
            %w[
              AB9 AB13 AB25 AF19 AG14 AG22 F29 F31 K18 K36 L33 M22 N13 N25 Q22 Q24 Q30 R13 S24
              T23 U18 V13
            ] => 'town=revenue:0',
            ['T5'] => 'upgrade=cost:20,terrain:hill',
            %w[
              S28 S30 T29 U28 U30 V23 V27 W22 W24 W30
            ] => 'upgrade=cost:20,terrain:swamp',
            %w[
              AF9 AG12 AH13 AI14 AI18 G38 H35 I26 I36 I38 J25 K24 S8 S12 T7 T11
            ] => 'upgrade=cost:40,terrain:hill',
            %w[
              X5 X7 X21 Y8 Y10 Y18 Y20 Y24 Z7 Z11 Z13 Z15
            ] => 'upgrade=cost:40,terrain:river',
            %w[
              S10 T9
            ] => 'upgrade=cost:60,terrain:hill',
            %w[
              AG10 AH11 AI12 H37
            ] => 'upgrade=cost:80,terrain:mountain',
            %w[
              Z3 Z5
            ] => 'upgrade=cost:80,terrain:river',
          },
          yellow: {
            ['L25'] => 'city=revenue:20;path=a:3,b:_0;path=a:1,b:_0',
            ['X19'] => 'city=revenue:20;path=a:3,b:_0;path=a:2,b:_0;path=a:5,b:_0;upgrade=cost:40,terrain:river',
            ['N15'] => 'city=revenue:30,slots:2;path=a:0,b:_0;path=a:2,b:_0;path=a:3,b:_0;label=Y',
            ['Y28'] => 'city=revenue:30,slots:2;path=a:0,b:_0;path=a:2,b:_0;path=a:5,b:_0;label=Y',
            ['AE12'] => 'city=revenue:30,slots:2;path=a:1,b:_0;path=a:3,b:_0;path=a:4,b:_0;label=Y',
            ['X23'] => 'city=revenue:30;path=a:1,b:_0;path=a:5,b:_0;upgrade=cost:40,terrain:river',
            ['Q28'] => 'city=revenue:30;path=a:3,b:_0;path=a:1,b:_0;path=a:5,b:_0;label=Y',
          },
          gray: {
            ['V3'] => 'city=revenue:40;path=a:5,b:_0;path=a:1,b:_0',
            ['I22'] => 'junction;path=a:0,b:_0,terminal:1',
            ['M40'] => 'junction;path=a:2,b:_0,terminal:1',
            ['H23'] => 'junction;path=a:5,b:_0,terminal:1',
            ['I18'] => 'offboard=revenue:yellow_10|green_20|brown_30|gray_40;path=a:4,b:_0,terminal:1;path=a:5,b:_0,terminal:1',
            ['E30'] => 'offboard=revenue:yellow_20|green_30|brown_30|gray_40;path=a:4,b:_0,terminal:1;path=a:5,b:_0,terminal:1',
            %w[
              O4 S2
            ] => 'offboard=revenue:yellow_20|green_30|brown_40|gray_50;path=a:0,b:_0,terminal:1',
            ['AJ23'] => 'offboard=revenue:yellow_20|green_30|brown_40|gray_60;path=a:1,b:_0,terminal:1;path=a:2,b:_0,terminal:1',
            ['H39'] => 'offboard=revenue:yellow_20|green_30|brown_50|gray_70;path=a:3,b:_0,terminal:1;path=a:4,b:_0,terminal:1',
            ['AJ11'] => 'offboard=revenue:yellow_30|green_40|brown_60|gray_80;path=a:2,b:_0,terminal:1;path=a:1,b:_0,terminal:1',
            ['AA2'] => 'offboard=revenue:yellow_30|green_40|brown_60|gray_80;path=a:5,b:_0,terminal:1;path=a:0,b:_0,terminal:1',
            ['S4'] => 'path=a:3,b:1;path=a:3,b:5',
          },
          blue: {
            ['M36'] => 'junction;path=a:1,b:_0,terminal:1',
            ['M32'] => 'junction;path=a:2,b:_0,terminal:1',
            ['M38'] => 'junction;path=a:2,b:_0,terminal:1;path=a:1,b:_0,terminal:1',
            %w[
              AE26 Y30
            ] => 'junction;path=a:3,b:_0,terminal:1',
          },
        }.freeze
      end
    end
  end
end
