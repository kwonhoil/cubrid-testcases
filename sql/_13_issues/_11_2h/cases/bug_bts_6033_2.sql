--+ holdcas on;
set  system parameters 'dont_reuse_heap_file=yes';

create table t (id int primary key auto_increment, a varchar(50), b int);
create serial s start with 1 INCREMENT by 1;
insert into t (a,b) select 'TEST_DATA'||s.next_value, s.next_value from db_class a, db_class b, db_class c limit 10000;
create index i_t_a_b_d on t(a,b desc);
drop serial s;

--TEST
select /*+ recompile */ a,b from t where a in (select a from t order by 1 limit 5000) order by b limit 3000;

--TEST
select /*+ recompile */ a,b from t where a in (
'TEST_DATA1',
'TEST_DATA2',
'TEST_DATA3',
'TEST_DATA4',
'TEST_DATA5',
'TEST_DATA6',
'TEST_DATA7',
'TEST_DATA8',
'TEST_DATA9',
'TEST_DATA10',
'TEST_DATA11',
'TEST_DATA12',
'TEST_DATA13',
'TEST_DATA14',
'TEST_DATA15',
'TEST_DATA16',
'TEST_DATA17',
'TEST_DATA18',
'TEST_DATA19',
'TEST_DATA20',
'TEST_DATA21',
'TEST_DATA22',
'TEST_DATA23',
'TEST_DATA24',
'TEST_DATA25',
'TEST_DATA26',
'TEST_DATA27',
'TEST_DATA28',
'TEST_DATA29',
'TEST_DATA30',
'TEST_DATA31',
'TEST_DATA32',
'TEST_DATA33',
'TEST_DATA34',
'TEST_DATA35',
'TEST_DATA36',
'TEST_DATA37',
'TEST_DATA38',
'TEST_DATA39',
'TEST_DATA40',
'TEST_DATA41',
'TEST_DATA42',
'TEST_DATA43',
'TEST_DATA44',
'TEST_DATA45',
'TEST_DATA46',
'TEST_DATA47',
'TEST_DATA48',
'TEST_DATA49',
'TEST_DATA50',
'TEST_DATA51',
'TEST_DATA52',
'TEST_DATA53',
'TEST_DATA54',
'TEST_DATA55',
'TEST_DATA56',
'TEST_DATA57',
'TEST_DATA58',
'TEST_DATA59',
'TEST_DATA60',
'TEST_DATA61',
'TEST_DATA62',
'TEST_DATA63',
'TEST_DATA64',
'TEST_DATA65',
'TEST_DATA66',
'TEST_DATA67',
'TEST_DATA68',
'TEST_DATA69',
'TEST_DATA70',
'TEST_DATA71',
'TEST_DATA72',
'TEST_DATA73',
'TEST_DATA74',
'TEST_DATA75',
'TEST_DATA76',
'TEST_DATA77',
'TEST_DATA78',
'TEST_DATA79',
'TEST_DATA80',
'TEST_DATA81',
'TEST_DATA82',
'TEST_DATA83',
'TEST_DATA84',
'TEST_DATA85',
'TEST_DATA86',
'TEST_DATA87',
'TEST_DATA88',
'TEST_DATA89',
'TEST_DATA90',
'TEST_DATA91',
'TEST_DATA92',
'TEST_DATA93',
'TEST_DATA94',
'TEST_DATA95',
'TEST_DATA96',
'TEST_DATA97',
'TEST_DATA98',
'TEST_DATA99',
'TEST_DATA100',
'TEST_DATA101',
'TEST_DATA102',
'TEST_DATA103',
'TEST_DATA104',
'TEST_DATA105',
'TEST_DATA106',
'TEST_DATA107',
'TEST_DATA108',
'TEST_DATA109',
'TEST_DATA110',
'TEST_DATA111',
'TEST_DATA112',
'TEST_DATA113',
'TEST_DATA114',
'TEST_DATA115',
'TEST_DATA116',
'TEST_DATA117',
'TEST_DATA118',
'TEST_DATA119',
'TEST_DATA120',
'TEST_DATA121',
'TEST_DATA122',
'TEST_DATA123',
'TEST_DATA124',
'TEST_DATA125',
'TEST_DATA126',
'TEST_DATA127',
'TEST_DATA128',
'TEST_DATA129',
'TEST_DATA130',
'TEST_DATA131',
'TEST_DATA132',
'TEST_DATA133',
'TEST_DATA134',
'TEST_DATA135',
'TEST_DATA136',
'TEST_DATA137',
'TEST_DATA138',
'TEST_DATA139',
'TEST_DATA140',
'TEST_DATA141',
'TEST_DATA142',
'TEST_DATA143',
'TEST_DATA144',
'TEST_DATA145',
'TEST_DATA146',
'TEST_DATA147',
'TEST_DATA148',
'TEST_DATA149',
'TEST_DATA150',
'TEST_DATA151',
'TEST_DATA152',
'TEST_DATA153',
'TEST_DATA154',
'TEST_DATA155',
'TEST_DATA156',
'TEST_DATA157',
'TEST_DATA158',
'TEST_DATA159',
'TEST_DATA160',
'TEST_DATA161',
'TEST_DATA162',
'TEST_DATA163',
'TEST_DATA164',
'TEST_DATA165',
'TEST_DATA166',
'TEST_DATA167',
'TEST_DATA168',
'TEST_DATA169',
'TEST_DATA170',
'TEST_DATA171',
'TEST_DATA172',
'TEST_DATA173',
'TEST_DATA174',
'TEST_DATA175',
'TEST_DATA176',
'TEST_DATA177',
'TEST_DATA178',
'TEST_DATA179',
'TEST_DATA180',
'TEST_DATA181',
'TEST_DATA182',
'TEST_DATA183',
'TEST_DATA184',
'TEST_DATA185',
'TEST_DATA186',
'TEST_DATA187',
'TEST_DATA188',
'TEST_DATA189',
'TEST_DATA190',
'TEST_DATA191',
'TEST_DATA192',
'TEST_DATA193',
'TEST_DATA194',
'TEST_DATA195',
'TEST_DATA196',
'TEST_DATA197',
'TEST_DATA198',
'TEST_DATA199',
'TEST_DATA200',
'TEST_DATA201',
'TEST_DATA202',
'TEST_DATA203',
'TEST_DATA204',
'TEST_DATA205',
'TEST_DATA206',
'TEST_DATA207',
'TEST_DATA208',
'TEST_DATA209',
'TEST_DATA210',
'TEST_DATA211',
'TEST_DATA212',
'TEST_DATA213',
'TEST_DATA214',
'TEST_DATA215',
'TEST_DATA216',
'TEST_DATA217',
'TEST_DATA218',
'TEST_DATA219',
'TEST_DATA220',
'TEST_DATA221',
'TEST_DATA222',
'TEST_DATA223',
'TEST_DATA224',
'TEST_DATA225',
'TEST_DATA226',
'TEST_DATA227',
'TEST_DATA228',
'TEST_DATA229',
'TEST_DATA230',
'TEST_DATA231',
'TEST_DATA232',
'TEST_DATA233',
'TEST_DATA234',
'TEST_DATA235',
'TEST_DATA236',
'TEST_DATA237',
'TEST_DATA238',
'TEST_DATA239',
'TEST_DATA240',
'TEST_DATA241',
'TEST_DATA242',
'TEST_DATA243',
'TEST_DATA244',
'TEST_DATA245',
'TEST_DATA246',
'TEST_DATA247',
'TEST_DATA248',
'TEST_DATA249',
'TEST_DATA250',
'TEST_DATA251',
'TEST_DATA252',
'TEST_DATA253',
'TEST_DATA254',
'TEST_DATA255',
'TEST_DATA256',
'TEST_DATA257',
'TEST_DATA258',
'TEST_DATA259',
'TEST_DATA260',
'TEST_DATA261',
'TEST_DATA262',
'TEST_DATA263',
'TEST_DATA264',
'TEST_DATA265',
'TEST_DATA266',
'TEST_DATA267',
'TEST_DATA268',
'TEST_DATA269',
'TEST_DATA270',
'TEST_DATA271',
'TEST_DATA272',
'TEST_DATA273',
'TEST_DATA274',
'TEST_DATA275',
'TEST_DATA276',
'TEST_DATA277',
'TEST_DATA278',
'TEST_DATA279',
'TEST_DATA280',
'TEST_DATA281',
'TEST_DATA282',
'TEST_DATA283',
'TEST_DATA284',
'TEST_DATA285',
'TEST_DATA286',
'TEST_DATA287',
'TEST_DATA288',
'TEST_DATA289',
'TEST_DATA290',
'TEST_DATA291',
'TEST_DATA292',
'TEST_DATA293',
'TEST_DATA294',
'TEST_DATA295',
'TEST_DATA296',
'TEST_DATA297',
'TEST_DATA298',
'TEST_DATA299',
'TEST_DATA300',
'TEST_DATA301',
'TEST_DATA302',
'TEST_DATA303',
'TEST_DATA304',
'TEST_DATA305',
'TEST_DATA306',
'TEST_DATA307',
'TEST_DATA308',
'TEST_DATA309',
'TEST_DATA310',
'TEST_DATA311',
'TEST_DATA312',
'TEST_DATA313',
'TEST_DATA314',
'TEST_DATA315',
'TEST_DATA316',
'TEST_DATA317',
'TEST_DATA318',
'TEST_DATA319',
'TEST_DATA320',
'TEST_DATA321',
'TEST_DATA322',
'TEST_DATA323',
'TEST_DATA324',
'TEST_DATA325',
'TEST_DATA326',
'TEST_DATA327',
'TEST_DATA328',
'TEST_DATA329',
'TEST_DATA330',
'TEST_DATA331',
'TEST_DATA332',
'TEST_DATA333',
'TEST_DATA334',
'TEST_DATA335',
'TEST_DATA336',
'TEST_DATA337',
'TEST_DATA338',
'TEST_DATA339',
'TEST_DATA340',
'TEST_DATA341',
'TEST_DATA342',
'TEST_DATA343',
'TEST_DATA344',
'TEST_DATA345',
'TEST_DATA346',
'TEST_DATA347',
'TEST_DATA348',
'TEST_DATA349',
'TEST_DATA350',
'TEST_DATA351',
'TEST_DATA352',
'TEST_DATA353',
'TEST_DATA354',
'TEST_DATA355',
'TEST_DATA356',
'TEST_DATA357',
'TEST_DATA358',
'TEST_DATA359',
'TEST_DATA360',
'TEST_DATA361',
'TEST_DATA362',
'TEST_DATA363',
'TEST_DATA364',
'TEST_DATA365',
'TEST_DATA366',
'TEST_DATA367',
'TEST_DATA368',
'TEST_DATA369',
'TEST_DATA370',
'TEST_DATA371',
'TEST_DATA372',
'TEST_DATA373',
'TEST_DATA374',
'TEST_DATA375',
'TEST_DATA376',
'TEST_DATA377',
'TEST_DATA378',
'TEST_DATA379',
'TEST_DATA380',
'TEST_DATA381',
'TEST_DATA382',
'TEST_DATA383',
'TEST_DATA384',
'TEST_DATA385',
'TEST_DATA386',
'TEST_DATA387',
'TEST_DATA388',
'TEST_DATA389',
'TEST_DATA390',
'TEST_DATA391',
'TEST_DATA392',
'TEST_DATA393',
'TEST_DATA394',
'TEST_DATA395',
'TEST_DATA396',
'TEST_DATA397',
'TEST_DATA398',
'TEST_DATA399',
'TEST_DATA400',
'TEST_DATA401',
'TEST_DATA402',
'TEST_DATA403',
'TEST_DATA404',
'TEST_DATA405',
'TEST_DATA406',
'TEST_DATA407',
'TEST_DATA408',
'TEST_DATA409',
'TEST_DATA410',
'TEST_DATA411',
'TEST_DATA412',
'TEST_DATA413',
'TEST_DATA414',
'TEST_DATA415',
'TEST_DATA416',
'TEST_DATA417',
'TEST_DATA418',
'TEST_DATA419',
'TEST_DATA420',
'TEST_DATA421',
'TEST_DATA422',
'TEST_DATA423',
'TEST_DATA424',
'TEST_DATA425',
'TEST_DATA426',
'TEST_DATA427',
'TEST_DATA428',
'TEST_DATA429',
'TEST_DATA430',
'TEST_DATA431',
'TEST_DATA432',
'TEST_DATA433',
'TEST_DATA434',
'TEST_DATA435',
'TEST_DATA436',
'TEST_DATA437',
'TEST_DATA438',
'TEST_DATA439',
'TEST_DATA440',
'TEST_DATA441',
'TEST_DATA442',
'TEST_DATA443',
'TEST_DATA444',
'TEST_DATA445',
'TEST_DATA446',
'TEST_DATA447',
'TEST_DATA448',
'TEST_DATA449',
'TEST_DATA450',
'TEST_DATA451',
'TEST_DATA452',
'TEST_DATA453',
'TEST_DATA454',
'TEST_DATA455',
'TEST_DATA456',
'TEST_DATA457',
'TEST_DATA458',
'TEST_DATA459',
'TEST_DATA460',
'TEST_DATA461',
'TEST_DATA462',
'TEST_DATA463',
'TEST_DATA464',
'TEST_DATA465',
'TEST_DATA466',
'TEST_DATA467',
'TEST_DATA468',
'TEST_DATA469',
'TEST_DATA470',
'TEST_DATA471',
'TEST_DATA472',
'TEST_DATA473',
'TEST_DATA474',
'TEST_DATA475',
'TEST_DATA476',
'TEST_DATA477',
'TEST_DATA478',
'TEST_DATA479',
'TEST_DATA480',
'TEST_DATA481',
'TEST_DATA482',
'TEST_DATA483',
'TEST_DATA484',
'TEST_DATA485',
'TEST_DATA486',
'TEST_DATA487',
'TEST_DATA488',
'TEST_DATA489',
'TEST_DATA490',
'TEST_DATA491',
'TEST_DATA492',
'TEST_DATA493',
'TEST_DATA494',
'TEST_DATA495',
'TEST_DATA496',
'TEST_DATA497',
'TEST_DATA498',
'TEST_DATA499',
'TEST_DATA500',
'TEST_DATA501',
'TEST_DATA502',
'TEST_DATA503',
'TEST_DATA504',
'TEST_DATA505',
'TEST_DATA506',
'TEST_DATA507',
'TEST_DATA508',
'TEST_DATA509',
'TEST_DATA510',
'TEST_DATA511',
'TEST_DATA512',
'TEST_DATA513',
'TEST_DATA514',
'TEST_DATA515',
'TEST_DATA516',
'TEST_DATA517',
'TEST_DATA518',
'TEST_DATA519',
'TEST_DATA520',
'TEST_DATA521',
'TEST_DATA522',
'TEST_DATA523',
'TEST_DATA524',
'TEST_DATA525',
'TEST_DATA526',
'TEST_DATA527',
'TEST_DATA528',
'TEST_DATA529',
'TEST_DATA530',
'TEST_DATA531',
'TEST_DATA532',
'TEST_DATA533',
'TEST_DATA534',
'TEST_DATA535',
'TEST_DATA536',
'TEST_DATA537',
'TEST_DATA538',
'TEST_DATA539',
'TEST_DATA540',
'TEST_DATA541',
'TEST_DATA542',
'TEST_DATA543',
'TEST_DATA544',
'TEST_DATA545',
'TEST_DATA546',
'TEST_DATA547',
'TEST_DATA548',
'TEST_DATA549',
'TEST_DATA550',
'TEST_DATA551',
'TEST_DATA552',
'TEST_DATA553',
'TEST_DATA554',
'TEST_DATA555',
'TEST_DATA556',
'TEST_DATA557',
'TEST_DATA558',
'TEST_DATA559',
'TEST_DATA560',
'TEST_DATA561',
'TEST_DATA562',
'TEST_DATA563',
'TEST_DATA564',
'TEST_DATA565',
'TEST_DATA566',
'TEST_DATA567',
'TEST_DATA568',
'TEST_DATA569',
'TEST_DATA570',
'TEST_DATA571',
'TEST_DATA572',
'TEST_DATA573',
'TEST_DATA574',
'TEST_DATA575',
'TEST_DATA576',
'TEST_DATA577',
'TEST_DATA578',
'TEST_DATA579',
'TEST_DATA580',
'TEST_DATA581',
'TEST_DATA582',
'TEST_DATA583',
'TEST_DATA584',
'TEST_DATA585',
'TEST_DATA586',
'TEST_DATA587',
'TEST_DATA588',
'TEST_DATA589',
'TEST_DATA590',
'TEST_DATA591',
'TEST_DATA592',
'TEST_DATA593',
'TEST_DATA594',
'TEST_DATA595',
'TEST_DATA596',
'TEST_DATA597',
'TEST_DATA598',
'TEST_DATA599',
'TEST_DATA600',
'TEST_DATA601',
'TEST_DATA602',
'TEST_DATA603',
'TEST_DATA604',
'TEST_DATA605',
'TEST_DATA606',
'TEST_DATA607',
'TEST_DATA608',
'TEST_DATA609',
'TEST_DATA610',
'TEST_DATA611',
'TEST_DATA612',
'TEST_DATA613',
'TEST_DATA614',
'TEST_DATA615',
'TEST_DATA616',
'TEST_DATA617',
'TEST_DATA618',
'TEST_DATA619',
'TEST_DATA620',
'TEST_DATA621',
'TEST_DATA622',
'TEST_DATA623',
'TEST_DATA624',
'TEST_DATA625',
'TEST_DATA626',
'TEST_DATA627',
'TEST_DATA628',
'TEST_DATA629',
'TEST_DATA630',
'TEST_DATA631',
'TEST_DATA632',
'TEST_DATA633',
'TEST_DATA634',
'TEST_DATA635',
'TEST_DATA636',
'TEST_DATA637',
'TEST_DATA638',
'TEST_DATA639',
'TEST_DATA640',
'TEST_DATA641',
'TEST_DATA642',
'TEST_DATA643',
'TEST_DATA644',
'TEST_DATA645',
'TEST_DATA646',
'TEST_DATA647',
'TEST_DATA648',
'TEST_DATA649',
'TEST_DATA650',
'TEST_DATA651',
'TEST_DATA652',
'TEST_DATA653',
'TEST_DATA654',
'TEST_DATA655',
'TEST_DATA656',
'TEST_DATA657',
'TEST_DATA658',
'TEST_DATA659',
'TEST_DATA660',
'TEST_DATA661',
'TEST_DATA662',
'TEST_DATA663',
'TEST_DATA664',
'TEST_DATA665',
'TEST_DATA666',
'TEST_DATA667',
'TEST_DATA668',
'TEST_DATA669',
'TEST_DATA670',
'TEST_DATA671',
'TEST_DATA672',
'TEST_DATA673',
'TEST_DATA674',
'TEST_DATA675',
'TEST_DATA676',
'TEST_DATA677',
'TEST_DATA678',
'TEST_DATA679',
'TEST_DATA680',
'TEST_DATA681',
'TEST_DATA682',
'TEST_DATA683',
'TEST_DATA684',
'TEST_DATA685',
'TEST_DATA686',
'TEST_DATA687',
'TEST_DATA688',
'TEST_DATA689',
'TEST_DATA690',
'TEST_DATA691',
'TEST_DATA692',
'TEST_DATA693',
'TEST_DATA694',
'TEST_DATA695',
'TEST_DATA696',
'TEST_DATA697',
'TEST_DATA698',
'TEST_DATA699',
'TEST_DATA700',
'TEST_DATA701',
'TEST_DATA702',
'TEST_DATA703',
'TEST_DATA704',
'TEST_DATA705',
'TEST_DATA706',
'TEST_DATA707',
'TEST_DATA708',
'TEST_DATA709',
'TEST_DATA710',
'TEST_DATA711',
'TEST_DATA712',
'TEST_DATA713',
'TEST_DATA714',
'TEST_DATA715',
'TEST_DATA716',
'TEST_DATA717',
'TEST_DATA718',
'TEST_DATA719',
'TEST_DATA720',
'TEST_DATA721',
'TEST_DATA722',
'TEST_DATA723',
'TEST_DATA724',
'TEST_DATA725',
'TEST_DATA726',
'TEST_DATA727',
'TEST_DATA728',
'TEST_DATA729',
'TEST_DATA730',
'TEST_DATA731',
'TEST_DATA732',
'TEST_DATA733',
'TEST_DATA734',
'TEST_DATA735',
'TEST_DATA736',
'TEST_DATA737',
'TEST_DATA738',
'TEST_DATA739',
'TEST_DATA740',
'TEST_DATA741',
'TEST_DATA742',
'TEST_DATA743',
'TEST_DATA744',
'TEST_DATA745',
'TEST_DATA746',
'TEST_DATA747',
'TEST_DATA748',
'TEST_DATA749',
'TEST_DATA750',
'TEST_DATA751',
'TEST_DATA752',
'TEST_DATA753',
'TEST_DATA754',
'TEST_DATA755',
'TEST_DATA756',
'TEST_DATA757',
'TEST_DATA758',
'TEST_DATA759',
'TEST_DATA760',
'TEST_DATA761',
'TEST_DATA762',
'TEST_DATA763',
'TEST_DATA764',
'TEST_DATA765',
'TEST_DATA766',
'TEST_DATA767',
'TEST_DATA768',
'TEST_DATA769',
'TEST_DATA770',
'TEST_DATA771',
'TEST_DATA772',
'TEST_DATA773',
'TEST_DATA774',
'TEST_DATA775',
'TEST_DATA776',
'TEST_DATA777',
'TEST_DATA778',
'TEST_DATA779',
'TEST_DATA780',
'TEST_DATA781',
'TEST_DATA782',
'TEST_DATA783',
'TEST_DATA784',
'TEST_DATA785',
'TEST_DATA786',
'TEST_DATA787',
'TEST_DATA788',
'TEST_DATA789',
'TEST_DATA790',
'TEST_DATA791',
'TEST_DATA792',
'TEST_DATA793',
'TEST_DATA794',
'TEST_DATA795',
'TEST_DATA796',
'TEST_DATA797',
'TEST_DATA798',
'TEST_DATA799',
'TEST_DATA800',
'TEST_DATA801',
'TEST_DATA802',
'TEST_DATA803',
'TEST_DATA804',
'TEST_DATA805',
'TEST_DATA806',
'TEST_DATA807',
'TEST_DATA808',
'TEST_DATA809',
'TEST_DATA810',
'TEST_DATA811',
'TEST_DATA812',
'TEST_DATA813',
'TEST_DATA814',
'TEST_DATA815',
'TEST_DATA816',
'TEST_DATA817',
'TEST_DATA818',
'TEST_DATA819',
'TEST_DATA820',
'TEST_DATA821',
'TEST_DATA822',
'TEST_DATA823',
'TEST_DATA824',
'TEST_DATA825',
'TEST_DATA826',
'TEST_DATA827',
'TEST_DATA828',
'TEST_DATA829',
'TEST_DATA830',
'TEST_DATA831',
'TEST_DATA832',
'TEST_DATA833',
'TEST_DATA834',
'TEST_DATA835',
'TEST_DATA836',
'TEST_DATA837',
'TEST_DATA838',
'TEST_DATA839',
'TEST_DATA840',
'TEST_DATA841',
'TEST_DATA842',
'TEST_DATA843',
'TEST_DATA844',
'TEST_DATA845',
'TEST_DATA846',
'TEST_DATA847',
'TEST_DATA848',
'TEST_DATA849',
'TEST_DATA850',
'TEST_DATA851',
'TEST_DATA852',
'TEST_DATA853',
'TEST_DATA854',
'TEST_DATA855',
'TEST_DATA856',
'TEST_DATA857',
'TEST_DATA858',
'TEST_DATA859',
'TEST_DATA860',
'TEST_DATA861',
'TEST_DATA862',
'TEST_DATA863',
'TEST_DATA864',
'TEST_DATA865',
'TEST_DATA866',
'TEST_DATA867',
'TEST_DATA868',
'TEST_DATA869',
'TEST_DATA870',
'TEST_DATA871',
'TEST_DATA872',
'TEST_DATA873',
'TEST_DATA874',
'TEST_DATA875',
'TEST_DATA876',
'TEST_DATA877',
'TEST_DATA878',
'TEST_DATA879',
'TEST_DATA880',
'TEST_DATA881',
'TEST_DATA882',
'TEST_DATA883',
'TEST_DATA884',
'TEST_DATA885',
'TEST_DATA886',
'TEST_DATA887',
'TEST_DATA888',
'TEST_DATA889',
'TEST_DATA890',
'TEST_DATA891',
'TEST_DATA892',
'TEST_DATA893',
'TEST_DATA894',
'TEST_DATA895',
'TEST_DATA896',
'TEST_DATA897',
'TEST_DATA898',
'TEST_DATA899',
'TEST_DATA900',
'TEST_DATA901',
'TEST_DATA902',
'TEST_DATA903',
'TEST_DATA904',
'TEST_DATA905',
'TEST_DATA906',
'TEST_DATA907',
'TEST_DATA908',
'TEST_DATA909',
'TEST_DATA910',
'TEST_DATA911',
'TEST_DATA912',
'TEST_DATA913',
'TEST_DATA914',
'TEST_DATA915',
'TEST_DATA916',
'TEST_DATA917',
'TEST_DATA918',
'TEST_DATA919',
'TEST_DATA920',
'TEST_DATA921',
'TEST_DATA922',
'TEST_DATA923',
'TEST_DATA924',
'TEST_DATA925',
'TEST_DATA926',
'TEST_DATA927',
'TEST_DATA928',
'TEST_DATA929',
'TEST_DATA930',
'TEST_DATA931',
'TEST_DATA932',
'TEST_DATA933',
'TEST_DATA934',
'TEST_DATA935',
'TEST_DATA936',
'TEST_DATA937',
'TEST_DATA938',
'TEST_DATA939',
'TEST_DATA940',
'TEST_DATA941',
'TEST_DATA942',
'TEST_DATA943',
'TEST_DATA944',
'TEST_DATA945',
'TEST_DATA946',
'TEST_DATA947',
'TEST_DATA948',
'TEST_DATA949',
'TEST_DATA950',
'TEST_DATA951',
'TEST_DATA952',
'TEST_DATA953',
'TEST_DATA954',
'TEST_DATA955',
'TEST_DATA956',
'TEST_DATA957',
'TEST_DATA958',
'TEST_DATA959',
'TEST_DATA960',
'TEST_DATA961',
'TEST_DATA962',
'TEST_DATA963',
'TEST_DATA964',
'TEST_DATA965',
'TEST_DATA966',
'TEST_DATA967',
'TEST_DATA968',
'TEST_DATA969',
'TEST_DATA970',
'TEST_DATA971',
'TEST_DATA972',
'TEST_DATA973',
'TEST_DATA974',
'TEST_DATA975',
'TEST_DATA976',
'TEST_DATA977',
'TEST_DATA978',
'TEST_DATA979',
'TEST_DATA980',
'TEST_DATA981',
'TEST_DATA982',
'TEST_DATA983',
'TEST_DATA984',
'TEST_DATA985',
'TEST_DATA986',
'TEST_DATA987',
'TEST_DATA988',
'TEST_DATA989',
'TEST_DATA990',
'TEST_DATA991',
'TEST_DATA992',
'TEST_DATA993',
'TEST_DATA994',
'TEST_DATA995',
'TEST_DATA996',
'TEST_DATA997',
'TEST_DATA998',
'TEST_DATA999',
'TEST_DATA1000'

) using index i_t_a_b_d(+) order by b desc limit 3000;

drop table t;
set  system parameters 'dont_reuse_heap_file=no';
commit;
--+ holdcas off;
