
create table bandatalk1_train_quiz(bandatalk1_train_quiz_mid INT PRIMARY KEY, version INT, train_quiz_sets INT, sound_BG VARCHAR(255), train_quiz_keyword TEXT, train_quiz_img TEXT, sound_allert VARCHAR(255), sound_correct VARCHAR(255), sound_wrong VARCHAR(255), train_quiz_keyword_audio TEXT, sound_effect TEXT, intro_sentence VARCHAR(255), intro_sentence_audio VARCHAR(255), outro_sentence TEXT, outro_sentence_audio TEXT);

	insert into bandatalk1_train_quiz values(20001, 1, 5, 'bgm/genius_bgm_07', 'carrot;salad;apple;tomato;banana', 'carrot;salad;apple;tomato;banana', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/carrot;voice/salad;voice/apple;voice/tomato;voice/banana', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Train Quiz!', 'voice/bada_train', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20002, 1, 4, 'bgm/genius_bgm_07', 'row;stream;merrily;down', 'card_memory_kwd_row;card_memory_kwd_stream;card_memory_kwd_merrily;card_memory_kwd_down', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_row;voice/jess_stream;voice/jess_merrily;voice/jess_down', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20003, 1, 4, 'bgm/genius_bgm_07', 'shoulders;toes;eyes;ear', 'card_memory_kwd_shoulders;card_memory_kwd_toes;card_memory_kwd_eyes;card_memory_kwd_ears', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_shoulders;voice/jess_toes;voice/jess_eyes;voice/jess_ears', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20004, 1, 4, 'bgm/genius_bgm_07', 'twinkle;wonder;sky;dark', 'card_memory_kwd_twinkle;card_memory_kwd_wonder;card_memory_kwd_sky;card_memory_kwd_dark', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_twinkle;voice/jess_wonder;voice/jess_sky;voice/jess_dark', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20005, 1, 6, 'bgm/genius_bgm_07', 'all;put together;fall;wall;men', 'card_memory_kwd_all;card_memory_kwd_put_together;card_memory_kwd_fall;card_memory_kwd_wall;card_memory_kwd_men', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_all;voice/jess_put_together;voice/jess_fall;voice/jess_wall;voice/jess_men', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20006, 1, 6, 'bgm/genius_bgm_07', 'go round;bush;morning;early;brush teeth', 'card_memory_kwd_go_round;card_memory_kwd_bush;card_memory_kwd_morning;card_memory_kwd_early;card_memory_kwd_brush_teeth', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_go_round;voice/jess_bush;voice/jess_morning;voice/jess_early;voice/jess_brush_teeth', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20007, 1, 6, 'bgm/genius_bgm_07', 'fell off;doctor;bumped;no more;bed', 'card_memory_kwd_fell_off;card_memory_kwd_doctor;card_memory_kwd_bumped;card_memory_kwd_no_more;card_memory_kwd_bed', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_fell_off;voice/jess_doctor;voice/jess_bumped;voice/jess_no_more;voice/jess_bed', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20008, 1, 6, 'bgm/genius_bgm_07', 'sunshine;again;itsy bitsy;water spout;washed out', 'card_memory_kwd_sunshine;card_memory_kwd_again;card_memory_kwd_itsy_bitsy;card_memory_kwd_water_spout;card_memory_kwd_washed_out', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_sunshine;voice/jess_again;voice/jess_itsy_bitsy;voice/jess_water_spout;voice/jess_washed_out', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20009, 1, 8, 'bgm/genius_bgm_07', 'know;looked;searched;leave;behind', 'card_memory_kwd_know;card_memory_kwd_looked;card_memory_kwd_searched;card_memory_kwd_leave;card_memory_kwd_behind', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_know;voice/jess_looked;voice/jess_searched;voice/jess_leave;voice/jess_behind', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20010, 1, 8, 'bgm/genius_bgm_07', 'school;had;children;laugh;play;teacher', 'card_memory_kwd_school;card_memory_kwd_had;card_memory_kwd_children;card_memory_kwd_laugh;card_memory_kwd_play;card_memory_kwd_teacher', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_school;voice/jess_had;voice/jess_children;voice/jess_laugh;voice/jess_play;voice/jess_teacher', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20011, 1, 8, 'bgm/genius_bgm_07', 'seven;eight;nine;thirteen;sixteen;twenty', 'card_memory_kwd_seven;card_memory_kwd_eight;card_memory_kwd_nine;card_memory_kwd_thirteen;card_memory_kwd_sixteen;card_memory_kwd_twenty', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_seven;voice/jess_eight;voice/jess_nine;voice/jess_thirteen;voice/jess_sixteen;voice/jess_twenty', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into bandatalk1_train_quiz values(20012, 1, 8, 'bgm/genius_bgm_07', 'off we go;early;puff;train;chug', 'card_memory_kwd_off_we_go;card_memory_kwd_early;card_memory_kwd_puff;card_memory_kwd_train;card_memory_kwd_chug', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_off_we_go;voice/jess_early;voice/jess_puff;voice/jess_train;voice/jess_chug', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');

create table error(error_mid INT PRIMARY KEY, version INT, enum_str VARCHAR(255), explain VARCHAR(255));

	insert into error values(0, 1, 'NONE', '정상처리');
	insert into error values(1, 1, 'UNKNOWN', '알려지지 않은 처리');
	insert into error values(1001, 1, 'SYS_MSG_TYPE_INVALID', '메시지타입이 유효하지 않음');
	insert into error values(1002, 1, 'SYS_VERSION_UPGRADE_REQUIRED', '버전 업그레이드가 필요함');
	insert into error values(1003, 1, 'SYS_SESSION_REQUIRED', '세션 정보가 없거나 잘못됨');
	insert into error values(1004, 1, 'SYS_PARAM_REQUIRED', '파라미터가 없거나 잘못됨');
	insert into error values(1005, 1, 'SYS_MASTER_DATA_TABLE_NOT_FOUND', '마스터 데이터 테이블을 찾을 수 없음');
	insert into error values(1006, 1, 'SYS_MASTER_DATA_INFO_NOT_FOUND', '마스터 데이터 정보를 찾을 수 없음');
	insert into error values(1007, 1, 'SYS_EMAIL_REQUIRED', '이메일 정보가 없음');
	insert into error values(1008, 1, 'SYS_NOT_ALLOWED', '아직 접근 할 수 없는 요청임');
	insert into error values(1009, 1, 'SYS_ALREADY_EXIST', '이미 존재함');
	insert into error values(1010, 1, 'SYS_EMAIL_ALREADY_IN_USE', '이미 사용중인 이메일임');
	insert into error values(1011, 1, 'SYS_SIGN_UP_REQUIRED', '회원가입이 필요함');
	insert into error values(1012, 1, 'SYS_GOING_SIGN_UP', '회원가입 진행중임');
	insert into error values(1013, 1, 'SYS_VERIFICATION_CODE_INVALID', '인증코드가 잘못됨');
	insert into error values(1014, 1, 'SYS_CEO_VERSION_EXPIRED', 'CEO 버전이 만료됨');
	insert into error values(1015, 1, 'SYS_DB_CONNECT_FAILED', '디비 연결 실패');
	insert into error values(1016, 1, 'SYS_DB_ERROR', '디비 에러');
	insert into error values(1017, 1, 'SYS_BLOCKING_USER', '접근 금지된 유저');
	insert into error values(1018, 1, 'SYS_PARSE_ERROR', '파싱 에러');
	insert into error values(1019, 1, 'SYS_EXTERNAL_CONNECT_FAILED', '외부 서버 연결 실패');
	insert into error values(1020, 1, 'SYS_EXTERNAL_DATA_INVALID', '외부 서버 데이터 오류');
	insert into error values(1021, 1, 'SYS_KIDSLOOP_CONNECT_FAILED', 'KIDS LOOP 서버 연결 실패');
	insert into error values(1022, 1, 'SYS_KIDSLOOP_DATA_INVALID', 'KIDS LOOP 서버 데이터 오류');
	insert into error values(1023, 1, 'SYS_TOKEN_INVALID', '토큰 정보가 잘못됨');
	insert into error values(1024, 1, 'SYS_TOKEN_EXPIRED', '토큰의 유효기간이 만료됨');
	insert into error values(1025, 1, 'SYS_INTERNAL_SERVER_ERROR', '서버 내부 에러');
	insert into error values(1026, 1, 'SYS_ACCESSTOKEN_EXPIRED', 'ACCESSTOKEN의 기간이 만료되서 갱신해야함.');
	insert into error values(1201, 1, 'ACCOUNT_GET_ITEM_FAILED', '계정 정보를 가져올 수 없음');
	insert into error values(1202, 1, 'ACCOUNT_PUT_ITEM_FAILED', '계정 정보에 넣을 수 없음');
	insert into error values(1203, 1, 'ACCOUNT_UPDATE_ITEM_FAILED', '계정 정보를 갱신 할 수 없음');
	insert into error values(1204, 1, 'ACCOUNT_NOT_FOUND', '계정 정보가 존재 하지 않음');
	insert into error values(1205, 1, 'ACCOUNT_OS_GET_ITEM_FAILED', '스토어 계정 정보를 가져올 수 없음');
	insert into error values(1206, 1, 'ACCOUNT_OS_PUT_ITEM_FAILED', '스토어 계정 정보를 넣을 수 없음');
	insert into error values(1207, 1, 'ACCOUNT_DELETE_ITEM_FAILED', '계정 정보를 삭제 할 수 없음');
	insert into error values(1208, 1, 'ACCOUNT_OS_UPDATE_ITEM_FAILED', '스토어 계정 정보를 갱신 할 수 없음');
	insert into error values(1209, 1, 'ACCOUNT_OS_DELETE_ITEM_FAILED', '스토어 계정 정보를 삭제 할 수 없음');
	insert into error values(1210, 1, 'ACCOUNT_PROMOCODE_NOT_FOUND', '프로모코드를 찾을 수 없음');
	insert into error values(1211, 1, 'ACCOUNT_PROMOCODE_ALREADY_USED', '프로모코드가 이미 사용됨');
	insert into error values(1212, 1, 'ACCOUNT_PROMOCODE_TYPE_INVALID', '프로코코드 타입이 잘못됨');
	insert into error values(1213, 1, 'ACCOUNT_PROMOCODE_EXPIRED', '프로코코드 기간 만료');
	insert into error values(1214, 1, 'ACCOUNT_PROMOCODE_GET_ITEM_FAILED', '프로모코드 정보를 가져올 수 없음');
	insert into error values(1215, 1, 'ACCOUNT_PROMOCODE_PUT_ITEM_FAILED', '프로모코드 정보를 넣을 수 없음');
	insert into error values(1216, 1, 'ACCOUNT_PROMOCODE_UPDATE_ITEM_FAILED', '프로모코드 정보를 갱신 할 수 없음');
	insert into error values(1217, 1, 'ACCOUNT_PROMOCODE_DELETE_ITEM_FAILED', '프로모코드 정보를 삭제 할 수 없음');
	insert into error values(1218, 1, 'ACCOUNT_MEDIABOX_GET_ITEM_FAILED', '미디어박스 정보를 가져올 수 없음');
	insert into error values(1219, 1, 'ACCOUNT_MEDIABOX_PUT_ITEM_FAILED', '미디어박스 정보를 넣을 수 없음');
	insert into error values(1220, 1, 'ACCOUNT_MEDIABOX_UPDATE_ITEM_FAILED', '미디어박스 정보를 갱신 할 수 없음');
	insert into error values(1221, 1, 'ACCOUNT_MEDIABOX_DELETE_ITEM_FAILED', '미디어박스 정보를 삭제 할 수 없음');
	insert into error values(1222, 1, 'ACCOUNT_SUB_GET_ITEM_FAILED', '계정 정보를 가져올 수 없음');
	insert into error values(1223, 1, 'ACCOUNT_SUB_PUT_ITEM_FAILED', '계정 정보를 넣을 수 없음');
	insert into error values(1224, 1, 'ACCOUNT_SUB_UPDATE_ITEM_FAILED', '계정 정보를 갱신 할 수 없음');
	insert into error values(1225, 1, 'ACCOUNT_SUB_DELETE_ITEM_FAILED', '계정 정보를 삭제 할 수 없음');
	insert into error values(1226, 1, 'ACCOUNT_DEVICE_GET_ITEM_FAILED', '계정 디바이스 정보를 가져올 수 없음');
	insert into error values(1227, 1, 'ACCOUNT_DEVICE_PUT_ITEM_FAILED', '계정 디바이스 정보를 넣을 수 없음');
	insert into error values(1228, 1, 'ACCOUNT_DEVICE_UPDATE_ITEM_FAILED', '계정 디바이스  정보를 갱신 할 수 없음');
	insert into error values(1229, 1, 'ACCOUNT_DEVICE_DELETE_ITEM_FAILED', '계정 디바이스  정보를 삭제 할 수 없음');
	insert into error values(1301, 1, 'PROFILE_QUERY_ITEMS_FAILED', '프로필 정보를 가져 올 수 없음');
	insert into error values(1302, 1, 'PROFILE_PUT_ITEM_FAILED', '프로필 정보를 넣을 수 없음');
	insert into error values(1303, 1, 'PROFILE_DELETE_ITEM_FAILED', '프로필 정보를 삭제 할 수 없음');
	insert into error values(1304, 1, 'PROFILE_UPDATE_ITEM_FAILED', '프로필 정보를 갱신 할 수 없음');
	insert into error values(1305, 1, 'PROFILE_GET_ITEM_FAILED', '해당 프로필 정보를 가져 올 수 없음');
	insert into error values(1306, 1, 'PROFILE_BOOKS_NOT_FOUND', '프로필의 Books 의 정보를 찾을 수 없음');
	insert into error values(1307, 1, 'PROFILE_SONGS_NOT_FOUND', '프로필의 Songs 의 정보를 찾을 수 없음');
	insert into error values(1308, 1, 'PROFILE_BADA_RHYME_LESSON_NOT_FOUND', '프로필의 Bada Rhyme 의 Lesson 정보를 찾을 수 없음');
	insert into error values(1309, 1, 'PROFILE_NOT_FOUND', '프로필을 찾을 수 없음');
	insert into error values(1310, 1, 'PROFILE_MAX_COUNT', '프로필 개수가 최대치임');
	insert into error values(1311, 1, 'PROFILE_DATA_PUT_ITEM_FAILED', '프로필 정보를 넣을 수 없음');
	insert into error values(1312, 1, 'PROFILE_DATA_DELETE_ITEM_FAILED', '프로필 정보를 삭제 할 수 없음');
	insert into error values(1313, 1, 'PROFILE_DATA_UPDATE_ITEM_FAILED', '프로필 정보를 갱신 할 수 없음');
	insert into error values(1314, 1, 'PROFILE_DATA_GET_ITEM_FAILED', '해당 프로필 정보를 가져 올 수 없음');
	insert into error values(1315, 1, 'PROFILE_DATA_NOT_FOUND', '프로필을 찾을 수 없음');
	insert into error values(1316, 1, 'PROFILE_BADA_GENIUS_LESSON_NOT_FOUND', '프로필의 Bada Genius 의 Lesson 정보를 찾을 수 없음');
	insert into error values(1401, 1, 'WEATHER_GET_GEO_INFO_FAILED', 'GEO 서버에서 정보를 얻을 수 없음');
	insert into error values(1402, 1, 'WEATHER_PARSE_GEO_INFO_FAILED', 'GEO 서버에서 받은 정보가 잘못됨');
	insert into error values(1403, 1, 'WEATHER_GET_ITEM_FAILED', '날씨 정보를 가져 올 수 없음');
	insert into error values(1404, 1, 'WEATHER_PUT_ITEM_FAILED', '날씨 정보를 넣을 수 없음');
	insert into error values(1405, 1, 'WEATHER_UPDATE_ITEM_FAILED', '날씨 정보를 갱신 할 수 없음');
	insert into error values(1501, 1, 'LEGACY_BADATALK_QUERY_ITEMS_FAILED', 'LegacyBadaTalk의 정보를 가져 올 수 없음');
	insert into error values(1502, 1, 'LEGACY_BADATALK_PUT_ITEM_FAILED', 'LegacyBadaTalk의 정보를 넣을 수 없음');
	insert into error values(1503, 1, 'LEGACY_BADATALK_TOO_MANY_DEVICES', '해당 디바이스에 속한 LegacyBadaTalk의 정보가 너무 많이 존재함');
	insert into error values(1601, 1, 'PAYMENT_RECEIPT_INVALID', 'Receipt가 유효하지 않음');
	insert into error values(1602, 1, 'PAYMENT_PUT_ITEM_FAILED', '구매정보를 넣을 수 없음');
	insert into error values(1603, 1, 'PAYMENT_UPDATE_ITEM_FAILED', '구매정보를 갱신 할 수 없음');
	insert into error values(1604, 1, 'PAYMENT_INIT_FAILED', '구매 처리 프로세스가 잘못됨');
	insert into error values(1605, 1, 'PAYMENT_RECEIPT_VALIDATE_FAILED', 'Receipt가 유효성 검사 실패');
	insert into error values(1606, 1, 'PAYMENT_RECEIPT_TRANSACTION_NOT_FOUND', '구매 항목이 존재하지 않음');
	insert into error values(1607, 1, 'PAYMENT_RECEIPT_INVALID_PRODUCT', '구매 항목이 유효하지 않음');
	insert into error values(1608, 1, 'PAYMENT_ALREADY_SUBS', '이미 구독 중');
	insert into error values(1701, 1, 'USER_GET_ITEM_FAILED', '이메일 정보를 가져 올 수 없음');
	insert into error values(1702, 1, 'USER_PUT_ITEM_FAILED', '이메일 정보를 넣을 수 없음');
	insert into error values(1703, 1, 'USER_UPDATE_ITEM_FAILED', '이메일 정보를 갱신 할 수 없음');
	insert into error values(1704, 1, 'USER_PASSWD_INVALID', '패스워드가 잘못됨');
	insert into error values(1705, 1, 'USER_EMAIL_INVALID', '이메일이 잘못됨');
	insert into error values(1706, 1, 'USER_NOT_FOUND', '이메일 정보를 찾을 수 없음');
	insert into error values(1707, 1, 'USER_DELETE_ITEM_FAILED', '이메일 정보를 삭제 할 수 없음');
	insert into error values(1801, 1, 'ACCEPT_TERMS_PUT_ITEM_FAILED', '약관 동의 테이블에 넣을 수 없음');
	insert into error values(1802, 1, 'ACCEPT_TERMS_DELETE_ITEM_FAILED', '약관 동의 테이블에서 정보를 삭제할 수 없음');
	insert into error values(1803, 1, 'ACCEPT_TERMS_UPDATE_ITEM_FAILED', '약관 동의 테이블의 정보를 갱신 할 수 없음');
	insert into error values(1804, 1, 'ACCEPT_TERMS_GET_ITEM_FAILED', '약관 동의 테이블에서 정보를 가져올 수 없음');
	insert into error values(1805, 1, 'ACCEPT_TERMS_ALREADY_EXIST', '약관 동의 정보가 이미 존재함');

create table message(message_mid INT PRIMARY KEY, version INT, enum_str VARCHAR(255));

	insert into message values(1101, 1, 'VERSION_CHECK_REQ');
	insert into message values(1102, 1, 'VERSION_CHECK_ACK');
	insert into message values(1103, 1, 'VERSION_CHECK_EMBED_REQ');
	insert into message values(1104, 1, 'VERSION_CHECK_EMBED_ACK');
	insert into message values(1201, 1, 'ACCOUNT_LOGIN_APPLE_REQ');
	insert into message values(1202, 1, 'ACCOUNT_LOGIN_APPLE_ACK');
	insert into message values(1203, 1, 'ACCOUNT_LOGIN_GOOGLE_REQ');
	insert into message values(1204, 1, 'ACCOUNT_LOGIN_GOOGLE_ACK');
	insert into message values(1205, 1, 'ACCOUNT_INFO_REQ');
	insert into message values(1206, 1, 'ACCOUNT_INFO_ACK');
	insert into message values(1207, 1, 'ACCOUNT_STAR_EARN_DAILY_REQ');
	insert into message values(1208, 1, 'ACCOUNT_STAR_EARN_DAILY_ACK');
	insert into message values(1209, 1, 'ACCOUNT_SUBS_UPDATE_REQ');
	insert into message values(1210, 1, 'ACCOUNT_SUBS_UPDATE_ACK');
	insert into message values(1211, 1, 'ACCOUNT_SAVE_OPTION_REQ');
	insert into message values(1212, 1, 'ACCOUNT_SAVE_OPTION_ACK');
	insert into message values(1213, 1, 'ACCOUNT_LOGIN_REQ');
	insert into message values(1214, 1, 'ACCOUNT_LOGIN_ACK');
	insert into message values(1215, 1, 'ACCOUNT_CHECK_EMAIL_REQ');
	insert into message values(1216, 1, 'ACCOUNT_CHECK_EMAIL_ACK');
	insert into message values(1217, 1, 'ACCOUNT_SEND_RESET_PW_REQ');
	insert into message values(1218, 1, 'ACCOUNT_SEND_RESET_PW_ACK');
	insert into message values(1219, 1, 'ACCOUNT_RESET_PW_COMPLETE_REQ');
	insert into message values(1220, 1, 'ACCOUNT_RESET_PW_COMPLETE_ACK');
	insert into message values(1221, 1, 'ACCOUNT_CHANGE_PW_REQ');
	insert into message values(1222, 1, 'ACCOUNT_CHANGE_PW_ACK');
	insert into message values(1223, 1, 'ACCOUNT_SEND_CHANGE_EMAIL_REQ');
	insert into message values(1224, 1, 'ACCOUNT_SEND_CHANGE_EMAIL_ACK');
	insert into message values(1225, 1, 'ACCOUNT_CHANGE_EMAIL_COMPLETE_REQ');
	insert into message values(1226, 1, 'ACCOUNT_CHANGE_EMAIL_COMPLETE_ACK');
	insert into message values(1227, 1, 'ACCOUNT_SIGN_UP_REQ');
	insert into message values(1228, 1, 'ACCOUNT_SIGN_UP_ACK');
	insert into message values(1229, 1, 'ACCOUNT_SIGN_UP_COMPLETE_REQ');
	insert into message values(1230, 1, 'ACCOUNT_SIGN_UP_COMPLETE_ACK');
	insert into message values(1231, 1, 'ACCOUNT_SIGN_UP_RE_REQ');
	insert into message values(1232, 1, 'ACCOUNT_SIGN_UP_RE_ACK');
	insert into message values(1233, 1, 'ACCOUNT_PROMOCODE_INFO_REQ');
	insert into message values(1234, 1, 'ACCOUNT_PROMOCODE_INFO_ACK');
	insert into message values(1235, 1, 'ACCOUNT_PROMOCODE_APPLY_REQ');
	insert into message values(1236, 1, 'ACCOUNT_PROMOCODE_APPLY_ACK');
	insert into message values(1237, 1, 'ACCOUNT_PROMOCODE_INFO_ALL_REQ');
	insert into message values(1238, 1, 'ACCOUNT_PROMOCODE_INFO_ALL_ACK');
	insert into message values(1239, 1, 'ACCOUNT_MEDIABOX_COUPON_SONGS_REQ');
	insert into message values(1240, 1, 'ACCOUNT_MEDIABOX_COUPON_SONGS_ACK');
	insert into message values(1241, 1, 'ACCOUNT_MEDIABOX_COUPON_BOOKS_REQ');
	insert into message values(1242, 1, 'ACCOUNT_MEDIABOX_COUPON_BOOKS_ACK');
	insert into message values(1243, 1, 'ACCOUNT_MEDIABOX_COUPON_ALL_REQ');
	insert into message values(1244, 1, 'ACCOUNT_MEDIABOX_COUPON_ALL_ACK');
	insert into message values(1245, 1, 'ACCOUNT_LOGIN_FOR_REFRESHTOKEN_REQ');
	insert into message values(1246, 1, 'ACCOUNT_LOGIN_FOR_REFRESHTOKEN_ACK');
	insert into message values(1301, 1, 'PROFILE_CREATE_REQ');
	insert into message values(1302, 1, 'PROFILE_CREATE_ACK');
	insert into message values(1303, 1, 'PROFILE_LIST_REQ');
	insert into message values(1304, 1, 'PROFILE_LIST_ACK');
	insert into message values(1305, 1, 'PROFILE_SELECT_REQ');
	insert into message values(1306, 1, 'PROFILE_SELECT_ACK');
	insert into message values(1307, 1, 'PROFILE_DELETE_REQ');
	insert into message values(1308, 1, 'PROFILE_DELETE_ACK');
	insert into message values(1309, 1, 'PROFILE_EDIT_REQ');
	insert into message values(1310, 1, 'PROFILE_EDIT_ACK');
	insert into message values(1311, 1, 'PROFILE_DELETE_EX_REQ');
	insert into message values(1312, 1, 'PROFILE_DELETE_EX_ACK');
	insert into message values(1313, 1, 'PROFILE_DATA_MERGE_REQ');
	insert into message values(1314, 1, 'PROFILE_DATA_MERGE_ACK');
	insert into message values(1315, 1, 'PROFILE_DATA_MERGE_LOCAL_REQ');
	insert into message values(1316, 1, 'PROFILE_DATA_MERGE_LOCAL_ACK');
	insert into message values(1317, 1, 'PROFILE_DATA_UPLOAD_REQ');
	insert into message values(1318, 1, 'PROFILE_DATA_UPLOAD_ACK');
	insert into message values(1401, 1, 'WEATHER_REPORT_INFO_REQ');
	insert into message values(1402, 1, 'WEATHER_REPORT_INFO_ACK');
	insert into message values(1501, 1, 'QUICK_CLIPS_UNLOCK_REQ');
	insert into message values(1502, 1, 'QUICK_CLIPS_UNLOCK_ACK');
	insert into message values(1503, 1, 'QUICK_CLIPS_LIST_UNLOCKED_REQ');
	insert into message values(1504, 1, 'QUICK_CLIPS_LIST_UNLOCKED_ACK');
	insert into message values(1505, 1, 'QUICK_CLIPS_REWARD_REQ');
	insert into message values(1506, 1, 'QUICK_CLIPS_REWARD_ACK');
	insert into message values(1507, 1, 'QUICK_CLIPS_LOG_PLAYING_REQ');
	insert into message values(1508, 1, 'QUICK_CLIPS_LOG_PLAYING_ACK');
	insert into message values(1509, 1, 'QUICK_CLIPS_SAVE_ALL_REQ');
	insert into message values(1510, 1, 'QUICK_CLIPS_SAVE_ALL_ACK');
	insert into message values(1511, 1, 'QUICK_CLIPS_LIST_UNLOCKED_EX_REQ');
	insert into message values(1512, 1, 'QUICK_CLIPS_LIST_UNLOCKED_EX_ACK');
	insert into message values(1513, 1, 'QUICK_CLIPS_STAR_EARN_DAILY_REQ');
	insert into message values(1514, 1, 'QUICK_CLIPS_STAR_EARN_DAILY_ACK');
	insert into message values(1601, 1, 'BOOKS_ADD_FAVORITES_REQ');
	insert into message values(1602, 1, 'BOOKS_ADD_FAVORITES_ACK');
	insert into message values(1603, 1, 'BOOKS_LIST_FAVORITES_REQ');
	insert into message values(1604, 1, 'BOOKS_LIST_FAVORITES_ACK');
	insert into message values(1605, 1, 'BOOKS_REMOVE_FAVORITES_REQ');
	insert into message values(1606, 1, 'BOOKS_REMOVE_FAVORITES_ACK');
	insert into message values(1607, 1, 'BOOKS_LOG_PLAYING_REQ');
	insert into message values(1608, 1, 'BOOKS_LOG_PLAYING_ACK');
	insert into message values(1609, 1, 'BOOKS_SAVE_ALL_REQ');
	insert into message values(1610, 1, 'BOOKS_SAVE_ALL_ACK');
	insert into message values(1611, 1, 'BOOKS_LIST_FAVORITES_EX_REQ');
	insert into message values(1612, 1, 'BOOKS_LIST_FAVORITES_EX_ACK');
	insert into message values(1701, 1, 'SONGS_ADD_FAVORITES_REQ');
	insert into message values(1702, 1, 'SONGS_ADD_FAVORITES_ACK');
	insert into message values(1703, 1, 'SONGS_LIST_FAVORITES_REQ');
	insert into message values(1704, 1, 'SONGS_LIST_FAVORITES_ACK');
	insert into message values(1705, 1, 'SONGS_REMOVE_FAVORITES_REQ');
	insert into message values(1706, 1, 'SONGS_REMOVE_FAVORITES_ACK');
	insert into message values(1707, 1, 'SONGS_LOG_PLAYING_REQ');
	insert into message values(1708, 1, 'SONGS_LOG_PLAYING_ACK');
	insert into message values(1709, 1, 'SONGS_SAVE_ALL_REQ');
	insert into message values(1710, 1, 'SONGS_SAVE_ALL_ACK');
	insert into message values(1711, 1, 'SONGS_LIST_FAVORITES_EX_REQ');
	insert into message values(1712, 1, 'SONGS_LIST_FAVORITES_EX_ACK');
	insert into message values(1801, 1, 'LEGACY_BADATALK_REGISTER_REQ');
	insert into message values(1802, 1, 'LEGACY_BADATALK_REGISTER_ACK');
	insert into message values(1901, 1, 'PAYMENT_RESULT_REQ');
	insert into message values(1902, 1, 'PAYMENT_RESULT_ACK');
	insert into message values(2101, 1, 'CADETS_LIST_UNLOCKED_REQ');
	insert into message values(2102, 1, 'CADETS_LIST_UNLOCKED_ACK');
	insert into message values(2103, 1, 'CADETS_UNLOCK_REQ');
	insert into message values(2104, 1, 'CADETS_UNLOCK_ACK');
	insert into message values(2105, 1, 'CADETS_SEASON_UNLOCK_REQ');
	insert into message values(2106, 1, 'CADETS_SEASON_UNLOCK_ACK');
	insert into message values(2107, 1, 'CADETS_SEND_EMAIL_REQ');
	insert into message values(2108, 1, 'CADETS_SEND_EMAIL_ACK');
	insert into message values(2109, 1, 'CADETS_EPISODE_UNLOCK_START_REQ');
	insert into message values(2110, 1, 'CADETS_EPISODE_UNLOCK_START_ACK');
	insert into message values(2111, 1, 'CADETS_EPISODE_UNLOCK_FINISH_REQ');
	insert into message values(2112, 1, 'CADETS_EPISODE_UNLOCK_FINISH_ACK');
	insert into message values(2113, 1, 'CADETS_SEASON_UNLOCK_START_REQ');
	insert into message values(2114, 1, 'CADETS_SEASON_UNLOCK_START_ACK');
	insert into message values(2115, 1, 'CADETS_SEASON_UNLOCK_FINISH_REQ');
	insert into message values(2116, 1, 'CADETS_SEASON_UNLOCK_FINISH_ACK');
	insert into message values(2117, 1, 'CADETS_LOG_PLAYING_REQ');
	insert into message values(2118, 1, 'CADETS_LOG_PLAYING_ACK');
	insert into message values(2201, 1, 'BADA_RHYME_LIST_REQ');
	insert into message values(2202, 1, 'BADA_RHYME_LIST_ACK');
	insert into message values(2203, 1, 'BADA_RHYME_LESSON_SEED_REQ');
	insert into message values(2204, 1, 'BADA_RHYME_LESSON_SEED_ACK');
	insert into message values(2205, 1, 'BADA_RHYME_COMPLETE_EXERCISE_REQ');
	insert into message values(2206, 1, 'BADA_RHYME_COMPLETE_EXERCISE_ACK');
	insert into message values(2207, 1, 'BADA_RHYME_COMPLETE_LESSON_REQ');
	insert into message values(2208, 1, 'BADA_RHYME_COMPLETE_LESSON_ACK');
	insert into message values(2209, 1, 'BADA_RHYME_LESSON_INIT_REQ');
	insert into message values(2210, 1, 'BADA_RHYME_LESSON_INIT_ACK');
	insert into message values(2211, 1, 'BADA_RHYME_SAVE_LESSON_REQ');
	insert into message values(2212, 1, 'BADA_RHYME_SAVE_LESSON_ACK');
	insert into message values(2213, 1, 'BADA_RHYME_SAVE_ALL_LESSON_REQ');
	insert into message values(2214, 1, 'BADA_RHYME_SAVE_ALL_LESSON_ACK');
	insert into message values(2215, 1, 'BADA_RHYME_LIST_EX_REQ');
	insert into message values(2216, 1, 'BADA_RHYME_LIST_EX_ACK');
	insert into message values(2301, 1, 'EMAIL_REGISTER_REQ');
	insert into message values(2302, 1, 'EMAIL_REGISTER_ACK');
	insert into message values(2303, 1, 'EMAIL_RE_REGISTER_REQ');
	insert into message values(2304, 1, 'EMAIL_RE_REGISTER_ACK');
	insert into message values(2305, 1, 'EMAIL_SYNCHRONIZE_REQ');
	insert into message values(2306, 1, 'EMAIL_SYNCHRONIZE_ACK');
	insert into message values(2307, 1, 'EMAIL_CONNECT_REQ');
	insert into message values(2308, 1, 'EMAIL_CONNECT_ACK');
	insert into message values(2401, 1, 'BADA_GENIUS_LIST_REQ');
	insert into message values(2402, 1, 'BADA_GENIUS_LIST_ACK');
	insert into message values(2403, 1, 'BADA_GENIUS_LIST_ALL_REQ');
	insert into message values(2404, 1, 'BADA_GENIUS_LIST_ALL_ACK');
	insert into message values(2405, 1, 'BADA_GENIUS_LIST_ALL_EX_REQ');
	insert into message values(2406, 1, 'BADA_GENIUS_LIST_ALL_EX_ACK');
	insert into message values(2407, 1, 'BADA_GENIUS_LESSON_SEED_REQ');
	insert into message values(2408, 1, 'BADA_GENIUS_LESSON_SEED_ACK');
	insert into message values(2409, 1, 'BADA_GENIUS_COMPLETE_EXERCISE_REQ');
	insert into message values(2410, 1, 'BADA_GENIUS_COMPLETE_EXERCISE_ACK');
	insert into message values(2411, 1, 'BADA_GENIUS_COMPLETE_LESSON_REQ');
	insert into message values(2412, 1, 'BADA_GENIUS_COMPLETE_LESSON_ACK');
	insert into message values(2413, 1, 'BADA_GENIUS_LESSON_INIT_REQ');
	insert into message values(2414, 1, 'BADA_GENIUS_LESSON_INIT_ACK');
	insert into message values(2501, 1, 'BADA_GENIUS2_LIST_REQ');
	insert into message values(2502, 1, 'BADA_GENIUS2_LIST_ACK');
	insert into message values(2503, 1, 'BADA_GENIUS2_LIST_ALL_REQ');
	insert into message values(2504, 1, 'BADA_GENIUS2_LIST_ALL_ACK');
	insert into message values(2505, 1, 'BADA_GENIUS2_LIST_ALL_EX_REQ');
	insert into message values(2506, 1, 'BADA_GENIUS2_LIST_ALL_EX_ACK');
	insert into message values(2507, 1, 'BADA_GENIUS2_COMPLETE_EXERCISE_REQ');
	insert into message values(2508, 1, 'BADA_GENIUS2_COMPLETE_EXERCISE_ACK');
	insert into message values(2509, 1, 'BADA_GENIUS2_COMPLETE_LESSON_REQ');
	insert into message values(2510, 1, 'BADA_GENIUS2_COMPLETE_LESSON_ACK');
	insert into message values(2601, 1, 'BADA_GENIUS2_STEM_LIST_REQ');
	insert into message values(2602, 1, 'BADA_GENIUS2_STEM_LIST_ACK');
	insert into message values(2603, 1, 'BADA_GENIUS2_STEM_LIST_ALL_REQ');
	insert into message values(2604, 1, 'BADA_GENIUS2_STEM_LIST_ALL_ACK');
	insert into message values(2605, 1, 'BADA_GENIUS2_STEM_LIST_ALL_EX_REQ');
	insert into message values(2606, 1, 'BADA_GENIUS2_STEM_LIST_ALL_EX_ACK');
	insert into message values(2607, 1, 'BADA_GENIUS2_STEM_COMPLETE_EXERCISE_REQ');
	insert into message values(2608, 1, 'BADA_GENIUS2_STEM_COMPLETE_EXERCISE_ACK');
	insert into message values(2609, 1, 'BADA_GENIUS2_STEM_COMPLETE_LESSON_REQ');
	insert into message values(2610, 1, 'BADA_GENIUS2_STEM_COMPLETE_LESSON_ACK');
	insert into message values(2701, 1, 'BADA_RHYME2_LIST_REQ');
	insert into message values(2702, 1, 'BADA_RHYME2_LIST_ACK');
	insert into message values(2703, 1, 'BADA_RHYME2_COMPLETE_EXERCISE_REQ');
	insert into message values(2704, 1, 'BADA_RHYME2_COMPLETE_EXERCISE_ACK');
	insert into message values(2705, 1, 'BADA_RHYME2_COMPLETE_LESSON_REQ');
	insert into message values(2706, 1, 'BADA_RHYME2_COMPLETE_LESSON_ACK');
	insert into message values(2707, 1, 'BADA_RHYME2_LIST_EX_REQ');
	insert into message values(2708, 1, 'BADA_RHYME2_LIST_EX_ACK');
	insert into message values(2801, 1, 'ACCEPT_TERMS_INFO_REQ');
	insert into message values(2802, 1, 'ACCEPT_TERMS_INFO_ACK');
	insert into message values(2803, 1, 'ACCEPT_TERMS_SAVE_REQ');
	insert into message values(2804, 1, 'ACCEPT_TERMS_SAVE_ACK');
	insert into message values(4001, 1, 'DASHBOARD_BOOK_LIST_REQ');
	insert into message values(4002, 1, 'DASHBOARD_BOOK_LIST_ACK');
	insert into message values(4003, 1, 'DASHBOARD_BOOK_ONE_REQ');
	insert into message values(4004, 1, 'DASHBOARD_BOOK_ONE_ACK');
	insert into message values(4005, 1, 'DASHBOARD_CLASSROOM_LESSONS_LIST_REQ');
	insert into message values(4006, 1, 'DASHBOARD_CLASSROOM_LESSONS_LIST_ACK');
	insert into message values(4007, 1, 'DASHBOARD_CLASSROOM_LESSONS_ONE_REQ');
	insert into message values(4008, 1, 'DASHBOARD_CLASSROOM_LESSONS_ONE_ACK');
	insert into message values(4009, 1, 'DASHBOARD_APPS_LIST_REQ');
	insert into message values(4010, 1, 'DASHBOARD_APPS_LIST_ACK');
	insert into message values(4011, 1, 'DASHBOARD_APPS_ONE_REQ');
	insert into message values(4012, 1, 'DASHBOARD_APPS_ONE_ACK');
	insert into message values(4013, 1, 'DASHBOARD_VIDEOS_LIST_REQ');
	insert into message values(4014, 1, 'DASHBOARD_VIDEOS_LIST_ACK');
	insert into message values(4015, 1, 'DASHBOARD_VIDEOS_ONE_REQ');
	insert into message values(4016, 1, 'DASHBOARD_VIDEOS_ONE_ACK');
	insert into message values(4017, 1, 'DASHBOARD_LEARNING_OUTCOMES_LIST_REQ');
	insert into message values(4018, 1, 'DASHBOARD_LEARNING_OUTCOMES_LIST_ACK');
	insert into message values(4019, 1, 'DASHBOARD_LEARNING_OUTCOMES_ONE_REQ');
	insert into message values(4020, 1, 'DASHBOARD_LEARNING_OUTCOMES_ONE_ACK');
	insert into message values(4021, 1, 'DASHBOARD_APPPROGRESS_REQ');
	insert into message values(4022, 1, 'DASHBOARD_APPPROGRESS_ACK');
	insert into message values(5001, 1, 'DATACOLLECTION_ALL_TOGETHER_REQ');
	insert into message values(5002, 1, 'DATACOLLECTION_ALL_TOGETHER_ACK');
	insert into message values(5003, 1, 'DATACOLLECTION_ALL_TOGETHER_V2_REQ');
	insert into message values(5004, 1, 'DATACOLLECTION_ALL_TOGETHER_V2_ACK');
	insert into message values(5101, 1, 'DATACOLLECTION_QUICK_CLIPS_UNLOCK_REQ');
	insert into message values(5102, 1, 'DATACOLLECTION_QUICK_CLIPS_UNLOCK_ACK');
	insert into message values(5103, 1, 'DATACOLLECTION_QUICK_CLIPS_REWARD_REQ');
	insert into message values(5104, 1, 'DATACOLLECTION_QUICK_CLIPS_REWARD_ACK');
	insert into message values(5105, 1, 'DATACOLLECTION_QUICK_CLIPS_PLAYING_REQ');
	insert into message values(5106, 1, 'DATACOLLECTION_QUICK_CLIPS_PLAYING_ACK');
	insert into message values(5201, 1, 'DATACOLLECTION_BOOKS_ADD_FAVORITES_REQ');
	insert into message values(5202, 1, 'DATACOLLECTION_BOOKS_ADD_FAVORITES_ACK');
	insert into message values(5203, 1, 'DATACOLLECTION_BOOKS_REMOVE_FAVORITES_REQ');
	insert into message values(5204, 1, 'DATACOLLECTION_BOOKS_REMOVE_FAVORITES_ACK');
	insert into message values(5205, 1, 'DATACOLLECTION_BOOKS_PLAYING_REQ');
	insert into message values(5206, 1, 'DATACOLLECTION_BOOKS_PLAYING_ACK');
	insert into message values(5301, 1, 'DATACOLLECTION_SONGS_ADD_FAVORITES_REQ');
	insert into message values(5302, 1, 'DATACOLLECTION_SONGS_ADD_FAVORITES_ACK');
	insert into message values(5303, 1, 'DATACOLLECTION_SONGS_REMOVE_FAVORITES_REQ');
	insert into message values(5304, 1, 'DATACOLLECTION_SONGS_REMOVE_FAVORITES_ACK');
	insert into message values(5305, 1, 'DATACOLLECTION_SONGS_PLAYING_REQ');
	insert into message values(5306, 1, 'DATACOLLECTION_SONGS_PLAYING_ACK');
	insert into message values(5401, 1, 'DATACOLLECTION_CADETS_PLAYING_REQ');
	insert into message values(5402, 1, 'DATACOLLECTION_CADETS_PLAYING_ACK');
	insert into message values(5403, 1, 'DATACOLLECTION_RHYME_EXERCISE_REQ');
	insert into message values(5404, 1, 'DATACOLLECTION_RHYME_EXERCISE_ACK');
	insert into message values(5405, 1, 'DATACOLLECTION_RHYME_LESSON_REQ');
	insert into message values(5406, 1, 'DATACOLLECTION_RHYME_LESSON_ACK');
	insert into message values(5501, 1, 'DATACOLLECTION_COMMON_EXERCISE_REQ');
	insert into message values(5502, 1, 'DATACOLLECTION_COMMON_EXERCISE_ACK');
	insert into message values(9001, 1, 'CHEAT_INIT_REQ');
	insert into message values(9002, 1, 'CHEAT_INIT_ACK');
	insert into message values(9003, 1, 'CHEAT_GET_INFO_ID_REQ');
	insert into message values(9004, 1, 'CHEAT_GET_INFO_ID_ACK');
	insert into message values(9005, 1, 'CHEAT_GET_INFO_EMAIL_REQ');
	insert into message values(9006, 1, 'CHEAT_GET_INFO_EMAIL_ACK');
	insert into message values(9007, 1, 'CHEAT_DELETE_ALL_REQ');
	insert into message values(9008, 1, 'CHEAT_DELETE_ALL_ACK');
	insert into message values(9009, 1, 'CHEAT_PROMOCODE_INPUT_REQ');
	insert into message values(9010, 1, 'CHEAT_PROMOCODE_INPUT_ACK');
	insert into message values(9011, 1, 'CHEAT_PROMOCODE_INIT_REQ');
	insert into message values(9012, 1, 'CHEAT_PROMOCODE_INIT_ACK');
	insert into message values(9013, 1, 'CHEAT_PROMOCODE_CREATE_REQ');
	insert into message values(9014, 1, 'CHEAT_PROMOCODE_CREATE_ACK');
	insert into message values(9015, 1, 'CHEAT_PROMOCODE_DELETE_REQ');
	insert into message values(9016, 1, 'CHEAT_PROMOCODE_DELETE_ACK');
	insert into message values(9017, 1, 'CHEAT_CHECK_SESSION_REQ');
	insert into message values(9018, 1, 'CHEAT_CHECK_SESSION_ACK');
	insert into message values(9019, 1, 'CHEAT_GENERATE_SESSION_REQ');
	insert into message values(9020, 1, 'CHEAT_GENERATE_SESSION_ACK');
	insert into message values(9021, 1, 'CHEAT_QUICK_CLIPS_UPDATE_STAR_REQ');
	insert into message values(9022, 1, 'CHEAT_QUICK_CLIPS_UPDATE_STAR_ACK');
	insert into message values(9023, 1, 'CHEAT_UPDATE_TIME_TYPE_REQ');
	insert into message values(9024, 1, 'CHEAT_UPDATE_TIME_TYPE_ACK');
	insert into message values(9025, 1, 'CHEAT_GENIUS_INIT_DATA_REQ');
	insert into message values(9026, 1, 'CHEAT_GENIUS_INIT_DATA_ACK');
	insert into message values(9027, 1, 'CHEAT_CHANGE_GENDER_REQ');
	insert into message values(9028, 1, 'CHEAT_CHANGE_GENDER_ACK');
	insert into message values(9029, 1, 'CHEAT_EXEC_SCRIPT_REQ');
	insert into message values(9030, 1, 'CHEAT_EXEC_SCRIPT_ACK');

create table rhyme_card_memory(rhyme_card_memory_mid INT PRIMARY KEY, version INT, card_memory_sets INT, sound_BG VARCHAR(255), card_memory_keyword TEXT, card_memory_img TEXT, sound_allert VARCHAR(255), sound_correct VARCHAR(255), sound_wrong VARCHAR(255), card_memory_keyword_audio TEXT, sound_effect TEXT, intro_sentence VARCHAR(255), intro_sentence_audio VARCHAR(255), outro_sentence TEXT, outro_sentence_audio TEXT);

	insert into rhyme_card_memory values(20001, 1, 4, 'bgm/genius_bgm_07', 'I;lives;you;we', 'card_memory_kwd_i;card_memory_kwd_lives;card_memory_kwd_you;card_memory_kwd_we', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_I;voice/jess_lives;voice/jess_you;voice/jess_we', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20002, 1, 4, 'bgm/genius_bgm_07', 'row;stream;merrily;down', 'card_memory_kwd_row;card_memory_kwd_stream;card_memory_kwd_merrily;card_memory_kwd_down', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_row;voice/jess_stream;voice/jess_merrily;voice/jess_down', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20003, 1, 4, 'bgm/genius_bgm_07', 'shoulders;toes;eyes;ear', 'card_memory_kwd_shoulders;card_memory_kwd_toes;card_memory_kwd_eyes;card_memory_kwd_ears', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_shoulders;voice/jess_toes;voice/jess_eyes;voice/jess_ears', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20004, 1, 4, 'bgm/genius_bgm_07', 'twinkle;wonder;sky;dark', 'card_memory_kwd_twinkle;card_memory_kwd_wonder;card_memory_kwd_sky;card_memory_kwd_dark', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_twinkle;voice/jess_wonder;voice/jess_sky;voice/jess_dark', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20005, 1, 6, 'bgm/genius_bgm_07', 'all;put together;fall;wall;men', 'card_memory_kwd_all;card_memory_kwd_put_together;card_memory_kwd_fall;card_memory_kwd_wall;card_memory_kwd_men', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_all;voice/jess_put_together;voice/jess_fall;voice/jess_wall;voice/jess_men', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20006, 1, 6, 'bgm/genius_bgm_07', 'go round;bush;morning;early;brush teeth', 'card_memory_kwd_go_round;card_memory_kwd_bush;card_memory_kwd_morning;card_memory_kwd_early;card_memory_kwd_brush_teeth', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_go_round;voice/jess_bush;voice/jess_morning;voice/jess_early;voice/jess_brush_teeth', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20007, 1, 6, 'bgm/genius_bgm_07', 'fell off;doctor;bumped;no more;bed', 'card_memory_kwd_fell_off;card_memory_kwd_doctor;card_memory_kwd_bumped;card_memory_kwd_no_more;card_memory_kwd_bed', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_fell_off;voice/jess_doctor;voice/jess_bumped;voice/jess_no_more;voice/jess_bed', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20008, 1, 6, 'bgm/genius_bgm_07', 'sunshine;again;itsy bitsy;water spout;washed out', 'card_memory_kwd_sunshine;card_memory_kwd_again;card_memory_kwd_itsy_bitsy;card_memory_kwd_water_spout;card_memory_kwd_washed_out', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_sunshine;voice/jess_again;voice/jess_itsy_bitsy;voice/jess_water_spout;voice/jess_washed_out', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20009, 1, 8, 'bgm/genius_bgm_07', 'know;looked;searched;leave;behind', 'card_memory_kwd_know;card_memory_kwd_looked;card_memory_kwd_searched;card_memory_kwd_leave;card_memory_kwd_behind', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_know;voice/jess_looked;voice/jess_searched;voice/jess_leave;voice/jess_behind', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20010, 1, 8, 'bgm/genius_bgm_07', 'school;had;children;laugh;play;teacher', 'card_memory_kwd_school;card_memory_kwd_had;card_memory_kwd_children;card_memory_kwd_laugh;card_memory_kwd_play;card_memory_kwd_teacher', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_school;voice/jess_had;voice/jess_children;voice/jess_laugh;voice/jess_play;voice/jess_teacher', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20011, 1, 8, 'bgm/genius_bgm_07', 'seven;eight;nine;thirteen;sixteen;twenty', 'card_memory_kwd_seven;card_memory_kwd_eight;card_memory_kwd_nine;card_memory_kwd_thirteen;card_memory_kwd_sixteen;card_memory_kwd_twenty', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_seven;voice/jess_eight;voice/jess_nine;voice/jess_thirteen;voice/jess_sixteen;voice/jess_twenty', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');
	insert into rhyme_card_memory values(20012, 1, 8, 'bgm/genius_bgm_07', 'off we go;early;puff;train;chug', 'card_memory_kwd_off_we_go;card_memory_kwd_early;card_memory_kwd_puff;card_memory_kwd_train;card_memory_kwd_chug', 'common_alarm', 'common_answer_correct', 'common_answer_wrong', 'voice/jess_off_we_go;voice/jess_early;voice/jess_puff;voice/jess_train;voice/jess_chug', 'cardmemory/audio_eff_card_shuffle;flashcard/audio_eff_card_flip;cardmemory/audio_eff_complete', 'Let''s remember cards!', 'voice/jess_lets_remember_cards', 'Awesome!;Good job!;Great job!;Great!;Perfect!;Nice!;Cool!;Fantastic!;Excellent!;Way to go!', 'voice/jess_awesome;voice/jess_goodjob;voice/jess_greatjob;voice/jess_great;voice/jess_perfect;voice/jess_nice;voice/jess_cool;voice/jess_fantastic;voice/jess_excellent;voice/jess_waytogo');

create table ui_text(ui_text_mid VARCHAR(255) PRIMARY KEY, version INT, ko_kr TEXT, en_us TEXT, fr_fr TEXT, es_es TEXT, zh_cn TEXT);

	insert into ui_text values('CANT_DELETE_PROFILE', 1, '1개 이상의 프로필을 가지고 있어야 됩니다.', 'You must have at least one profile.', 'You must have at least one profile.', 'You must have at least one profile.', '');
	insert into ui_text values('WEATHER_PARSE_GEO_INFO_FAILED', 1, 'GEO 서버에서 받은 정보가 잘못되었습니다.', 'Invalid information received from GEO server.', 'No information found.', 'No information found.', '');
	insert into ui_text values('WEATHER_GET_GEO_INFO_FAILED', 1, 'GEO 서버에서 정보를 얻을 수 없습니다.', 'Unable to get information from GEO server. ', 'No information found.', 'No information found.', '');
	insert into ui_text values('GOTOHOME', 1, 'HOME 이동', 'Options', 'Options', 'Options', '');
	insert into ui_text values('LEGACY_BADATALK_QUERY_ITEMS_FAILED', 1, 'Server Error(1501)', 'Server Error(1501)', 'Server Error(1501)', 'Server Error(1501)', 'Server Error(1501)');
	insert into ui_text values('LEGACY_BADATALK_PUT_ITEM_FAILED', 1, 'Server Error(1502)', 'Server Error(1502)', 'Server Error(1502)', 'Server Error(1502)', 'Server Error(1502)');
	insert into ui_text values('PAYMENT_RECEIPT_VALIDATE_FAILED', 1, 'Receipt가 유효성 검사 실패했습니다.', 'Unable to check validity of the receipt.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('PAYMENT_RECEIPT_INVALID', 1, 'Receipt가 유효하지 않습니다.', 'Invalid receipt.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('EMAIL_USED_ALREADY', 1, '가입된 이메일이 있습니다.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', '邮件地址已注册');
	insert into ui_text values('PRIVACY_POLICY', 1, '개인정보 보호법', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '隐私政策');
	insert into ui_text values('LAUNCHER_PURCHASE', 1, '결제 (구독)를 하기 위해선 홈으로 이동해야 합니다. 홈으로 이동하시겠습니까?', 'Please return home screen to purchase a subscription.', 'Please return home screen to purchase a subscription.', 'Please return home screen to purchase a subscription.', '');
	insert into ui_text values('PAYMENTDECLINED', 1, '결제가 거부되었습니다.', 'Your payment has been declined.', 'Your payment has been declined.', 'Your payment has been declined.', '');
	insert into ui_text values('INVALID_AUTH', 1, '계정 또는 암호가 올바르지 않습니다.', 'Invalid username or password', 'Invalid username or password', 'Invalid username or password', '无此账号');
	insert into ui_text values('CREATE_ACCOUNT', 1, '계정 생성', 'Create an account', 'Create an account', 'Create an account', '注册账号');
	insert into ui_text values('ACCOUNT_NOT_FOUND', 1, '계정 정보가 존재 하지 않습니다', 'Account information not found.', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('ACCOUNT_GET_ITEM_FAILED', 1, '계정 정보를 가져올 수 없습니다.', 'Unable to get account information. ', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('ACCOUNT_UPDATE_ITEM_FAILED', 1, '계정 정보를 갱신 할 수 없습니다.', 'Unable to update account information.', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('ACCOUNT_DELETE_ITEM_FAILED', 1, '계정 정보를 삭제 할 수 없습니다.', 'Unable to delete account.', 'Unable to delete account.', 'Unable to delete account.', '');
	insert into ui_text values('ACCOUNT_PUT_ITEM_FAILED', 1, '계정 정보에 넣을 수 없습니다.', 'Account information not found.', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('PAYMENT_INIT_FAILED', 1, '구매 처리 프로세스가 잘못되었습니다.', 'Purchasing process is invalid.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('PAYMENT_RECEIPT_INVALID_PRODUCT', 1, '구매 항목이 유효하지 않습니다.', 'Purchase item is invalid.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('PAYMENT_RECEIPT_TRANSACTION_NOT_FOUND', 1, '구매 항목이 존재하지 않습니다.', 'Purchase item does not exist. ', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('PURCHASINGUNAVAILABLE', 1, '구매를 할 수 없는 상태입니다.  ', 'The system purchasing feature is unavailable.', 'The system purchasing feature is unavailable.', 'The system purchasing feature is unavailable.', '');
	insert into ui_text values('PAYMENT_UPDATE_ITEM_FAILED', 1, '구매정보를 갱신 할 수 없습니다.', 'Unable to update purchase information. ', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('PAYMENT_PUT_ITEM_FAILED', 1, 'Server Error(1602)', 'Server Error(1602)', 'Server Error(1602)', 'Server Error(1602)', 'Server Error(1602)');
	insert into ui_text values('PRODUCTUNAVAILABLE', 1, '구매할 수 없는 상품입니다. 결제가 취소되었습니다.', 'This item is not available for purchase. Your payment has been cancelled.', 'This item is not available for purchase. Your payment has been cancelled.', 'This item is not available for purchase. Your payment has been cancelled.', '');
	insert into ui_text values('WEATHER_GET_ITEM_FAILED', 1, '날씨 정보를 가져 올 수 없습니다.', 'Unable to get weather information. ', 'No information found.', 'No information found.', '');
	insert into ui_text values('WEATHER_UPDATE_ITEM_FAILED', 1, '날씨 정보를 갱신 할 수 없습니다.', 'Unable to update weather information. ', 'No information found.', 'No information found.', '');
	insert into ui_text values('WEATHER_PUT_ITEM_FAILED', 1, 'Server Error(1404)', 'Server Error(1404)', 'Server Error(1404)', 'Server Error(1404)', 'Server Error(1404)');
	insert into ui_text values('CLICK_ON_THE_NUMBERS', 1, '낮은 숫자부터 높은 숫자 순서로 숫자를 눌러주세요.', 'Tap the numbers in ascending order.', 'Tap the numbers in ascending order.', 'Tap the numbers in ascending order.', '请以从低到高的数字点击');
	insert into ui_text values('SONGS', 1, '노래', 'Songs', 'Songs', 'Songs', '歌曲');
	insert into ui_text values('NEXT', 1, '다음', 'NEXT', 'NEXT', 'NEXT', '下一步');
	insert into ui_text values('CLOSE', 1, '닫기', 'Close', 'Close', 'Close', '关闭');
	insert into ui_text values('LAUNCHER_PURCHASE_FREEFINISH', 1, '더 많은 콘텐츠를 이용하시기 위해서는 결제 (구독)가 필요합니다.', 'Accessing additional content requires a subscription. ', 'Accessing additional content requires a subscription. ', 'Accessing additional content requires a subscription. ', '');
	insert into ui_text values('CELLULAR_DATA_CONTENT', 1, '데이터 사용 설정: 모바일 데이터 (3G 또는 LTE) 연결을 설정합니다. 
주의: 모바일 데이터 사용시 서비스 공급자로부터 요금이 부과될 수 있습니다.', 'Toggle on to allow the app to use cellular (3G or LTE) data. Data usage warning: Toggling this feature on may lead to additional data charges from your carrier dependent on your mobile plan.', 'Toggle on to prevent the app from using cellular (3G or LTE) data. 
Data usage warning: Toggling this feature off may lead to additional data charges from your carrier dependent on your mobile plan.', 'Toggle on to prevent the app from using cellular (3G or LTE) data. 
Data usage warning: Toggling this feature off may lead to additional data charges from your carrier dependent on your mobile plan.', '设置移动网络：设置移动网络（3G或者LTE）连接。
使用移动网络时运营商会收取额外费用。');
	insert into ui_text values('NOUSEWIFI', 1, '디바이스가 Wi-Fi 네트워크에 연결되어 있지 않아 컨텐츠를 다운로드할 수 없습니다. Settings > 옵션에서 모바일 데이터로 변경할 수 있습니다.', 'The app cannot download any content because it is not connected to Wi-Fi. You may allow downloading using cellular data by going Settings > Options.', 'The app cannot download any content because it is not connected to Wi-Fi. You may allow downloading using cellular data by going Settings > Options.', 'The app cannot download any content because it is not connected to Wi-Fi. You may allow downloading using cellular data by going Settings > Options.', '');
	insert into ui_text values('USEWIFI', 1, '디바이스가 Wi-Fi 네트워크에 연결되어 있지 않을 경우 자동으로 모바일 데이터로 전환됩니다. 모바일 데이터로 전환될 경우에는 서비스 공급자로부터 요금이 부과될 수 있습니다.', 'The app is not currently connected to Wi-Fi and will switch to using cellular data. You may incur extra costs from your cellular provider depending on your data plan.', 'The app is not currently connected to Wi-Fi and will switch to using cellular data. You may incur extra costs from your cellular provider depending on your data plan.', 'The app is not currently connected to Wi-Fi and will switch to using cellular data. You may incur extra costs from your cellular provider depending on your data plan.', '');
	insert into ui_text values('LAUNCHER', 1, '런처로 이동하시겠습니까?', 'Would you like to go to the launcher?', 'Would you like to go to the launcher?', 'Would you like to go to the launcher?', '');
	insert into ui_text values('LOGOUT', 1, '로그아웃', 'Sign Out', 'Sign Out', 'Sign Out', '退出');
	insert into ui_text values('LOGIN', 1, '로그인', 'Log in', 'Log in', 'Log in', '登录');
	insert into ui_text values('SIGN_IN', 1, '로그인', 'Sign In', 'Sign In', 'Sign In', '登录');
	insert into ui_text values('SYS_MASTER_DATA_INFO_NOT_FOUND', 1, '마스터 데이터 정보를 찾을 수 없습니다.', 'Unable to find master data information.', 'No information found.', 'No information found.', '');
	insert into ui_text values('SYS_MASTER_DATA_TABLE_NOT_FOUND', 1, '마스터 데이터 테이블을 찾을 수 없습니다.', 'Unable to find table information. ', 'No information found.', 'No information found.', '');
	insert into ui_text values('MY_PAGE', 1, '마이 페이지', 'My Page', 'My Page', 'My Page', '我的主页');
	insert into ui_text values('SYS_MSG_TYPE_INVALID', 1, '메시지타입이 유효하지 않습니다.', 'No information found.', 'No information found.', 'No information found.', '');
	insert into ui_text values('EMAIL', 1, 'E-mail Address', 'E-mail Address', 'E-mail Address', 'E-mail Address', '邮件');
	insert into ui_text values('NOUSEWIFI_BOTTOM', 1, '모바일 데이터로 변경할 경우 서비스 공급자로부터 요금이 부과될 수 있습니다.', 'You may incur extra costs from your cellular provider depending on your data plan.', 'You may incur extra costs from your cellular provider depending on your data plan.', 'You may incur extra costs from your cellular provider depending on your data plan.', '');
	insert into ui_text values('FORGOT_PASSWORD', 1, '발송된 이메일을 통해 비밀번호를 변경하십시오.', 'Please change your password via email.', 'Please change your password via email.', 'Please change your password via email.', '请通过已发送邮件更新密码');
	insert into ui_text values('VERSION_INFO', 1, '버전 정보', 'Version Info.', 'Version Info.', 'Version Info.', '版本信息');
	insert into ui_text values('BUTTON', 1, '버튼', 'button', 'button', 'button', 'button');
	insert into ui_text values('PARENTS_GUIDE', 1, '부모님 가이드', 'Parent''s Guide', 'Parent''s Guide', 'Parent''s Guide', '父母指导');
	insert into ui_text values('PASSWORD', 1, '비밀번호', 'Password', 'Password', 'Password', '密码');
	insert into ui_text values('PORGOT_PASSWORD', 1, '비밀번호 찾기', 'Did you forget your password?', 'Did you forget your password?', 'Did you forget your password?', '忘记密码？');
	insert into ui_text values('USERCANCELLED', 1, '사용자에 의해 결제가 취소되었습니다.', 'The payment has been cancelled by the user.', 'The payment has been cancelled by the user.', 'The payment has been cancelled by the user.', '');
	insert into ui_text values('NEW_PASSWORD', 1, '새 비밀번호', 'New Password', 'New Password', 'New Password', '新密码');
	insert into ui_text values('NEWEST_VERSION', 1, '새로운 버전', 'Latest Version', 'Latest Version', 'Latest Version', '最新版本');
	insert into ui_text values('PLEASE_ENTER_YOUR_BORN', 1, '생일을 입력해 주세요.', 'Enter the learner''s year of birth.', 'Enter the learner''s year of birth.', 'Enter the learner''s year of birth.', '请输入生日');
	insert into ui_text values('SERVER_INSPECT', 1, '서비스 점검중입니다.', 'The system is under maintenance.', 'The system is under maintenance.', 'The system is under maintenance.', '');
	insert into ui_text values('CADETS_WANT_BUY_EPISODE', 1, '선택하신 에피소드를 구매하시겠습니까?', 'Do you want to purchase the selected episode?', 'Do you want to purchase the selected episode?', 'Do you want to purchase the selected episode?', '');
	insert into ui_text values('SUC_DELETE_PROFILE', 1, '선택하신 프로필이 삭제되었습니다.', 'The selected profile has been deleted.', 'The selected profile has been deleted.', 'The selected profile has been deleted.', '');
	insert into ui_text values('LAUNCHER_SUB', 1, '성공적으로 메일이 발송 되었습니다.', 'Successfully send e-mail', 'Successfully send e-mail', 'Successfully send e-mail', '');
	insert into ui_text values('PLEASE_SELECT_GENDER', 1, '성별을 입력해 주세요.', 'Select the learner''s gender.', 'Select the learner''s gender.', 'Select the learner''s gender.', '请选择性别');
	insert into ui_text values('SYS_SESSION_REQUIRED', 1, '세션 정보가 없거나 잘못되었습니다.', 'No information found.', 'No information found.', 'No information found.', '');
	insert into ui_text values('ACCOUNT_OS_GET_ITEM_FAILED', 1, '스토어 계정 정보를 가져올 수 없습니다.', 'Unable to get app store account information. ', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('ACCOUNT_OS_UPDATE_ITEM_FAILED', 1, '스토어 계정 정보를 갱신 할 수 없습니다.', 'Unable to update app store account information. ', 'Account information not found.', 'Account information not found.', '');
	insert into ui_text values('ACCOUNT_OS_PUT_ITEM_FAILED', 1, 'Server Error(1206)', 'Server Error(1206)', 'Server Error(1206)', 'Server Error(1206)', 'Server Error(1206)');
	insert into ui_text values('ACCOUNT_OS_DELETE_ITEM_FAILED', 1, 'Server Error(1207)', 'Server Error(1207)', 'Server Error(1207)', 'Server Error(1207)', 'Server Error(1207)');
	insert into ui_text values('CADETS_PURCHASE_SE_SUCC', 1, '시즌구매가 완료되었습니다.', 'You have successfully purchased this item.', 'You have successfully purchased this item.', 'You have successfully purchased this item.', '');
	insert into ui_text values('CADETS_PURCHASE_SE_FAIL', 1, '시즌구매가 완료되지 않았습니다.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('CADETS_WANT_BUY_SEASON', 1, '시즌권을 구매하시겠습니까?', 'Do you want to purchase the selected season?', 'Do you want to purchase the selected season?', 'Do you want to purchase the selected season?', '');
	insert into ui_text values('NO', 1, '아니요', 'No', 'No', 'No', '');
	insert into ui_text values('KID_LOCK', 1, '아이 지킴이', 'Kids Lock', 'Kids Lock', 'Kids Lock', '儿童锁');
	insert into ui_text values('SYS_NOT_ALLOWED', 1, '아직 접근 할 수 없는 요청입니다.', 'Unavailable request.', 'No information found.', 'No information found.', '');
	insert into ui_text values('UNKNOWN', 1, '알 수 없는 오류가 발생했습니다.', 'Unknown error occurred.', 'Unknown error occurred.', 'Unknown error occurred.', '');
	insert into ui_text values('PASSWORD_ERROR', 1, '암호가 올바르지 않습니다.', 'You have entered the incorrect password.', 'You have entered the incorrect password.', 'You have entered the incorrect password.', '');
	insert into ui_text values('LANGUAGE', 1, '언어', 'Menu Language', 'Menu Language', 'Menu Language', '语言');
	insert into ui_text values('PLEASE_SELECT_LANGUAGE', 1, '언어를 선택해 주세요.', 'Select your preferred language.', 'Select your preferred language.', 'Select your preferred language.', '请选择语言');
	insert into ui_text values('CADETS_PURCHASE_EP_SUCC', 1, '에피소드 구매가 완료되었습니다.', 'You have successfully purchased this item.', 'You have successfully purchased this item.', 'You have successfully purchased this item.', '');
	insert into ui_text values('CADETS_PURCHASE_EP_FAIL', 1, '에피소드 구매가 완료되지 않았습니다.', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', 'You have failed to purchase this item. ', '');
	insert into ui_text values('YES', 1, '예', 'Yes', 'Yes', 'Yes', '');
	insert into ui_text values('OPTION', 1, '옵션', 'Options', 'Options', 'Options', '设置');
	insert into ui_text values('SIGNATUREINVALID', 1, '유효하지 않은 서명입니다. 결제가 취소되었습니다.', 'Invalid signature. Your payment has been cancelled.', 'Invalid signature. Your payment has been cancelled.', 'Invalid signature. Your payment has been cancelled.', '');
	insert into ui_text values('SYS_ALREADY_EXIST', 1, '이 이메일에 연결된 스토어 계정이 존재합니다.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', '');
	insert into ui_text values('NAME_EMPTY', 1, '이름을 입력해 주세요.', 'Please enter the learner''s name.', 'Please enter the learner''s name.', 'Please enter the learner''s name.', '请输入姓名');
	insert into ui_text values('LAUNCHER_EMAIL', 1, '이메일 등록이 필요합니다. 이메일을 등록하기 위해선 홈으로 이동해야 합니다. 홈으로 이동하시겠습니까?', 'This function requires you to register your e-mail address. Please return to the home screen to register.', 'This function requires you to register your e-mail address. Please return to the home screen to register.', 'This function requires you to register your e-mail address. Please return to the home screen to register.', '');
	insert into ui_text values('CADETS_EMAIL_SUCCESS', 1, '이메일 전송이 완료되었습니다.', 'The lesson plan for this episode has been sent to the e-mail address associated with your account. Please check your inbox.', 'The lesson plan for this episode has been sent to the e-mail address associated with your account. Please check your inbox.', 'The lesson plan for this episode has been sent to the e-mail address associated with your account. Please check your inbox.', '');
	insert into ui_text values('CADETS_EMAIL_FAIL', 1, '이메일 주소가 없거나 잘못된 형식입니다. 다시 시도해 주세요.', 'E-mail address format error. Please check and try again.', 'E-mail address format error. Please check and try again.', 'E-mail address format error. Please check and try again.', '');
	insert into ui_text values('SYS_EMAIL_REQUIRED', 1, '이메일 정보가 없습니다.', 'Email information not found.', 'Email information not found.', 'Email information not found.', '');
	insert into ui_text values('USER_GET_ITEM_FAILED', 1, '이메일 정보를 가져 올 수 없습니다.', 'Unable to get email information.', 'No user information found.', 'No user information found.', '');
	insert into ui_text values('USER_UPDATE_ITEM_FAILED', 1, '이메일 정보를 갱신 할 수 없습니다.', 'Unable to update email information. ', 'No user information found.', 'No user information found.', '');
	insert into ui_text values('USER_PUT_ITEM_FAILED', 1, 'Server Error(1702)', 'Server Error(1702)', 'Server Error(1702)', 'Server Error(1702)', 'Server Error(1702)');
	insert into ui_text values('USER_DELETE_ITEM_FAILED', 1, '이메일 정보를 삭제 할 수 없습니다.', 'Unable to delete email information.', 'Unable to delete email information.', 'Unable to delete email information.', '');
	insert into ui_text values('USER_NOT_FOUND', 1, '이메일 정보를 찾을 수 없습니다.', 'No user information found.', 'No user information found.', 'No user information found.', '');
	insert into ui_text values('EMAIL_EMPTY', 1, '이메일을 입력해주세요.', 'Please enter your email.', 'Please enter your email.', 'Please enter your email.', '请输入邮件地址');
	insert into ui_text values('EMAIL_RE_ENTER', 1, '이메일을 다시 입력해주세요.', 'Please re-enter your email.', 'Please re-enter your email.', 'Please re-enter your email.', '');
	insert into ui_text values('EMAIL_NOT_VERIFIED', 1, '이메일을 확인 하십시오.', 'Your e-mail address has not been verified.', 'Your e-mail address has not been verified.', 'Your e-mail address has not been verified.', '请确认邮件');
	insert into ui_text values('EMAIL_INVALID', 1, '이메일이 잘못되었습니다.', 'Please check to make sure you''ve entered a valid e-mail address.', 'Please check to make sure you''ve entered a valid e-mail address.', 'Please check to make sure you''ve entered a valid e-mail address.', '邮件地址错误');
	insert into ui_text values('USER_EMAIL_INVALID', 1, '이메일이 잘못되었습니다.', 'Please check to make sure you''ve entered a valid e-mail address.', 'Please check to make sure you''ve entered a valid e-mail address.', 'Please check to make sure you''ve entered a valid e-mail address.', '');
	insert into ui_text values('EXISTINGPURCHASEPENDING', 1, '이미 결제된 상품입니다. 결제가 취소되었습니다.', 'You have already purchased this item. Your payment has been cancelled.', 'You have already purchased this item. Your payment has been cancelled.', 'You have already purchased this item. Your payment has been cancelled.', '');
	insert into ui_text values('SYS_EMAIL_ALREADY_IN_USE', 1, '이미 사용중인 이메일입니다.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', 'There is an account already associated with this e-mail address.', '');
	insert into ui_text values('PBT_FREE_EVENT', 1, '이벤트 기간동안 무료로 사용하실 수 있습니다.', 'Free during the event.', 'Free during the event.', 'Free during the event.', '');
	insert into ui_text values('PREVIOUS_LESSON', 1, '이전 학습을 완료하세요.', 'You must finish the current lesson before unlocking the next lesson.', 'You must finish the current lesson before unlocking the next lesson.', 'You must finish the current lesson before unlocking the next lesson.', '');
	insert into ui_text values('DNS_FAILURE', 1, '인터넷 연결이 원활하지 않습니다.', 'The application is unable to connect to the internet.', 'The application is unable to connect to the internet.', 'The application is unable to connect to the internet.', '网络连接不稳定');
	insert into ui_text values('DNS_FAILURE_RECONNECT', 1, '인터넷 연결이 원활하지 않습니다. 다시 연결하시겠습니까?', 'The application is unable to connect to the internet. Please reconnect.', 'The application is unable to connect to the internet. Please reconnect.', 'The application is unable to connect to the internet. Please reconnect.', '');
	insert into ui_text values('DO_YOU_WANT_TO_RESET', 1, '입력한 정보를 초기화 하시겠습니까?', 'Are you sure you want to reset the information?', 'Are you sure you want to reset the information?', 'Are you sure you want to reset the information?', '');
	insert into ui_text values('DUPLICATETRANSACTION', 1, '중복 구매로 인해 결제가 취소되었습니다.', 'Too many purchases requests has been submitted. Your payment has been cancelled. Please try again.', 'Too many purchases requests has been submitted. Your payment has been cancelled. Please try again.', 'Too many purchases requests has been submitted. Your payment has been cancelled. Please try again.', '');
	insert into ui_text values('NEW_VERSION', 1, '최신버전이 업데이트 되었습니다. 업데이트 후 이용하시기 바랍니다. ', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', '');
	insert into ui_text values('SYS_VERSION_UPGRADE_REQUIRED', 1, '최신버전이 업데이트 되었습니다. 업데이트 후 이용하시기 바랍니다. ', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', '');
	insert into ui_text values('CANCEL', 1, '취소', 'Cancel', 'Cancel', 'Cancel', '取消');
	insert into ui_text values('QUICKCLIP_NO_CATEGORY', 1, '카테고리에 해당하는 학습 영상이 없습니다.', 'There are no videos available for this category.', 'There are no videos available for this category.', 'There are no videos available for this category.', '');
	insert into ui_text values('SYS_PARAM_REQUIRED', 1, '파라미터가 없거나 잘못되었습니다.', 'No information found.', 'No information found.', 'No information found.', '');
	insert into ui_text values('USER_PASSWD_INVALID', 1, '이메일 주소나 패스워드가 잘못되었습니다. 다시 시도해주세요.', 'Invalid email address or Password. Please try again.', 'Invalid email address or Password. Please try again.', 'Invalid email address or Password. Please try again.', '');
	insert into ui_text values('PACKAGE_PURCHASE', 1, '패키지 구매', 'Purchase a Package', 'Purchase a Package', 'Purchase a Package', '按套装购买');
	insert into ui_text values('CHANGE_PROFILE', 1, '프로필 변경', 'Change profile', 'Change profile', 'Change profile', '个人信息更新');
	insert into ui_text values('PROFILE_CREATE', 1, '프로필 생성', 'Create Profile', 'Create Profile', 'Create Profile', '创建个人信息');
	insert into ui_text values('PROFILE_QUERY_ITEMS_FAILED', 1, '프로필 정보를 가져 올 수 없습니다.', 'Unable to get profile information. ', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PROFILE_UPDATE_ITEM_FAILED', 1, '프로필 정보를 갱신 할 수 없습니다.', 'Unable to update profile information. ', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PROFILE_PUT_ITEM_FAILED', 1, 'Server Error(1302)', 'Server Error(1302)', 'Server Error(1302)', 'Server Error(1302)', 'Server Error(1302)');
	insert into ui_text values('PROFILE_DELETE_ITEM_FAILED', 1, '프로필 정보를 삭제 할 수 없습니다.', 'Unable to delete profile information.', 'Unable to delete profile information.', 'Unable to delete profile information.', '');
	insert into ui_text values('DO_YOU_WANT_TO_EDIT', 1, '프로필을 변경 하시겠습니까?', 'Do you want to save the changes to the profile?', 'Do you want to save the changes to the profile?', 'Do you want to save the changes to the profile?', '是否更新个人信息');
	insert into ui_text values('CADETS_GO_LAUNCHER_PROFILE', 1, '프로필을 변경하려면 홈으로 이동이 필요합니다. 홈으로 이동하시겠습니까?', 'Please return to the home screen to change your profile.', 'Please return to the home screen to change your profile.', 'Please return to the home screen to change your profile.', '');
	insert into ui_text values('LAUNCHER_PROFILE', 1, '프로필을 변경하려면 홈으로 이동이 필요합니다. 홈으로 이동하시겠습니까?', 'Please return to the home screen to change your profile.', 'Please return to the home screen to change your profile.', 'Please return to the home screen to change your profile.', '');
	insert into ui_text values('DO_YOU_WANT_PROFILE_DELETE', 1, '프로필을 삭제 하시겠습니까?', 'Are you sure you want to delete this profile?', 'Are you sure you want to delete this profile?', 'Are you sure you want to delete this profile?', '');
	insert into ui_text values('NOT_CHOICE_PROFILE', 1, '프로필을 선택해 주세요.', 'You have not selected a profile.', 'You have not selected a profile.', 'You have not selected a profile.', '请选择个人信息');
	insert into ui_text values('DO_YOU_WANT_TO_SAVE', 1, '프로필을 저장 하시겠습니까?', 'Save your profile?', 'Save your profile?', 'Save your profile?', '');
	insert into ui_text values('PROFILE_NOT_FOUND', 1, '프로필을 찾을 수 없습니다.', 'Unable to find profile information. ', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PROFILE_BADA_RHYME_LESSON_NOT_FOUND', 1, '프로필의 Bada Rhyme 의 Lesson 정보를 찾을 수 없습니다.', 'Unable to find profile''s Bada Rhyme Lesson information. ', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PROFILE_BOOKS_NOT_FOUND', 1, '프로필의 Books 의 정보를 찾을 수 없습니다.', 'Unable to find profile''s Books information.', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PROFILE_SONGS_NOT_FOUND', 1, '프로필의 Songs 의 정보를 찾을 수 없습니다.', 'Unable to find profile''s Songs information.', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('PLEASE_ENTER_YOUR_NAME', 1, '학습자의 이름을 입력해 주세요.', 'Enter the learner''s name.', 'Enter the learner''s name.', 'Enter the learner''s name.', '');
	insert into ui_text values('LEGACY_BADATALK_TOO_MANY_DEVICES', 1, '해당 디바이스에 속한 LegacyBadaTalk의 정보가 너무 많이 존재합니다.', 'No information found.', 'No information found.', 'No information found.', '');
	insert into ui_text values('PROFILE_GET_ITEM_FAILED', 1, '해당 프로필 정보를 가져 올 수 없습니다.', 'Profile information not found.', 'Profile information not found.', 'Profile information not found.', '');
	insert into ui_text values('NOT_PROFILE_CREATE', 1, '현재 로그인 상태가 아닙니다. 로그인후 다시 시도하여주십시오.', 'Not currently logged in state. Please try again after login.', 'Not currently logged in state. Please try again after login.', 'Not currently logged in state. Please try again after login.', '');
	insert into ui_text values('CURRENT_PASSWORD', 1, '현재 비밀번호', 'Current Password', 'Current Password', 'Current Password', '当前密码');
	insert into ui_text values('QUIT', 1, '홈 화면으로 이동하시겠습니까?', 'Do you want to go to the home screen?', 'Do you want to go to the home screen?', 'Do you want to go to the home screen?', '');
	insert into ui_text values('OK', 1, '확인', 'OK', 'OK', 'OK', '确认');
	insert into ui_text values('SIGN_UP', 1, '회원가입', 'Sign Up', 'Sign Up', 'Sign Up', '注册会员');
	insert into ui_text values('FAILED_EMAIL_INVALID', 1, '이메일 주소에 오류가 있습니다. 확인하고 다시 시도하십시오. ', 'There was an error with the e-mail address. Please check and try again.', 'There was an error with the e-mail address. Please check and try again.', 'There was an error with the e-mail address. Please check and try again.', '');
	insert into ui_text values('PRIVACY_POLICY_CONTENT', 1, 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers
you use, and information about the way you use the Application. What information does the Application obtain and how is it used? User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.
Does the Application collect precise real time location information of the device?
This Application does not collect precise information about the location of your mobile device. Do third parties see and/or have access to information obtained by the Application? Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement.
We may disclose Automatically Collected Information:
- as required by law, such as to comply with a subpoena, or similar legal process;
- when we believe in good faith that disclosure is necessary to
protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;
- with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. What are my opt-out rights? You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. Data Retention Policy, Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or
market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. Security We are concerned about safeguarding the confidentiality of your
information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can
prevent all potential security breaches. Changes
This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers
you use, and information about the way you use the Application. What information does the Application obtain and how is it used? User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.
Does the Application collect precise real time location information of the device?
This Application does not collect precise information about the location of your mobile device. Do third parties see and/or have access to information obtained by the Application? Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement.
We may disclose Automatically Collected Information:
- as required by law, such as to comply with a subpoena, or similar legal process;
- when we believe in good faith that disclosure is necessary to
protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;
- with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. What are my opt-out rights? You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. Data Retention Policy, Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or
market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. Security We are concerned about safeguarding the confidentiality of your
information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can
prevent all potential security breaches. Changes
This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers
you use, and information about the way you use the Application. What information does the Application obtain and how is it used? User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.
Does the Application collect precise real time location information of the device?
This Application does not collect precise information about the location of your mobile device. Do third parties see and/or have access to information obtained by the Application? Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement.
We may disclose Automatically Collected Information:
- as required by law, such as to comply with a subpoena, or similar legal process;
- when we believe in good faith that disclosure is necessary to
protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;
- with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. What are my opt-out rights? You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. Data Retention Policy, Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or
market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. Security We are concerned about safeguarding the confidentiality of your
information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can
prevent all potential security breaches. Changes
This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers
you use, and information about the way you use the Application. What information does the Application obtain and how is it used? User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.
Does the Application collect precise real time location information of the device?
This Application does not collect precise information about the location of your mobile device. Do third parties see and/or have access to information obtained by the Application? Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement.
We may disclose Automatically Collected Information:
- as required by law, such as to comply with a subpoena, or similar legal process;
- when we believe in good faith that disclosure is necessary to
protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;
- with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. What are my opt-out rights? You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. Data Retention Policy, Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or
market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. Security We are concerned about safeguarding the confidentiality of your
information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can
prevent all potential security breaches. Changes
This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', '');
	insert into ui_text values('PURCHASE_HISTORY', 1, '구독 정보를 복원하시려면 다음 정보를 입력하십시오. 암호는 회원가입 시 사용한 이메일 주소로 설정되었습니다. ', 'To restore your subscription, please enter the following information. Your password has been set to the e-mail address used during registration.', 'To restore your subscription, please enter the following information. Your password has been set to the e-mail address used during registration.', 'To restore your subscription, please enter the following information. Your password has been set to the e-mail address used during registration.', '');
	insert into ui_text values('SIGN_UP_EMAIL', 1, '사용자와 계정 데이터를 동기화하려면 Badanamu: Learn and Play에 가입하셔야 합니다. 임시 비밀번호가 이메일 주소로 전송됩니다. ', 'In order to sync user and account data, you must sign up for a Badanamu: Learn and Play account. A temporary password will be sent to your e-mail address.', 'In order to sync user and account data, you must sign up for a Badanamu: Learn and Play account. A temporary password will be sent to your e-mail address.', 'In order to sync user and account data, you must sign up for a Badanamu: Learn and Play account. A temporary password will be sent to your e-mail address.', '');
	insert into ui_text values('SUCCESS_PURCHASE_EMAIL', 1, '결제 확인 메일은 제공해주신 이메일 주소로 발송되었습니다. ', 'Payment confirmation has been sent to the e-mail address you''ve provided.', 'Payment confirmation has been sent to the e-mail address you''ve provided.', 'Payment confirmation has been sent to the e-mail address you''ve provided.', '');
	insert into ui_text values('SUCCESS_SIGN_UP_EMAIL', 1, '등록 확인 메일은 제공해주신 이메일 주소로 발송되었습니다. ', 'Registration confirmation has been sent to the e-mail address you''ve provided.', 'Registration confirmation has been sent to the e-mail address you''ve provided.', 'Registration confirmation has been sent to the e-mail address you''ve provided.', '');
	insert into ui_text values('PAYMENT_ALREADY_SUBS', 1, '이미 결제된 상품입니다.', 'You have already purchased this item.', 'You have already purchased this item.', 'You have already purchased this item.', '');
	insert into ui_text values('LAUNCHER_MOVE_MARKET', 1, '런처 설치를 위해 마켓으로 이동하시겠습니까?', 'Would you like to install the app Badanamu: Learn and Play?', 'Would you like to install the app Badanamu: Learn and Play?', 'Would you like to install the app Badanamu: Learn and Play?', '');
	insert into ui_text values('EMAIL_FOR_LESSON_PLAN', 1, '레슨 플랜을 전송받으려면 이메일 주소를 등록하셔야 합니다. 이메일이 등록되면 각 에피소드의 레슨 플랜이 계정과 연결된 이메일 주소로 전송됩니다. ', 'In order to receive the lesson plan, you must link an e-mail address to your account. Once your e-mail has been registered, the lesson plan for each episode will be sent to the e-mail address associated with your account.', 'In order to receive the lesson plan, you must link an e-mail address to your account. Once your e-mail has been registered, the lesson plan for each episode will be sent to the e-mail address associated with your account.', 'In order to receive the lesson plan, you must link an e-mail address to your account. Once your e-mail has been registered, the lesson plan for each episode will be sent to the e-mail address associated with your account.', '');
	insert into ui_text values('LAUNCHER_PURCHASE_REQUIRES', 1, '더 많은 콘텐츠를 이용하시기 위해서는 결제가 필요합니다. 결제를 하시겠습니까?', 'Accessing additional content requires a package purchase. Would you like to purchase it?', 'Accessing additional content requires a package purchase. Would you like to purchase it?', 'Accessing additional content requires a package purchase. Would you like to purchase it?', '');
	insert into ui_text values('LAUNCHER_PURCHASE_LESSON', 1, '더 많은 콘텐츠를 이용하시기 위해서는 결제가 필요합니다.', 'Accessing additional content requires a package purchase.', 'Accessing additional content requires a package purchase.', 'Accessing additional content requires a package purchase.', '');
	insert into ui_text values('LAUNCHER_PURCHASE_SELECT', 1, '더 많은 콘텐츠를 이용하시기 위해서는 결제가 필요합니다.', 'Make a one-time purchase to unlock \nall content in this app.', 'Make a one-time purchase to unlock \nall content in this app.', 'Make a one-time purchase to unlock \nall content in this app.', '');
	insert into ui_text values('LAUNCHER_PURCHASE_INDIVIDUAL', 1, '개별 레슨', 'Individual Lessons', 'Individual Lessons', 'Individual Lessons', '');
	insert into ui_text values('LAUNCHER_PURCHASE_PACKAGE', 1, '패키지', 'Package', 'Package', 'Package', '');
	insert into ui_text values('LAUNCHER_PURCHASE_TITLE', 1, '레슨 구매', 'Purchase Lessons', 'Purchase Lessons', 'Purchase Lessons', '');
	insert into ui_text values('LAUNCHER_PURCHASE_FAILED', 1, '이 전 학습을 구매하지 않았습니다. \n제공된 학습 순서대로 구매해주시기 바랍니다.', 'You have not purchased previous lesson. \nPlease purchase lessons in order.', 'You have not purchased previous lesson. \nPlease purchase lessons in order.', 'You have not purchased previous lesson. \nPlease purchase lessons in order.', '');
	insert into ui_text values('RESTORE', 1, '복구하기', 'Restore', 'Restore', 'Restore', '');
	insert into ui_text values('RESTORE_PURCHASE_SUCCESS', 1, '구매한 아이템이 모두 복구되었습니다.', 'Your purchase has been restored.', 'Your purchase has been restored.', 'Your purchase has been restored.', '');
	insert into ui_text values('RESTORE_PURCHASE_FAIL', 1, '구매한 내역이 없거나 복구를 실패했습니다. 다시 시도해주세요.', 'Your purchase was unable to be restored. Please try again.', 'Your purchase was unable to be restored. Please try again.', 'Your purchase was unable to be restored. Please try again.', '');
	insert into ui_text values('RESTORE_PURCHASE_EMPTY', 1, '구매한 아이템이 없습니다.', 'There is no record of a previous purchase.', 'There is no record of a previous purchase.', 'There is no record of a previous purchase.', '');
	insert into ui_text values('SYS_SIGN_UP_REQUIRED', 1, '등록되지 않은 이메일입니다. 회원 가입 후 사용해주시기 바랍니다.', 'This e-mail is not registered for an account. Please register and try again.', '', '', '');
	insert into ui_text values('SIGN_UP_INFO', 1, '생성한 계정은 바다나무에서 제공하는 모든 어플리케이션에서 사용 가능합니다.', 'You can use your Badanamu account across all Badanamu applications.', '', '', '');
	insert into ui_text values('SIGN_UP_SUCCESS_ACCOUNT', 1, '등록한 이메일로 인증코드가 발송되었습니다./\발송된 인증코드를 등록해야만 어플리케이션을 원활하게 사용할 수 있습니다.', 'A verification code has been sent to your e-mail address. Please input the code below. You must verify your account before signing in.', '', '', '');
	insert into ui_text values('BUTTON_RESEND_VERIFY', 1, '다시발송', 'Resend', '', '', '');
	insert into ui_text values('POPUP_NOT_MATCH_PASSWORD', 1, '입력한 비밀번호가 일치하지 않습니다.', 'New passwords do not match. Please try again.', '', '', '');
	insert into ui_text values('POPUP_TOOSHORT_PASSWORD', 1, '입력한 비밀번호가 너무 짧습니다. 최소 8글자이어야 합니다.', 'Your new password is too short. Passwords must be at least 8 characters.', '', '', '');
	insert into ui_text values('POPUP_NOT_SPECIALCHARACTER_PASSWORD', 1, '비밀번호는 최소 1개 이상의 특수문자가 필요합니다.', 'Passwords must contain at least one special character.', '', '', '');
	insert into ui_text values('POPUP_NOT_NUMBER_PASSWORD', 1, '비밀번호는 최소 1개 이상의 숫자가 필요합니다.', 'Passwords must contain at least one number.', '', '', '');
	insert into ui_text values('POPUP_NOT_CAPITALLETTER_PASSWORD', 1, '비밀번호는 최소 1개 이상의 대문자가 필요합니다.', 'Passwords must contain at least one capital letter.', '', '', '');
	insert into ui_text values('POPUP_FAILED_VERIFYCODE', 1, '잘못된 인증코드 입니다. 인증코드를 확인 후에 다시 입력하세요.', 'Incorrect verification code. Please check the verification code sent to your e-mail and try again.', '', '', '');
	insert into ui_text values('SUCCESS_AGAIN_SENT_VERIFYCODE', 1, '등록한 이메일로 인증코드가 다시 발송되었습니다.', 'A verification code has been resent to your e-mail address.', '', '', '');
	insert into ui_text values('RESET_PASSWORD_INFO', 1, '비밀번호를 다시 설정하기 위해서는 입력하신 이메일로 발송된 인증코드를 입력해야 합니다.', 'To reset your password, a verification code will be sent to the e-mail address below.', '', '', '');
	insert into ui_text values('CHANGE_EMAIL_INFO', 1, '변경하는 이메일로 인증코드가 발송됩니다./\발송된 인증코드를 등록해야만 이메일이 정상적으로 변경됩니다.', 'To change your e-mail, a verification code will be sent to the new e-mail address below.', '', '', '');
	insert into ui_text values('SUCCESS_SENT_VERIFYCODE', 1, '등록한 이메일로 인증코드가 발송되었습니다./\발송된 인증코드를 입력 후, 새로운 비밀번호를 생성하십시오.', 'A verification code has been sent to your e-mail address. Please input the code below to change your password. ', '', '', '');
	insert into ui_text values('VERIFY_EMAIL_INFO', 1, '발송 버튼을 누르면 이메일로 인증코드가 발송됩니다./\발송된 인증코드를 등록해야만 어플리케이션을 원활하게 사용할 수 있습니다.', 'You must verify your e-mail address before continuing. Please input your verification code below. Click "Resend" if you''ve misplaced your code.', '', '', '');
	insert into ui_text values('BUTTON_PEN_BLUETOOTH_ON_OFF', 1, '바다펜 연결', 'Bada Pen Bluetooth Connectivity', '', '', '');
	insert into ui_text values('BUTTON_CLEAR_CONTENTS', 1, '저장된 컨텐츠 제거', 'Clear Content Data', '', '', '');
	insert into ui_text values('BUTTON_TURNOFF_KIDSMODE', 1, '키즈모드 해제', 'Turn off Kids Mode', '', '', '');
	insert into ui_text values('POPUP_TURNOFF_KIDSMODE_INFO1', 1, '키즈 모드 해제를 위한 비밀번호를 입력하세요.', 'You need an admin password to exit Kid''s Mode. Please enter it below.', '', '', '');
	insert into ui_text values('POPUP_TURNOFF_KIDSMODE_INFO2', 1, '타블렛 모드에서 10분 동안 아무런 작업이 없거나 스크린 락을 하면 키즈 모드로 자동 전환됩니다.', 'If the tablet is idle for 10 minutes and/or it enters screen lock, the tablet will return to Kids Mode.', '', '', '');
	insert into ui_text values('SETTING_TITLE', 1, '셋팅', 'SETTINGS', 'SETTINGS', 'SETTINGS', '');
	insert into ui_text values('ACCOUNT_TITLE', 1, '계정', 'My Account', 'My Account', 'My Account', '');
	insert into ui_text values('USER_PROFILE_TITLE', 1, '아이 정보', 'User Profiles', '', '', '');
	insert into ui_text values('RESTORE_TITLE', 1, '구매 복원', 'Restore Purchases', '', '', '');
	insert into ui_text values('TERMS_TITLE', 1, '서비스 기간', 'Terms of Use', '', '', '');
	insert into ui_text values('USER_INFO', 1, '바다나무를 이용할 자녀를 설정할 수 있습니다.', 'View and edit individual student profiles.', '', '', '');
	insert into ui_text values('RESTORE_INFO', 1, '구입한 아이템이 실행되지 않을 때나, 앱을 지웠다가 다시 설치했을 때 구입 복원을 누르시면 됩니다.', 'If you have reinstalled or have a new device, click restore purchases.', '', '', '');
	insert into ui_text values('BUTTON_FORGOT_PASSWORD', 1, '비밀번호 변경', 'Forgot your password?', '', '', '');
	insert into ui_text values('BUTTON_CREATE_ACCOUNT', 1, '바다나무 계정 생성', 'Create a Badanamu Account', '', '', '');
	insert into ui_text values('BUTTON_CHANGE_EMAIL', 1, '이메일 변경', 'Change E-mail', '', '', '');
	insert into ui_text values('BUTTON_CHANGE_PASSWORD', 1, '비밀번호 변경', 'Change Password', '', '', '');
	insert into ui_text values('CREATE_ACCOUNT_TITLE', 1, '계정 생성', 'Create a New Account', '', '', '');
	insert into ui_text values('RETYPE_PASSWORD_TITLE', 1, '비밀번호 재입력', 'Verify Password', '', '', '');
	insert into ui_text values('POPUP_ALREADY_EMAIL', 1, '이미 등록된 이메일입니다.', 'This e-mail address already has an existing account.', '', '', '');
	insert into ui_text values('INPUT_VERIFY_CODE', 1, '인증코드 입력', 'Input Verification Code', '', '', '');
	insert into ui_text values('BUTTON_SUBMIT', 1, '등록', 'Submit', '', '', '');
	insert into ui_text values('RESET_PASSWORD', 1, '비밀번호 리셋', 'Reset Password', '', '', '');
	insert into ui_text values('BUTTON_SEND_VERIFY', 1, '인증코드 발송', 'Send Verification Code', '', '', '');
	insert into ui_text values('ERROR_PASSWORD', 1, '비밀번호 오류', 'Password Error', '', '', '');
	insert into ui_text values('NOT_CURRENT_PASSWORD', 1, '현재 비밀번호가 아닙니다.', 'Enter your correct current password. Please try again.', '', '', '');
	insert into ui_text values('WRONG_FORMAT_PASSWORD', 1, '잘못된 비밀번호입니다.', 'E-mail format error. Please try again.', '', '', '');
	insert into ui_text values('POPUP_CLEAR_ALL_CONTENTS', 1, '컨텐츠를 삭제했습니다.', 'All the selected item(s) have been deleted.', '', '', '');
	insert into ui_text values('POPUP_SELECT_CONTENTS', 1, '삭제하려는 아이템을 선택하세요', 'Select the content item(s) you want to delete.', '', '', '');
	insert into ui_text values('DOWNLOADED_ITEM_TITLE', 1, '저장된 컨텐츠', 'Downloaded Item(s)', '', '', '');
	insert into ui_text values('ACCOUNT_GUEST', 1, 'GUEST', 'GUEST', 'GUEST', 'GUEST', '');
	insert into ui_text values('SYS_EXPIRED_SESSION', 1, '세션이 만료되었습니다. 다시 로그인해 주세요.', 'Your session has expired. Please log in again.', '', '', '');
	insert into ui_text values('POPUP_SUCCESS_PAIRING', 1, '바다 펜과 연결에 성공했습니다.', 'The app has successfully paired with the Bada Pen!', '', '', '');
	insert into ui_text values('POPUP_FAILED_PAIRING', 1, '바다 펜과 연결에 실패했습니다. 바다 펜의 블루투스 기능이 켜져있는지 확인 후 다시 시도해주세요.', 'The app was unable to pair with the Bada Pen. Please check to see if bluetooth is turned on and try again.', '', '', '');
	insert into ui_text values('POPUP_GOTO_BLUETOOTHPAGE', 1, '블루투스 설정 화면에서 바다 펜과의 연결이 필요합니다. 블루투스 설정 화면으로 이동하시겠습니까? ', 'In order to connect the Bada Pen, you will need to turn on the device''s bluetooth in the Settings menu. ', '', '', '');
	insert into ui_text values('POPUP_NOT_SUPPORT_BLUETOOTH', 1, '블루투스를 지원하지 않는 디바이스입니다.', 'Your device does not support bluetooth devices.', '', '', '');
	insert into ui_text values('POPUP_NOT_CREATE_PROFILE', 1, '더 이상 프로필을 생성할 수 없습니다.', 'You cannot create any new profiles.', '', '', '');
	insert into ui_text values('POPUP_CONNECTING_PAIRING', 1, '바다 펜과 연결 중', 'Attempting to connect to the Bada Pen...', '', '', '');
	insert into ui_text values('COPYRIGHTS', 1, 'Copyright © 2017-2018 by Calm Island Co., Ltd.\nAll rights reserved.', 'Copyright © 2017-2018 by Calm Island Co., Ltd.\nAll rights reserved.', 'Copyright © 2017-2018 by Calm Island Co., Ltd.\nAll rights reserved.', 'Copyright © 2017-2018 by Calm Island Co., Ltd.\nAll rights reserved.', '');
	insert into ui_text values('SUBSCRIPTION_TITLE', 1, '구독 정보', 'Subscription Info', '', '', '');
	insert into ui_text values('INACTIVE_SUBSCRIPTION', 1, '미구독', 'Inactive', '', '', '');
	insert into ui_text values('POPUP_FAILED_NETWORK', 1, '데이터 통신 또는 와이파이 연결이 필요합니다.', 'You need to be connected to 3G/LTE or Wi-Fi to continue.', '', '', '');
	insert into ui_text values('EMAIL_VERIFICATION_TITLE', 1, '이메일 인증', 'E-mail Verification', '', '', '');
	insert into ui_text values('BOY_TITLE', 1, '남자아이', 'Boy', '', '', '');
	insert into ui_text values('GIRL_TITLE', 1, '여자아이', 'Girl', '', '', '');
	insert into ui_text values('GENDER_TITLE', 1, '성별', 'Gender', '', '', '');
	insert into ui_text values('NAME_TITLE', 1, '이름', 'Name', '', '', '');
	insert into ui_text values('BIRTH_TITLE', 1, '생년', 'Birth Year', '', '', '');
	insert into ui_text values('PROGRESS_TITLE', 1, '학습정보', 'Progress', '', '', '');
	insert into ui_text values('BUTTON_DELETE', 1, '프로필 삭제', 'Delete', '', '', '');
	insert into ui_text values('BUTTON_SELECT', 1, '선택', 'Selete', '', '', '');
	insert into ui_text values('CHOOSE_AVATAR', 1, '캐릭터 선택', 'Choose Your Avatar', '', '', '');
	insert into ui_text values('POPUP_MANAGE_SUBSCRIPTION', 1, '메인화면에서 구독 진행 여부를 관리할 수 있습니다.', 'You can manage your subscriptions in the main menu. ', '', '', '');
	insert into ui_text values('USE_CELLULARDAT_TITLE', 1, '통신 데이터 사용', 'Use Cellular Data to Download Content', '', '', '');
	insert into ui_text values('BUTTON_DELETE_ITEM', 1, '선택된 아이템 삭제', 'Delete Selected Item(s)', '', '', '');
	insert into ui_text values('POPUP_CADETS_ASK_CLEAR_CONTENTS', 1, '선택된 컨텐츠를 삭제하시겠습니까?', 'Do you want to delete the selected content?', '', '', '');
	insert into ui_text values('SONGS_TERMS_CONTENTS1', 1, 'Terms & Conditions
Effective Date: Nov 1  , 2016
Please read these terms & conditions (“terms”) before using any Badanamu Learning Application. They are the rules and regulations that apply to all Badanamu Learning Applications. Do not purchase a subscription, register for an account, or use the services if you are not in agreement with these terms.
 
Welcome to Badanamu: Learn and Play ®, which is owned and operated by Calm Island Co Ltd ( Korea)   (“Company,” “we,” “us” or “our”). By purchasing a subscription to, registering an account for, or using Badanamu: Learn and Play , including all of the services provided therein, and any other websites and applications that link to these Terms (collectively, the “Services”), you acknowledge that you have read and understand these Terms, and agree to be bound by them. Both these Terms and separate terms of service or sale documents may apply to your use of the Services.  To the extent there is a conflict between these Terms and any Additional Terms, the Additional Terms will control unless the Additional Terms expressly state otherwise. In these Terms, “you” refers to Adult Users of the Services and purchasers of accounts. An “Adult” is a person of legal age who can enter into a contract in the state in which the user resides; by or using the Services, you represent and warrant that you are an Adult, and that you will be responsible for ensuring that any child or student authorized by you to use and access the Services does so in accordance with these Terms.

Summary of Key Points
You should read all of these Terms and also our  privacy policy  https://badanamu.com/privacy-policy/ the terms of which are incorporated into these Terms), but here are some key points:
By purchasing a subscription to, registering an account for, or using the Services, you accept these Terms.
We currently offer our Services for:
Families
Schools 
By activating an Account, you agree that we may renew your subscription automatically for the same subscription term on the day after your previous subscription ends, and you authorize us to charge you for the subscription term, unless you cancel your Account prior to its renewal date through the procedures described in the “Subscription Cancellation” section below
You agree to arbitrate disputes rather than going to court . See section 6B
Your use of the Services is AS IS, without warranty and will result in no liability to us. See Sections 7 & 8
 
1. Accounts, Passwords, and Payments.
A. Account Types. We currently offer the following types of accounts through the Services: Family Accounts and  Teacher Accounts. Users of the Services include “Child Users” (children who use the child-directed learning portion of the Services) and “Adult Users” (including parents and guardians of Child Users, teachers and school administrators)
(i) Family Accounts. A Family Account can have a maximum of three users, including an Adult User and up to two  Child Users that Adult Users add to the Family Account.
(ii) Teacher Accounts. Teacher Accounts may only be registered by an Adult currently employed (a “Teacher”) by a school, school district, licensed childcare facility, or other licensed educational institution or program (“Educational Institution”). Teacher Accounts allow up to 30 Child Users to be using the Services simultaneously. To be eligible for a free Teacher Account, the Teacher must at all times during the subscription period be currently employed by an Educational Institution. The Teacher’s employment status must be independently verifiable, and the Teacher must only use or facilitate the use of the Teacher Account for students at the Educational Institution for which the Teacher has authorization. If a Teacher wants to use the Services for their own family, they must register for a Family Account. By registering for a Teacher Account, you represent and warrant that a. you have permission from your Educational Institution to enter into these Terms on its behalf, and to use the Services as part of learning activities, and (b) your use of the Services and provision of student data through the Services is compliant with any obligations you and your Educational Institution have under applicable laws, including without limitation the Family Educational Rights and Privacy Act. If at any point in time you no longer are employed at, or have permission to use the Services from, your Educational Institution, you agree that you will notify Company immediately. Teacher Accounts are free and are offered in the sole discretion of Company and we reserve the right to decline to issue, cancel, or change the terms and/or conditions of any or all Teacher Accounts at any time for any reason, except with respect to the collection, use, and disclosure of Child User information, which we will treat in accordance with our privacy policy,
B. Passwords and Account Access. Every Account has one designated Adult User who must be at least 18 years of age. You are responsible for maintaining the confidentiality of your password and Account information. You agree a. that you will provide complete and accurate registration information about yourself and any individual you authorize to access your Account and keep your Account information up-to-date, (b) that you are solely responsible for all activities that occur under your Account, (c) to notify us immediately of any unauthorized Account use, (d) that we are in no way responsible for any loss that you may incur as a result of any unauthorized use of your Account and password, and (e) that you will not sell, transfer, or assign your Account or any Account rights. If we learn that an ineligible user has created an Account, we may seek confirmation of the user’s status or deactivate the Account.
C. Account Fees. For certain types of Accounts, we may charge a fee, such as an Account fee or subscription fee. For existing subscribers, we may change your fee at any time in our sole discretion at the end of your subscription period, provided that we first notify you by email. All fees are payable in accordance with payment terms in effect at the time the fee or the charge becomes payable. We may offer promotional trial subscriptions to access the Services for free or at special discounted prices. If you sign up for a trial subscription, your rights to use the Services are limited by the terms of such trial and will terminate or renew according to the terms of your trial arrangement and/or any applicable Additional Terms. Please note that we do not provide price protection or refunds for existing subscribers in the event of a price drop or promotional offering for new subscribers.
(i) Authorization to Charge for Services. You must either use a credit card or other payment mechanism accepted by us (e.g., PayPal, Apple’s iTunes App Store) (“Pay Mechanism”) to activate and maintain a paid Account. You authorize us to charge you through the Pay Mechanism that you use when registering for an Account. You will also be responsible for charges for any products or services that you order that are offered for sale through the Services. If we do not receive payment from the Pay Mechanism you use, you agree to pay all amounts due hereunder upon our demand and will be solely responsible for any dispute with your payment provider. Should the Pay Mechanism provided initially be declined for insufficient funds or any other reason, we reserve the right to attempt to recharge the Pay Mechanism in full or in lesser installments of the initially incurred charge for the duration of the Account subscription you selected and for up to an additional ninety days. You will not be charged more than the amount for which you purchased your Account subscription. You will be solely responsible for all overdraft fees and/or penalties that may be assessed by your payment provider. We use a third-party service provider to process payments on our behalf. You acknowledge and agree that in the event the third-party payment processor experiences a data breach that affects your information through no fault of Company, Company will in no way be responsible or liable to you for any such breach.
(ii) Subscription Renewal. By activating an Account, you agree that we may renew your subscription automatically for the same subscription term on the day after your previous subscription ends, and you authorize us to charge you for the subscription term, unless you cancel your Account prior to its renewal date through the procedures described in the “Subscription Cancellation” section below. We will charge your credit card (or the other method of payment initially used by you) each year, month, or other applicable period (depending on the term that you selected) for the then-current applicable price.
(iii) Subscription Cancelation. You can manage your subscription and cancel auto-renewal in account settings.  If you do so, please know that we endeavor to have customer requests handled within 24 hours; however, we cannot guarantee that your cancelation will be registered within that time period. If you downloaded our app through Apple’s iTunes App Store, you must follow the cancelation instructions provided in the iTunes App Store. For all Accounts, you will continue to have access to your Account for the period of time that has already been prepaid.
2. Services Ownership and License.
A. Ownership. As between us and you, the Services (including past, present and future versions) are owned and controlled by us and their Content is protected by U.S. and international copyright, trademark, trade dress, patent, and other intellectual property rights and laws to the fullest extent possible. “Content” means all text, graphics, user interfaces, visual interfaces, photographs, logos, sounds, music, artwork, and computer code displayed on or available through the Services and the design, structure, selection, coordination, expression, and arrangement of such materials including, without limitation, (i) materials and other items relating to us and our products and services, including, without limitation, all activities, printables, characters, photographs, audio clips, sounds, pictures, videos, and animation; (ii) trademarks, logos, trade names, service marks, and trade identities of various parties, including ours (collectively, “Trademarks”); and (iii) other forms of intellectual property.
B. Limited License. Subject to your strict compliance with these Terms and the Additional Terms and your payment of any applicable subscription fees, we grant you a limited, non-exclusive, revocable, non-assignable and non-transferable license (“License”) to access, display, view, use, play, and/or print one (1) copy (excluding certain printable activities made available through the Services, which indicate that they may be printed multiple times) of the Content on a personal computer, mobile phone or other wireless device, or other Internet-enabled device (each, an “Internet Device”) for your personal, non-commercial use only (e.g., teachers may use Content from the Services for educating their students and other users’ use is limited to personal use). The License does not give you any ownership of, or any other intellectual property interest in, any Content or the Services, and you cannot otherwise use the Content or the Services without our express prior written permission. All rights not expressly granted to you are reserved by us and/or our licensors and other third parties. Except as expressly provided in these Terms or with Company’s express prior written consent, no part of the Services and no Content may be used, copied, reproduced, distributed, uploaded, posted, publicly displayed, translated, transmitted, broadcasted, sold, licensed or otherwise exploited for any purpose whatsoever. Any unauthorized use of any Content or the Services for any purpose is prohibited.', 'Terms & Conditions
Effective Date: Nov 1  , 2016
Please read these terms & conditions (“terms”) before using any Badanamu Learning Application. They are the rules and regulations that apply to all Badanamu Learning Applications. Do not purchase a subscription, register for an account, or use the services if you are not in agreement with these terms.
 
Welcome to Badanamu: Learn and Play ®, which is owned and operated by Calm Island Co Ltd ( Korea)   (“Company,” “we,” “us” or “our”). By purchasing a subscription to, registering an account for, or using Badanamu: Learn and Play , including all of the services provided therein, and any other websites and applications that link to these Terms (collectively, the “Services”), you acknowledge that you have read and understand these Terms, and agree to be bound by them. Both these Terms and separate terms of service or sale documents may apply to your use of the Services.  To the extent there is a conflict between these Terms and any Additional Terms, the Additional Terms will control unless the Additional Terms expressly state otherwise. In these Terms, “you” refers to Adult Users of the Services and purchasers of accounts. An “Adult” is a person of legal age who can enter into a contract in the state in which the user resides; by or using the Services, you represent and warrant that you are an Adult, and that you will be responsible for ensuring that any child or student authorized by you to use and access the Services does so in accordance with these Terms.

Summary of Key Points
You should read all of these Terms and also our  privacy policy  https://badanamu.com/privacy-policy/ the terms of which are incorporated into these Terms), but here are some key points:
By purchasing a subscription to, registering an account for, or using the Services, you accept these Terms.
We currently offer our Services for:
Families
Schools 
By activating an Account, you agree that we may renew your subscription automatically for the same subscription term on the day after your previous subscription ends, and you authorize us to charge you for the subscription term, unless you cancel your Account prior to its renewal date through the procedures described in the “Subscription Cancellation” section below
You agree to arbitrate disputes rather than going to court . See section 6B
Your use of the Services is AS IS, without warranty and will result in no liability to us. See Sections 7 & 8
 
1. Accounts, Passwords, and Payments.
A. Account Types. We currently offer the following types of accounts through the Services: Family Accounts and  Teacher Accounts. Users of the Services include “Child Users” (children who use the child-directed learning portion of the Services) and “Adult Users” (including parents and guardians of Child Users, teachers and school administrators)
(i) Family Accounts. A Family Account can have a maximum of three users, including an Adult User and up to two  Child Users that Adult Users add to the Family Account.
(ii) Teacher Accounts. Teacher Accounts may only be registered by an Adult currently employed (a “Teacher”) by a school, school district, licensed childcare facility, or other licensed educational institution or program (“Educational Institution”). Teacher Accounts allow up to 30 Child Users to be using the Services simultaneously. To be eligible for a free Teacher Account, the Teacher must at all times during the subscription period be currently employed by an Educational Institution. The Teacher’s employment status must be independently verifiable, and the Teacher must only use or facilitate the use of the Teacher Account for students at the Educational Institution for which the Teacher has authorization. If a Teacher wants to use the Services for their own family, they must register for a Family Account. By registering for a Teacher Account, you represent and warrant that a. you have permission from your Educational Institution to enter into these Terms on its behalf, and to use the Services as part of learning activities, and (b) your use of the Services and provision of student data through the Services is compliant with any obligations you and your Educational Institution have under applicable laws, including without limitation the Family Educational Rights and Privacy Act. If at any point in time you no longer are employed at, or have permission to use the Services from, your Educational Institution, you agree that you will notify Company immediately. Teacher Accounts are free and are offered in the sole discretion of Company and we reserve the right to decline to issue, cancel, or change the terms and/or conditions of any or all Teacher Accounts at any time for any reason, except with respect to the collection, use, and disclosure of Child User information, which we will treat in accordance with our privacy policy,
B. Passwords and Account Access. Every Account has one designated Adult User who must be at least 18 years of age. You are responsible for maintaining the confidentiality of your password and Account information. You agree a. that you will provide complete and accurate registration information about yourself and any individual you authorize to access your Account and keep your Account information up-to-date, (b) that you are solely responsible for all activities that occur under your Account, (c) to notify us immediately of any unauthorized Account use, (d) that we are in no way responsible for any loss that you may incur as a result of any unauthorized use of your Account and password, and (e) that you will not sell, transfer, or assign your Account or any Account rights. If we learn that an ineligible user has created an Account, we may seek confirmation of the user’s status or deactivate the Account.
C. Account Fees. For certain types of Accounts, we may charge a fee, such as an Account fee or subscription fee. For existing subscribers, we may change your fee at any time in our sole discretion at the end of your subscription period, provided that we first notify you by email. All fees are payable in accordance with payment terms in effect at the time the fee or the charge becomes payable. We may offer promotional trial subscriptions to access the Services for free or at special discounted prices. If you sign up for a trial subscription, your rights to use the Services are limited by the terms of such trial and will terminate or renew according to the terms of your trial arrangement and/or any applicable Additional Terms. Please note that we do not provide price protection or refunds for existing subscribers in the event of a price drop or promotional offering for new subscribers.
(i) Authorization to Charge for Services. You must either use a credit card or other payment mechanism accepted by us (e.g., PayPal, Apple’s iTunes App Store) (“Pay Mechanism”) to activate and maintain a paid Account. You authorize us to charge you through the Pay Mechanism that you use when registering for an Account. You will also be responsible for charges for any products or services that you order that are offered for sale through the Services. If we do not receive payment from the Pay Mechanism you use, you agree to pay all amounts due hereunder upon our demand and will be solely responsible for any dispute with your payment provider. Should the Pay Mechanism provided initially be declined for insufficient funds or any other reason, we reserve the right to attempt to recharge the Pay Mechanism in full or in lesser installments of the initially incurred charge for the duration of the Account subscription you selected and for up to an additional ninety days. You will not be charged more than the amount for which you purchased your Account subscription. You will be solely responsible for all overdraft fees and/or penalties that may be assessed by your payment provider. We use a third-party service provider to process payments on our behalf. You acknowledge and agree that in the event the third-party payment processor experiences a data breach that affects your information through no fault of Company, Company will in no way be responsible or liable to you for any such breach.
(ii) Subscription Renewal. By activating an Account, you agree that we may renew your subscription automatically for the same subscription term on the day after your previous subscription ends, and you authorize us to charge you for the subscription term, unless you cancel your Account prior to its renewal date through the procedures described in the “Subscription Cancellation” section below. We will charge your credit card (or the other method of payment initially used by you) each year, month, or other applicable period (depending on the term that you selected) for the then-current applicable price.
(iii) Subscription Cancelation. You can manage your subscription and cancel auto-renewal in account settings.  If you do so, please know that we endeavor to have customer requests handled within 24 hours; however, we cannot guarantee that your cancelation will be registered within that time period. If you downloaded our app through Apple’s iTunes App Store, you must follow the cancelation instructions provided in the iTunes App Store. For all Accounts, you will continue to have access to your Account for the period of time that has already been prepaid.
2. Services Ownership and License.
A. Ownership. As between us and you, the Services (including past, present and future versions) are owned and controlled by us and their Content is protected by U.S. and international copyright, trademark, trade dress, patent, and other intellectual property rights and laws to the fullest extent possible. “Content” means all text, graphics, user interfaces, visual interfaces, photographs, logos, sounds, music, artwork, and computer code displayed on or available through the Services and the design, structure, selection, coordination, expression, and arrangement of such materials including, without limitation, (i) materials and other items relating to us and our products and services, including, without limitation, all activities, printables, characters, photographs, audio clips, sounds, pictures, videos, and animation; (ii) trademarks, logos, trade names, service marks, and trade identities of various parties, including ours (collectively, “Trademarks”); and (iii) other forms of intellectual property.
B. Limited License. Subject to your strict compliance with these Terms and the Additional Terms and your payment of any applicable subscription fees, we grant you a limited, non-exclusive, revocable, non-assignable and non-transferable license (“License”) to access, display, view, use, play, and/or print one (1) copy (excluding certain printable activities made available through the Services, which indicate that they may be printed multiple times) of the Content on a personal computer, mobile phone or other wireless device, or other Internet-enabled device (each, an “Internet Device”) for your personal, non-commercial use only (e.g., teachers may use Content from the Services for educating their students and other users’ use is limited to personal use). The License does not give you any ownership of, or any other intellectual property interest in, any Content or the Services, and you cannot otherwise use the Content or the Services without our express prior written permission. All rights not expressly granted to you are reserved by us and/or our licensors and other third parties. Except as expressly provided in these Terms or with Company’s express prior written consent, no part of the Services and no Content may be used, copied, reproduced, distributed, uploaded, posted, publicly displayed, translated, transmitted, broadcasted, sold, licensed or otherwise exploited for any purpose whatsoever. Any unauthorized use of any Content or the Services for any purpose is prohibited.', '', '', '');
	insert into ui_text values('SONGS_TERMS_CONTENTS2', 1, '3. Content You Submit.
We may allow the posting, submission, or distribution of artwork or other content created by users (“User-Generated Content”) on or through the Services. All rights to User-Generated Content, including all intellectual property rights, shall remain the exclusive property of the user. By posting, submitting, or distributing User-Generated Content on or through the Services, you grant us a limited, non-exclusive license to use, copy, distribute, display, transmit, and publish such User-Generated Content for the purposes specified in these Terms, the posted privacy policy, and any Additional Terms, in all formats, on or through any medium now known or hereafter developed, and with any technology or devices now known or hereafter devised. You consent to our publication of User-Generated Content generated through your account by any Child Users so long as the publication cannot be used to particularly identify such Child Users. In addition, if you are an Adult, you consent to the publication of information that can be used to identify you in conjunction with User-Generated Content. For example, we may display User-Generated Content submitted in response to contests and sweepstakes or publish any testimonials you send to us along with your name and other information you submit.
4. Services and Content Use Restrictions.
You agree that you will not: (i) engage in any activities, including, without limitation, the uploading, posting, emailing, or transmitting of User-Generated Content, that a. attempt to or do harm to us, the Services or any others; (b) are unlawful, false, inaccurate, misleading, offensive, obscene, lewd, violent, harassing, threatening, abusive, tortious, defamatory, invasive of another’s privacy, or are otherwise objectionable to us, in our sole discretion; or (c) violate any right of any third party, including, without limitation, the uploading, posting, emailing, or transmitting of User-Generated Content that violates another person’s intellectual property right, right of publicity, trade secret right, or other proprietary right; (ii) reverse engineer, disassemble, or modify any source or object code or any software or other products, services, or processes accessible through the Services, install any software, file, or code on the Services that is not authorized by Company, or attempt to do so; (iii) engage in any activity (other than the use of specific features of the Services, such as Site Timer or Activity Blocker) that interferes with a user’s access to the Services or the proper operation of the Services; (iv) access or collect information from the Services using automated means (such as through scripts, robots scrapers, or spiders); (v) use any meta tags or other “hidden text” utilizing any of our Trademarks; (vi) interfere with or circumvent any security feature of the Services or any feature that restricts or enforces limitations on the use of or access to the Services or its Content; (vii) use the Services for commercial or political purposes; (viii) disclose, harvest, or otherwise collect information, including email addresses, or other private information about any third party without that party’s express consent; or (ix) otherwise violate these Terms, or any Additional Terms, or solicit, encourage, or facilitate anyone else to do so.
5. Linking to and from Our Services.
A. Linking to or Framing Our Services. When linking to our Services, you must adhere to the following requirements: (i) the link to the Services must not damage, disparage, present false information about or tarnish the goodwill associated with any of our Trademarks, products, services and/or intellectual property; (ii) the link to the Services must not create the false appearance that your websites and/or organization is sponsored by, endorsed by, affiliated with, or associated with us; (iii) with the sole exception of authorized Library Accounts, no one may “frame” the Services or create a browser environment around any of the Content; and (iv) you may not link to the Services from a website that is unlawful, abusive, indecent, or obscene; that promotes violence or illegal acts; that contains expressions of racism; that is libelous, defamatory, scandalous, or inflammatory; or that we otherwise deem inappropriate in our sole discretion. We reserve the right to prohibit linking to the Services for any reason, in our sole and absolute discretion, even if the linking complies with the requirements described above.
B. Links to Other Services and Third Parties. In line with our Child Safe guarantee, Child Users are blocked from accessing external links, which will only be available if an Adult User enters his or her password. Any interactions, transactions, and other dealings that you have with any third parties found on or through the Services (including those that are linked to from the Services) are solely between you and the third party (including issues related to payments, delivery of goods and warranties), and we disclaim all liability in connection therewith.
6. Governing Law/Jurisdiction.
A. Governing Law/Jurisdiction. These terms will be governed by the Laws of the State of California, USA
B. Arbitration and Dispute Resolution. If any controversy, allegation, or claim arises out of or relates to the Services or these Terms (collectively, “Dispute”), you and we agree to the following resolution process with respect to the Dispute. To most efficiently resolve any Dispute, you and we agree to first discuss the Dispute informally for at least thirty (30) days. To do so, the party who wants to raise the Dispute must first send to the other party a notice that must include (1) a description of the Dispute and (2) a proposed resolution (together, the “Dispute Notice”). If you want to raise a Dispute, you must send your Dispute Notice by certified mail to us at: Calm Island Co Ltd , Korea. If we would like to subsequently discuss your Dispute Notice with you, we will contact you by using contact information included with your Dispute Notice. If we want to raise a Dispute, we will send our Dispute Notice to you at the email address we have on file for you. If we do not have a valid email address on file for you, we will send our Dispute Notice to you through a means that complies with the service of process rules in the state of California.
If you and Company do not reach an agreed-upon resolution within 30 days of receipt of the Dispute Notice, you and Company agree that the Dispute will be resolved solely by binding arbitration in accordance with the then current Commercial Arbitration Rules of the American Arbitration Association (“AAA”). The arbitration will be heard and determined by a single neutral arbitrator who is a lawyer or retired judge, who will administer the proceedings in accordance with the AAA’s Supplementary Procedures for Consumer Related Disputes. In resolving the Dispute, the arbitrator will consider applicable law, the provisions of these Terms and any Additional Terms, and any facts based upon the record and no other basis, and will issue a reasoned decision. If a party properly submits the Dispute to the AAA for arbitration and the AAA is unwilling or unable to set a hearing date within sixty (60) days of the filing of a “demand for arbitration,” then either party can elect to have the arbitration administered by the Judicial Arbitration and Mediation Services Inc. (“JAMS”) and determined by a single neutral arbitrator who is a lawyer or retired judge, using JAMS’ Streamlined Arbitration Rules and Procedures, or by any other arbitration administration service to which you and we consent.
(i) Nature, Limitations, and Location of Alternative Dispute Resolution. In arbitration, as with a court, the arbitrator will resolve the submitted Dispute and can issue a decision consistent with this Section 6. However, WITH ARBITRATION, THERE IS NO JUDGE OR JURY; THE ARBITRATION PROCEEDINGS AND ARBITRATION ARE SUBJECT TO CERTAIN CONFIDENTIALITY RULES; AND JUDICIAL REVIEW OF THE ARBITRATION OUTCOME IS LIMITED. All parties to the arbitration will have the right, at their own expense, to be represented by an attorney or other advocate of their choosing. If an in-person arbitration hearing is required, then it will be conducted in the “metropolitan statistical area” (as defined by the U.S. Census Bureau) where you are a resident at the time the Dispute is submitted to arbitration. You and we will pay the administrative and arbitrator’s fees and other costs in accordance with the applicable arbitration rules, but if applicable arbitration rules or laws require us to pay a greater portion or all of such fees and costs in order for this Section 6 to be enforceable, then we will have the right to elect to pay the fees and costs and proceed to arbitration. Discovery will be permitted pursuant to the applicable arbitration rules. The arbitrator’s decision must consist of a written statement stating the disposition of each claim of the Dispute, and must provide a statement of the essential findings and conclusions on which the decision and any award (if any) is based. Judgment on the arbitration decision and award (if any) may be entered into any court that has jurisdiction over the parties.
(ii) Small Claims Matters Are Excluded. Either of us may bring a qualifying claim of Disputes in small claims court.
C. Injunctive Relief. The foregoing provisions of this Section 6 will not apply to any legal action taken by either party to seek an injunction or other equitable relief in conjunction with any intellectual property claim or claim related to unauthorized access to data through the Services (including, but not limited to, claims related to patent, copyright, trademark, and trade secrets, and claims relating to the access or retrieval of data through the Services using an automated process such as scraping).
D. Timing of Claim. To help resolve any issues between you and us promptly and directly, you and Company agree that any Dispute Notice must be sent, or that any small claims or injunctive relief complaint permitted under this Section 6 must be filed, within one year after the events giving rise to the Dispute arise; otherwise, the Dispute is waived.
E. No Class Actions. You and Company agree that any Disputes will be arbitrated only on an individual basis and will not be consolidated with any other arbitrations or other proceedings that involve any claim or controversy of any other party.
7. Disclaimer of Representations and Warranties.
YOUR ACCESS TO AND USE OF THE SERVICES IS AT YOUR SOLE RISK.
THE SERVICES ARE PROVIDED ON AN “AS IS,” “AS AVAILABLE,” AND “WITH ALL FAULTS” BASIS. Therefore, to the fullest extent permissible by law, we and our parent, affiliates, subsidiaries, and each of their respective employees, officers, directors, members, managers, shareholders, agents, vendors, licensors, licensees, contractors, customers, successors, and assigns (collectively, “Company Parties”), hereby disclaim and make no representations, warranties, endorsements, or promises, express or implied, as to:
The Services (including the Content and the User-Generated Content);
The functions, features, or any other elements on, or made accessible through, the Services;
Any products, services, or instructions offered or referenced at or linked through the Services;
Whether the Services (and their Content), or the servers that make the Services available, are free from any harmful components (including viruses, Trojan horses, and other technologies that could adversely impact your Internet Device);
The specific availability of the Services, and whether any defects in the Services will be repaired, or will be repaired in a particular time frame; and
Whether your use of the Services is lawful in any particular jurisdiction.
EXCEPTING ONLY AS MAY BE SPECIFICALLY SET FORTH IN ANY ADDITIONAL TERMS, THE COMPANY PARTIES HEREBY FURTHER DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT OR MISAPPROPRIATION OF INTELLECTUAL PROPERTY RIGHTS OF THIRD PARTIES, TITLE, CUSTOM, TRADE, QUIET ENJOYMENT, SYSTEM INTEGRATION, AND FREEDOM FROM ERRORS, COMPUTER VIRUSES OR OTHER HARMFUL ELEMENTS.
Some jurisdictions limit or do not allow the disclaimer of implied or other warranties, so the above disclaimers may not apply to the extent that such jurisdictions’ laws are applicable.
8. Limitations of Liability.
UNDER NO CIRCUMSTANCES WILL ANY COMPANY PARTIES BE RESPONSIBLE OR LIABLE FOR ANY LOSS OR DAMAGES OF ANY KIND, including personal injury or death or for any direct, indirect, economic, exemplary, special, punitive, incidental, or consequential losses or damages that are directly or indirectly related to:
The Services (including the Content and the User-Generated Content);
Your use of or inability to use the Services, or the performance of the Services;
The failure of a child user to learn or otherwise benefit educationally from their use of the Services;
Any action taken in connection with an investigation by Company Parties or law enforcement authorities regarding your access to or use of the Services;
Any action taken in connection with copyright or other intellectual property owners or other rights owners;
Any errors or omissions in the Services’ technical operation; or
Any damage to any user’s computer, hardware, software, modem, or other equipment or technology, including damage from any security breach or from any virus, bugs, tampering, fraud, error, omission, interruption, defect, delay in operation or transmission, computer line, or network failure or any other technical or other malfunction, including losses or damages in the form of lost profits, loss of goodwill, loss of data, work stoppage, inaccuracy of results, or equipment failure or malfunction.
The foregoing limitations of liability will apply even if any of the events or circumstances were foreseeable and even if Company Parties were advised of or should have known of the possibility of such losses or damages, regardless of whether you bring an action of contract, negligence, strict liability, or tort (including whether caused, in whole or in part, by negligence, force majeure, telecommunications failure, or destruction of the Services).
Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages of the sort that are described above, so the above limitation or exclusion may not apply to you.
EXCEPT AS MAY BE PROVIDED IN ANY ADDITIONAL TERMS, TO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT WILL COMPANY PARTIES’ TOTAL LIABILITY TO YOU IN CONNECTION WITH YOUR ACCESS TO AND USE OF THE SERVICES AND YOUR RIGHTS UNDER THESE TERMS EXCEED THE AMOUNT PAID BY YOU TO US DURING THE PREVIOUS TWELVE MONTHS FOR ALL POSSIBLE DAMAGES, LOSSES, AND CAUSES OF ACTION.', '3. Content You Submit.
We may allow the posting, submission, or distribution of artwork or other content created by users (“User-Generated Content”) on or through the Services. All rights to User-Generated Content, including all intellectual property rights, shall remain the exclusive property of the user. By posting, submitting, or distributing User-Generated Content on or through the Services, you grant us a limited, non-exclusive license to use, copy, distribute, display, transmit, and publish such User-Generated Content for the purposes specified in these Terms, the posted privacy policy, and any Additional Terms, in all formats, on or through any medium now known or hereafter developed, and with any technology or devices now known or hereafter devised. You consent to our publication of User-Generated Content generated through your account by any Child Users so long as the publication cannot be used to particularly identify such Child Users. In addition, if you are an Adult, you consent to the publication of information that can be used to identify you in conjunction with User-Generated Content. For example, we may display User-Generated Content submitted in response to contests and sweepstakes or publish any testimonials you send to us along with your name and other information you submit.
4. Services and Content Use Restrictions.
You agree that you will not: (i) engage in any activities, including, without limitation, the uploading, posting, emailing, or transmitting of User-Generated Content, that a. attempt to or do harm to us, the Services or any others; (b) are unlawful, false, inaccurate, misleading, offensive, obscene, lewd, violent, harassing, threatening, abusive, tortious, defamatory, invasive of another’s privacy, or are otherwise objectionable to us, in our sole discretion; or (c) violate any right of any third party, including, without limitation, the uploading, posting, emailing, or transmitting of User-Generated Content that violates another person’s intellectual property right, right of publicity, trade secret right, or other proprietary right; (ii) reverse engineer, disassemble, or modify any source or object code or any software or other products, services, or processes accessible through the Services, install any software, file, or code on the Services that is not authorized by Company, or attempt to do so; (iii) engage in any activity (other than the use of specific features of the Services, such as Site Timer or Activity Blocker) that interferes with a user’s access to the Services or the proper operation of the Services; (iv) access or collect information from the Services using automated means (such as through scripts, robots scrapers, or spiders); (v) use any meta tags or other “hidden text” utilizing any of our Trademarks; (vi) interfere with or circumvent any security feature of the Services or any feature that restricts or enforces limitations on the use of or access to the Services or its Content; (vii) use the Services for commercial or political purposes; (viii) disclose, harvest, or otherwise collect information, including email addresses, or other private information about any third party without that party’s express consent; or (ix) otherwise violate these Terms, or any Additional Terms, or solicit, encourage, or facilitate anyone else to do so.
5. Linking to and from Our Services.
A. Linking to or Framing Our Services. When linking to our Services, you must adhere to the following requirements: (i) the link to the Services must not damage, disparage, present false information about or tarnish the goodwill associated with any of our Trademarks, products, services and/or intellectual property; (ii) the link to the Services must not create the false appearance that your websites and/or organization is sponsored by, endorsed by, affiliated with, or associated with us; (iii) with the sole exception of authorized Library Accounts, no one may “frame” the Services or create a browser environment around any of the Content; and (iv) you may not link to the Services from a website that is unlawful, abusive, indecent, or obscene; that promotes violence or illegal acts; that contains expressions of racism; that is libelous, defamatory, scandalous, or inflammatory; or that we otherwise deem inappropriate in our sole discretion. We reserve the right to prohibit linking to the Services for any reason, in our sole and absolute discretion, even if the linking complies with the requirements described above.
B. Links to Other Services and Third Parties. In line with our Child Safe guarantee, Child Users are blocked from accessing external links, which will only be available if an Adult User enters his or her password. Any interactions, transactions, and other dealings that you have with any third parties found on or through the Services (including those that are linked to from the Services) are solely between you and the third party (including issues related to payments, delivery of goods and warranties), and we disclaim all liability in connection therewith.
6. Governing Law/Jurisdiction.
A. Governing Law/Jurisdiction. These terms will be governed by the Laws of the State of California, USA
B. Arbitration and Dispute Resolution. If any controversy, allegation, or claim arises out of or relates to the Services or these Terms (collectively, “Dispute”), you and we agree to the following resolution process with respect to the Dispute. To most efficiently resolve any Dispute, you and we agree to first discuss the Dispute informally for at least thirty (30) days. To do so, the party who wants to raise the Dispute must first send to the other party a notice that must include (1) a description of the Dispute and (2) a proposed resolution (together, the “Dispute Notice”). If you want to raise a Dispute, you must send your Dispute Notice by certified mail to us at: Calm Island Co Ltd , Korea. If we would like to subsequently discuss your Dispute Notice with you, we will contact you by using contact information included with your Dispute Notice. If we want to raise a Dispute, we will send our Dispute Notice to you at the email address we have on file for you. If we do not have a valid email address on file for you, we will send our Dispute Notice to you through a means that complies with the service of process rules in the state of California.
If you and Company do not reach an agreed-upon resolution within 30 days of receipt of the Dispute Notice, you and Company agree that the Dispute will be resolved solely by binding arbitration in accordance with the then current Commercial Arbitration Rules of the American Arbitration Association (“AAA”). The arbitration will be heard and determined by a single neutral arbitrator who is a lawyer or retired judge, who will administer the proceedings in accordance with the AAA’s Supplementary Procedures for Consumer Related Disputes. In resolving the Dispute, the arbitrator will consider applicable law, the provisions of these Terms and any Additional Terms, and any facts based upon the record and no other basis, and will issue a reasoned decision. If a party properly submits the Dispute to the AAA for arbitration and the AAA is unwilling or unable to set a hearing date within sixty (60) days of the filing of a “demand for arbitration,” then either party can elect to have the arbitration administered by the Judicial Arbitration and Mediation Services Inc. (“JAMS”) and determined by a single neutral arbitrator who is a lawyer or retired judge, using JAMS’ Streamlined Arbitration Rules and Procedures, or by any other arbitration administration service to which you and we consent.
(i) Nature, Limitations, and Location of Alternative Dispute Resolution. In arbitration, as with a court, the arbitrator will resolve the submitted Dispute and can issue a decision consistent with this Section 6. However, WITH ARBITRATION, THERE IS NO JUDGE OR JURY; THE ARBITRATION PROCEEDINGS AND ARBITRATION ARE SUBJECT TO CERTAIN CONFIDENTIALITY RULES; AND JUDICIAL REVIEW OF THE ARBITRATION OUTCOME IS LIMITED. All parties to the arbitration will have the right, at their own expense, to be represented by an attorney or other advocate of their choosing. If an in-person arbitration hearing is required, then it will be conducted in the “metropolitan statistical area” (as defined by the U.S. Census Bureau) where you are a resident at the time the Dispute is submitted to arbitration. You and we will pay the administrative and arbitrator’s fees and other costs in accordance with the applicable arbitration rules, but if applicable arbitration rules or laws require us to pay a greater portion or all of such fees and costs in order for this Section 6 to be enforceable, then we will have the right to elect to pay the fees and costs and proceed to arbitration. Discovery will be permitted pursuant to the applicable arbitration rules. The arbitrator’s decision must consist of a written statement stating the disposition of each claim of the Dispute, and must provide a statement of the essential findings and conclusions on which the decision and any award (if any) is based. Judgment on the arbitration decision and award (if any) may be entered into any court that has jurisdiction over the parties.
(ii) Small Claims Matters Are Excluded. Either of us may bring a qualifying claim of Disputes in small claims court.
C. Injunctive Relief. The foregoing provisions of this Section 6 will not apply to any legal action taken by either party to seek an injunction or other equitable relief in conjunction with any intellectual property claim or claim related to unauthorized access to data through the Services (including, but not limited to, claims related to patent, copyright, trademark, and trade secrets, and claims relating to the access or retrieval of data through the Services using an automated process such as scraping).
D. Timing of Claim. To help resolve any issues between you and us promptly and directly, you and Company agree that any Dispute Notice must be sent, or that any small claims or injunctive relief complaint permitted under this Section 6 must be filed, within one year after the events giving rise to the Dispute arise; otherwise, the Dispute is waived.
E. No Class Actions. You and Company agree that any Disputes will be arbitrated only on an individual basis and will not be consolidated with any other arbitrations or other proceedings that involve any claim or controversy of any other party.
7. Disclaimer of Representations and Warranties.
YOUR ACCESS TO AND USE OF THE SERVICES IS AT YOUR SOLE RISK.
THE SERVICES ARE PROVIDED ON AN “AS IS,” “AS AVAILABLE,” AND “WITH ALL FAULTS” BASIS. Therefore, to the fullest extent permissible by law, we and our parent, affiliates, subsidiaries, and each of their respective employees, officers, directors, members, managers, shareholders, agents, vendors, licensors, licensees, contractors, customers, successors, and assigns (collectively, “Company Parties”), hereby disclaim and make no representations, warranties, endorsements, or promises, express or implied, as to:
The Services (including the Content and the User-Generated Content);
The functions, features, or any other elements on, or made accessible through, the Services;
Any products, services, or instructions offered or referenced at or linked through the Services;
Whether the Services (and their Content), or the servers that make the Services available, are free from any harmful components (including viruses, Trojan horses, and other technologies that could adversely impact your Internet Device);
The specific availability of the Services, and whether any defects in the Services will be repaired, or will be repaired in a particular time frame; and
Whether your use of the Services is lawful in any particular jurisdiction.
EXCEPTING ONLY AS MAY BE SPECIFICALLY SET FORTH IN ANY ADDITIONAL TERMS, THE COMPANY PARTIES HEREBY FURTHER DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT OR MISAPPROPRIATION OF INTELLECTUAL PROPERTY RIGHTS OF THIRD PARTIES, TITLE, CUSTOM, TRADE, QUIET ENJOYMENT, SYSTEM INTEGRATION, AND FREEDOM FROM ERRORS, COMPUTER VIRUSES OR OTHER HARMFUL ELEMENTS.
Some jurisdictions limit or do not allow the disclaimer of implied or other warranties, so the above disclaimers may not apply to the extent that such jurisdictions’ laws are applicable.
8. Limitations of Liability.
UNDER NO CIRCUMSTANCES WILL ANY COMPANY PARTIES BE RESPONSIBLE OR LIABLE FOR ANY LOSS OR DAMAGES OF ANY KIND, including personal injury or death or for any direct, indirect, economic, exemplary, special, punitive, incidental, or consequential losses or damages that are directly or indirectly related to:
The Services (including the Content and the User-Generated Content);
Your use of or inability to use the Services, or the performance of the Services;
The failure of a child user to learn or otherwise benefit educationally from their use of the Services;
Any action taken in connection with an investigation by Company Parties or law enforcement authorities regarding your access to or use of the Services;
Any action taken in connection with copyright or other intellectual property owners or other rights owners;
Any errors or omissions in the Services’ technical operation; or
Any damage to any user’s computer, hardware, software, modem, or other equipment or technology, including damage from any security breach or from any virus, bugs, tampering, fraud, error, omission, interruption, defect, delay in operation or transmission, computer line, or network failure or any other technical or other malfunction, including losses or damages in the form of lost profits, loss of goodwill, loss of data, work stoppage, inaccuracy of results, or equipment failure or malfunction.
The foregoing limitations of liability will apply even if any of the events or circumstances were foreseeable and even if Company Parties were advised of or should have known of the possibility of such losses or damages, regardless of whether you bring an action of contract, negligence, strict liability, or tort (including whether caused, in whole or in part, by negligence, force majeure, telecommunications failure, or destruction of the Services).
Some jurisdictions do not allow the exclusion or limitation of incidental or consequential damages of the sort that are described above, so the above limitation or exclusion may not apply to you.
EXCEPT AS MAY BE PROVIDED IN ANY ADDITIONAL TERMS, TO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT WILL COMPANY PARTIES’ TOTAL LIABILITY TO YOU IN CONNECTION WITH YOUR ACCESS TO AND USE OF THE SERVICES AND YOUR RIGHTS UNDER THESE TERMS EXCEED THE AMOUNT PAID BY YOU TO US DURING THE PREVIOUS TWELVE MONTHS FOR ALL POSSIBLE DAMAGES, LOSSES, AND CAUSES OF ACTION.', '', '', '');
	insert into ui_text values('SONGS_TERMS_CONTENTS3', 1, '9. Indemnity.
To the maximum extent allowed by law, you agree to indemnify, defend and hold harmless the Company Parties from and against all losses, expenses, damages and costs, including reasonable attorneys’ fees, resulting from: a. your breach or alleged breach of these Terms; (b) your use of the Services or activities in connection with the Services; (c) your User-Generated Content; (d) your violation of any law, rule or regulation; or (e) your violation of any third party rights. The Company Parties reserve the right to assume, at their sole expense, the exclusive defense and control of any matter subject to indemnification by you, in which event you will fully cooperate with the Company Parties in asserting any available defenses. You will not, in any event, settle any claim without our prior written consent. If any child you authorize to use or access the Services disaffirms any or all of these Terms, you agree to defend, indemnify and hold us harmless for any damages we suffer by the child’s disaffirmance.
10. Infringement Policy and Reporting Procedure.
In accordance with the Digital Millennium Copyright Act of 1998 (the “DMCA”), our designated agent to receive notices of copyright infringement is David Roberts , who may be reached by email at info@calmid.com . If you believe that your material has been posted on, or distributed via, the Services in a way that constitutes copyright infringement, please provide the following information to David Roberts as required by the DMCA: (i) a physical or electronic signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly infringed (the “complaining party”); (ii) identification of the copyright work(s) claimed to have been infringed; (iii) identification of the material that is claimed to be infringing or to be the subject of infringing activity and information reasonably sufficient to permit us to locate the material; (iv) information reasonably sufficient to permit us to contact the complaining party; (v) a statement that the complaining party (name, address, telephone number, and email address) has a good-faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and (vi) a statement that the information in the notification is accurate, and under penalty of perjury, that the complaining party is authorized to act on behalf of the owner of an exclusive right that is allegedly infringed. The DMCA provides that a person who knowingly materially misrepresents that material or an activity is infringing may be subject to liability. We may send the information in the notice from the complaining party to the person who provided the allegedly infringing material.
11. Wireless Features.
A. Wireless Features. The Services may offer certain features and services that are available to you via your wireless Internet Device (collectively, “Wireless Features”). Your carrier may charge standard messaging, data, and other fees, which may appear on your wireless bill or be deducted from your prepaid balance. Your carrier may prohibit or restrict certain Wireless Features, and certain Wireless Features may be incompatible with your carrier or wireless Internet Device. You agree that as to the Wireless Features for which you are registered, we may send communications to your wireless Internet Device regarding us or other parties. If you have registered via the Services for Wireless Features, then you agree to notify us of any changes to your wireless number (including phone number) and update your Account to reflect the changes.
12. Submission of Feedback.
Under certain circumstances, we might ask Adult Users for feedback or ideas as to their experiences with our Services. If you choose to provide us with feedback, you acknowledge and agree (i) that you have no expectation of review, compensation, or consideration of any type for any such feedback or ideas, and (ii) we will be free to use and exploit such feedback or ideas in our discretion and without compensation or obligation to you.
13. General Provisions.
A. Termination and Suspension. We reserve the right to discontinue the Services or suspend or terminate your access to it, including any Accounts or User-Generated Content submitted by you, at any time, without notice, for any reason and without any obligation to you or any third party. If any information that you provide, or if we have reasonable grounds to suspect that any information that you provide, is false, inaccurate, or otherwise violates these Terms, then we may suspend or terminate your Account or deny you access to all or part of the Services. Any suspension or termination will not affect your obligations to us, including any payment obligations to us, and you will not be entitled to a refund of any payments. Upon suspension or termination of your access to the Services, or upon notice from us, your License to use the Services will terminate immediately.
B. Communications. When you communicate with us electronically, such as via a Services communication tool, you consent to receive communications from us electronically. Please note that we will do our best to respond to your inquiry, but it may take us some time. You agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.
C. Operation of Services; International Issues. We control and operate the Services from our  bheadquarters in South Korea and Santa Monica, California.  If you use the Services from other locations, you are responsible for compliance with applicable local laws regarding your online conduct and acceptable content, if and to the extent local laws apply (e.g., any local education regulatory or data privacy laws). You and we disclaim any application of the Convention on Contracts for the International Sale of Goods.
D. Severability; Interpretation. If any provision of these Terms, or any Additional Terms, is for any reason deemed unenforceable by a court or arbitrator, you agree that every attempt will be made to /give effect to the parties’ intentions as reflected in that provision, and the remaining provisions contained in this Agreement will continue in full force and effect. You agree that these Terms, and Additional Terms, will not be construed against us because we drafted them.
E. Assignment. We may assign our rights and obligations under these Terms, or any Additional Terms, in whole or in part, to any party at any time without any notice. These Terms, and any Additional Terms, may not be assigned by you, and you may not delegate your duties under them.
F. No Waiver. No waiver by us of any of these Terms will be of any force or effect unless made in writing and signed by a duly authorized officer of Calm Island Korea
G. Updates to Terms. We reserve the right to modify these Terms, or any Additional Terms, from time to time in our sole discretion (“Updated Terms”). You agree that any Updated Terms will be effective immediately upon our posting them on the Services and, if you have an Account, either by displaying an alert next to the link to the Terms, displaying an alert upon log-in to the Services, or by directly communicating them to you (e.g., via the email address associated with your Account), provided that (i) any modification to Section 6 related to dispute resolution shall not apply to any Dispute initiated prior to the applicable modification, and (ii) any modification to provisions related to fees and billing shall not apply to fees incurred prior to the applicable modification. If you do not cancel your Account within 7 days after receiving notice of Updated Terms as described above, or if you continue to use the Services after receiving notice of Updated Terms, you agree to comply with, and be bound by, the Updated Terms.
H. Contact Us. If you have any questions or concerns with respect to these Terms or the Services, you may contact us at info@calmid.com', '9. Indemnity.
To the maximum extent allowed by law, you agree to indemnify, defend and hold harmless the Company Parties from and against all losses, expenses, damages and costs, including reasonable attorneys’ fees, resulting from: a. your breach or alleged breach of these Terms; (b) your use of the Services or activities in connection with the Services; (c) your User-Generated Content; (d) your violation of any law, rule or regulation; or (e) your violation of any third party rights. The Company Parties reserve the right to assume, at their sole expense, the exclusive defense and control of any matter subject to indemnification by you, in which event you will fully cooperate with the Company Parties in asserting any available defenses. You will not, in any event, settle any claim without our prior written consent. If any child you authorize to use or access the Services disaffirms any or all of these Terms, you agree to defend, indemnify and hold us harmless for any damages we suffer by the child’s disaffirmance.
10. Infringement Policy and Reporting Procedure.
In accordance with the Digital Millennium Copyright Act of 1998 (the “DMCA”), our designated agent to receive notices of copyright infringement is David Roberts , who may be reached by email at info@calmid.com . If you believe that your material has been posted on, or distributed via, the Services in a way that constitutes copyright infringement, please provide the following information to David Roberts as required by the DMCA: (i) a physical or electronic signature of a person authorized to act on behalf of the owner of an exclusive right that is allegedly infringed (the “complaining party”); (ii) identification of the copyright work(s) claimed to have been infringed; (iii) identification of the material that is claimed to be infringing or to be the subject of infringing activity and information reasonably sufficient to permit us to locate the material; (iv) information reasonably sufficient to permit us to contact the complaining party; (v) a statement that the complaining party (name, address, telephone number, and email address) has a good-faith belief that use of the material in the manner complained of is not authorized by the copyright owner, its agent, or the law; and (vi) a statement that the information in the notification is accurate, and under penalty of perjury, that the complaining party is authorized to act on behalf of the owner of an exclusive right that is allegedly infringed. The DMCA provides that a person who knowingly materially misrepresents that material or an activity is infringing may be subject to liability. We may send the information in the notice from the complaining party to the person who provided the allegedly infringing material.
11. Wireless Features.
A. Wireless Features. The Services may offer certain features and services that are available to you via your wireless Internet Device (collectively, “Wireless Features”). Your carrier may charge standard messaging, data, and other fees, which may appear on your wireless bill or be deducted from your prepaid balance. Your carrier may prohibit or restrict certain Wireless Features, and certain Wireless Features may be incompatible with your carrier or wireless Internet Device. You agree that as to the Wireless Features for which you are registered, we may send communications to your wireless Internet Device regarding us or other parties. If you have registered via the Services for Wireless Features, then you agree to notify us of any changes to your wireless number (including phone number) and update your Account to reflect the changes.
12. Submission of Feedback.
Under certain circumstances, we might ask Adult Users for feedback or ideas as to their experiences with our Services. If you choose to provide us with feedback, you acknowledge and agree (i) that you have no expectation of review, compensation, or consideration of any type for any such feedback or ideas, and (ii) we will be free to use and exploit such feedback or ideas in our discretion and without compensation or obligation to you.
13. General Provisions.
A. Termination and Suspension. We reserve the right to discontinue the Services or suspend or terminate your access to it, including any Accounts or User-Generated Content submitted by you, at any time, without notice, for any reason and without any obligation to you or any third party. If any information that you provide, or if we have reasonable grounds to suspect that any information that you provide, is false, inaccurate, or otherwise violates these Terms, then we may suspend or terminate your Account or deny you access to all or part of the Services. Any suspension or termination will not affect your obligations to us, including any payment obligations to us, and you will not be entitled to a refund of any payments. Upon suspension or termination of your access to the Services, or upon notice from us, your License to use the Services will terminate immediately.
B. Communications. When you communicate with us electronically, such as via a Services communication tool, you consent to receive communications from us electronically. Please note that we will do our best to respond to your inquiry, but it may take us some time. You agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.
C. Operation of Services; International Issues. We control and operate the Services from our  bheadquarters in South Korea and Santa Monica, California.  If you use the Services from other locations, you are responsible for compliance with applicable local laws regarding your online conduct and acceptable content, if and to the extent local laws apply (e.g., any local education regulatory or data privacy laws). You and we disclaim any application of the Convention on Contracts for the International Sale of Goods.
D. Severability; Interpretation. If any provision of these Terms, or any Additional Terms, is for any reason deemed unenforceable by a court or arbitrator, you agree that every attempt will be made to /give effect to the parties’ intentions as reflected in that provision, and the remaining provisions contained in this Agreement will continue in full force and effect. You agree that these Terms, and Additional Terms, will not be construed against us because we drafted them.
E. Assignment. We may assign our rights and obligations under these Terms, or any Additional Terms, in whole or in part, to any party at any time without any notice. These Terms, and any Additional Terms, may not be assigned by you, and you may not delegate your duties under them.
F. No Waiver. No waiver by us of any of these Terms will be of any force or effect unless made in writing and signed by a duly authorized officer of Calm Island Korea
G. Updates to Terms. We reserve the right to modify these Terms, or any Additional Terms, from time to time in our sole discretion (“Updated Terms”). You agree that any Updated Terms will be effective immediately upon our posting them on the Services and, if you have an Account, either by displaying an alert next to the link to the Terms, displaying an alert upon log-in to the Services, or by directly communicating them to you (e.g., via the email address associated with your Account), provided that (i) any modification to Section 6 related to dispute resolution shall not apply to any Dispute initiated prior to the applicable modification, and (ii) any modification to provisions related to fees and billing shall not apply to fees incurred prior to the applicable modification. If you do not cancel your Account within 7 days after receiving notice of Updated Terms as described above, or if you continue to use the Services after receiving notice of Updated Terms, you agree to comply with, and be bound by, the Updated Terms.
H. Contact Us. If you have any questions or concerns with respect to these Terms or the Services, you may contact us at info@calmid.com', '', '', '');
	insert into ui_text values('GENERAL_TERMS_CONTENTS', 1, 'Terms of Use
This is the Terms of Use for all Badanamu Learn and Play apps developed and owned by Calm Island Co., Ltd. ( Korea)   (“Company,” “we,” “us” or “our”).The following Terms of Use, along with our Privacy Policy create a legal contract the "agreement") between you ("you" or "your"), on one hand, and Calm Island Co., Ltd. governing your use of all the content we provide through the Apps, ("Content"). By using or accessing the Apps, or subscribing to our Content, or making in-app purchases (collectively "Use Badanamu Learn and Play", "Use of Badanamu Learn and Play" or "Using Badanamu Learn and Play"), you accept and agree to be bound by the terms and provisions of this agreement. In addition, when using the Apps, you shall be subject to any posted guidelines or rules applicable to the same, which may be posted and modified from time to time. All such guidelines or rules are hereby incorporated by reference into the Terms of Use. 
If you do not agree with these terms or our privacy policy in their entirety, then you may not continue your use of Badanamu Learn and Play Apps. 
By entering this agreement, you specifically agree (i) that arbitration is the exclusive dispute resolution method for all your disputes with Calm Island Co., Ltd.; and (ii) to waive any and all of your rights to pursue or participate in a class action against Calm Island Co., Ltd., its affiliates, and related parties with regards to the app and/or the site.  
PRIVACY:
Please review our Privacy Policy, which also governs your use of Badanamu Learn and Play Apps, to understand our practices.
INTELLECTUAL PROPERTY RIGHTS:
All content included in or made available through the Apps, such as songs, games, activities, stories, text, graphics, images, audio clips, music, videos and digital downloads and the trademarks, service marks, logos and button icons contained therein is the property of or licensed to Calm Island Co., Ltd. and subject to copyright and other rights protected by international intellectual property laws.
LICENSE AND ACCESS:
As a user of the Apps, you are granted a non-exclusive, revocable and limited license to access and use the APPS (and its associated Content). We may terminate this license at any time for any reason, whatsoever. You may use the Apps and/or Content for your own personal, non-commercial use. No part of the Apps and/or Content may be reproduced in any form or incorporated into any information retrieval system, electronic or mechanical. You may not use, copy, emulate, clone, rent, lease, sell, modify, decompile, disassemble, reverse engineer or transfer the Apps, Content or any portion thereof. You may not use any automated means or form of scraping or data extraction to access, query or otherwise collect information from the Apps, or Content except as expressly permitted by us. We reserve any rights not explicitly granted in these Terms of Use. You may not use any device, software or routine to interfere or attempt to interfere with the proper working of the Apps and/or Content. You may not take any action that imposes an unreasonable or disproportionately large load on our infrastructure. As an App user, your license is provided solely for access to the Apps in order to obtain information about the Apps and/or the associated Content and to register for a subscription. Visitors of the Platform are not authorized to access any Products & Services or Content and/or data available to members.



BASIC (FREE) SERVICE :
A limited number of songs and other content will be made available to the free users of the Apps and unlocking any additional content will require in-app purchase.
IN-APP PURCHASES AND BILLING:
By agreeing to opt for an in-app purchase, you agree to pay the required amount and are also required to agree to the terms and conditions of the specific payment method chosen through Apple App Store or Google Play Store. Calm Island Co., Ltd. may change the price of any or all of the packs available for in-app purchase, at its own discretion. If you do not agree to this price change, you may not make the respective in-app purchase.
BILLING DISPUTES:
Apple:
Apple takes care of all the billing and we DO NOT store your credit card information. Any billing disputes or queries can be submitted to Apple App Store at https://reportaproblem.apple.com/ or email us for any doubts at info@calmid.com. 
Google Play:
Google Play takes care of all the billing and we DO NOT store your credit card information. In case of Google, they provide us with a portal to issue refunds as per need. So, in case of any refund or cancellation request, please email us at info@calmid.com. In your email to us, please provide your order id that you are disputing. We will evaluate the claim and issue a decision based on our discretion.
APP PERMISSIONS:
When you use Badanamu Learn and Play Apps, you may grant certain permissions to us for your device. Most mobile devices provide you with information about these permissions.
YOUR RESPONSIBILITY FOR EQUIPMENT AND RELATED COSTS:



You are responsible for obtaining, maintaining and paying for all costs and fees associated with obtaining and maintaining all phone, computer hardware, Internet access services and other equipment or services needed to access and Use Badanamu Learn and Play Apps. You must provide all equipment and software necessary to connect to the Apps and are responsible to ensure that the foregoing do not disturb or interfere with the App''s operations. If any upgrade in or to the Apps requires changes in your equipment or software, you must effect these changes at your own expense. Unless explicitly stated in writing by Calm Island Co., Ltd., any new or additional features of the Apps, including the release of new content, shall be subject to these Terms of Use. We are not responsible for any loss or harm caused to your equipment or hardware for any Use of Badanamu Learn and Play Apps, or alleged Use of Badanamu Learn and Play Apps.



WARRANTY DISCLAIMER:



Your use of the apps, is solely at your own risk. The apps and the associated content are provided "as is" and "as available" without warranty of any kind by Calm Island Co., Ltd. or its affiliates. To the maximum extent allowed by applicable law, each of Calm Island Co., Ltd. and its affiliates, expressly disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose and any warranty of non-infringement. There is no warranty that the Badanamu Learn and Play Apps will meet your requirements, or that your access to the same will be uninterrupted, timely, secure or error-free. Neither Calm Island Co., Ltd. nor its affiliates, warrant, guarantee, or make any representations regarding the use or the results of the use of Badanamu Learn and Play Apps with respect to performance, accuracy, reliability, security capability, currentness or otherwise. 
Calm Island Co., Ltd. uses reasonable efforts to ensure that information about any of the content on Badanamu Learn and Play Apps are correct. However, Calm Island Co., Ltd. cannot guarantee the accuracy of such information and will not be liable for any errors, omissions or other deficiencies. 
Because some jurisdictions do not allow certain warranties to be disclaimed, the above disclaimer may not apply in full to you. To the extent that in a particular circumstance any disclaimer set forth herein is prohibited by applicable law, then, instead of the provisions hereof in such particular circumstance, Calm Island Co., Ltd. and/or its affiliates shall be entitled to the maximum disclaimer available at law or in equity by such applicable law in such particular circumstance.



LIMITATION OF LIABILITY:



You acknowledge that you, or anyone else using Badanamu Learn and Play Apps will use it at your/his/her own risk of property and personal injury, whether such injury is foreseeable or not, including, but not limited to, seizures, vision problems, or other symptoms related to the use of Badanamu Learn and Play Apps. You acknowledge that the person using our apps are fit for such use and are using the same at your own discretion and sense of judgement.
In no event shall we be liable to you or any third party, whether in contract, tort (including negligence), strict liability, indemnification or otherwise, for any consequential, incidental, indirect, special or punitive damages arising out of or in connection with your use of the Badanamu Learn and Play Apps, in any manner, foreseeable or otherwise. Also, we shall not be liable for your or one''s inability to access Badanamu Learn and Play Apps, nor shall we be liable to you or any third party as to any virus or malicious code on your or their devices allegedly resulting from the use of Badanamu Learn and Play Apps; even if Calm Island Co., Ltd. and/or its affiliates have been advised of the possibility of such damages.
The total cumulative liability of Calm Island Co., Ltd., its affiliates and/or third party suppliers to you or to any third parties, from all causes of action and under all theories of liability will be limited to and will not exceed the greater of the fees you paid to Calm Island Co., Ltd. (and/or its affiliates) pursuant to this agreement over the twelve (12) months preceding the incident giving rise to such liability. Because some jurisdictions do not allow certain limitations of liability, portions of the above limitations may not apply to you. To the extent that in a particular circumstance any limitation on damages or liability set forth herein is prohibited by applicable law, then, instead of the provisions hereof in such particular circumstance, Calm Island Co., Ltd. and/or its affiliates, shall be entitled to the maximum limitations on damages and liability available at law or in equity by such applicable law in such particular circumstance.



INDEMNIFICATION:



You agree that you shall defend, indemnify and hold harmless Calm Island Co., Ltd. and its officers, directors, shareholders, employees, independent contractors, agents, representatives, partners, licensors, suppliers and affiliates (collectively, "Affiliates") and other users of Badanamu Learn and Play Apps from and against all claims, actions, demands, liabilities, settlements and expenses, including, but not limited to, attorneys'' fees and costs, arising out of or related to: (i) any breach or violation by you of these Terms of Use or the Privacy Policy or any applicable law; (ii) your access or Use of Badanamu Learn and Play Apps; (iii) any third party''s access or Use of Badanamu Learn and Play Apps; and (iv) your use of any of the Badanamu Learn and Play App Content.
 
AMENDMENT:



Calm Island Co., Ltd. reserves the right, at any time and from time to time, to amend, supplement or modify the terms of these Terms of Use. We will post or display notices of material changes on the website and those changes will become effective fifteen (15) days after the date of posting. You are responsible for regularly reviewing the Terms of Use, including, without limitation, by checking the date of "Last Update" at the bottom of this document. Your continued use of the App after the changes become effective signifies your agreement to be bound by such modified Terms of Use. If you do not agree with the changes in the Terms of Use, your only recourse is stop using the App.



DATE OF LAST UPDATE: 04 October 2018.', 'Terms of Use
This is the Terms of Use for all Badanamu Learn and Play apps developed and owned by Calm Island Co., Ltd. ( Korea)   (“Company,” “we,” “us” or “our”).The following Terms of Use, along with our Privacy Policy create a legal contract the "agreement") between you ("you" or "your"), on one hand, and Calm Island Co., Ltd. governing your use of all the content we provide through the Apps, ("Content"). By using or accessing the Apps, or subscribing to our Content, or making in-app purchases (collectively "Use Badanamu Learn and Play", "Use of Badanamu Learn and Play" or "Using Badanamu Learn and Play"), you accept and agree to be bound by the terms and provisions of this agreement. In addition, when using the Apps, you shall be subject to any posted guidelines or rules applicable to the same, which may be posted and modified from time to time. All such guidelines or rules are hereby incorporated by reference into the Terms of Use. 
If you do not agree with these terms or our privacy policy in their entirety, then you may not continue your use of Badanamu Learn and Play Apps. 
By entering this agreement, you specifically agree (i) that arbitration is the exclusive dispute resolution method for all your disputes with Calm Island Co., Ltd.; and (ii) to waive any and all of your rights to pursue or participate in a class action against Calm Island Co., Ltd., its affiliates, and related parties with regards to the app and/or the site.  
PRIVACY:
Please review our Privacy Policy, which also governs your use of Badanamu Learn and Play Apps, to understand our practices.
INTELLECTUAL PROPERTY RIGHTS:
All content included in or made available through the Apps, such as songs, games, activities, stories, text, graphics, images, audio clips, music, videos and digital downloads and the trademarks, service marks, logos and button icons contained therein is the property of or licensed to Calm Island Co., Ltd. and subject to copyright and other rights protected by international intellectual property laws.
LICENSE AND ACCESS:
As a user of the Apps, you are granted a non-exclusive, revocable and limited license to access and use the APPS (and its associated Content). We may terminate this license at any time for any reason, whatsoever. You may use the Apps and/or Content for your own personal, non-commercial use. No part of the Apps and/or Content may be reproduced in any form or incorporated into any information retrieval system, electronic or mechanical. You may not use, copy, emulate, clone, rent, lease, sell, modify, decompile, disassemble, reverse engineer or transfer the Apps, Content or any portion thereof. You may not use any automated means or form of scraping or data extraction to access, query or otherwise collect information from the Apps, or Content except as expressly permitted by us. We reserve any rights not explicitly granted in these Terms of Use. You may not use any device, software or routine to interfere or attempt to interfere with the proper working of the Apps and/or Content. You may not take any action that imposes an unreasonable or disproportionately large load on our infrastructure. As an App user, your license is provided solely for access to the Apps in order to obtain information about the Apps and/or the associated Content and to register for a subscription. Visitors of the Platform are not authorized to access any Products & Services or Content and/or data available to members.



BASIC (FREE) SERVICE :
A limited number of songs and other content will be made available to the free users of the Apps and unlocking any additional content will require in-app purchase.
IN-APP PURCHASES AND BILLING:
By agreeing to opt for an in-app purchase, you agree to pay the required amount and are also required to agree to the terms and conditions of the specific payment method chosen through Apple App Store or Google Play Store. Calm Island Co., Ltd. may change the price of any or all of the packs available for in-app purchase, at its own discretion. If you do not agree to this price change, you may not make the respective in-app purchase.
BILLING DISPUTES:
Apple:
Apple takes care of all the billing and we DO NOT store your credit card information. Any billing disputes or queries can be submitted to Apple App Store at https://reportaproblem.apple.com/ or email us for any doubts at info@calmid.com. 
Google Play:
Google Play takes care of all the billing and we DO NOT store your credit card information. In case of Google, they provide us with a portal to issue refunds as per need. So, in case of any refund or cancellation request, please email us at info@calmid.com. In your email to us, please provide your order id that you are disputing. We will evaluate the claim and issue a decision based on our discretion.
APP PERMISSIONS:
When you use Badanamu Learn and Play Apps, you may grant certain permissions to us for your device. Most mobile devices provide you with information about these permissions.
YOUR RESPONSIBILITY FOR EQUIPMENT AND RELATED COSTS:



You are responsible for obtaining, maintaining and paying for all costs and fees associated with obtaining and maintaining all phone, computer hardware, Internet access services and other equipment or services needed to access and Use Badanamu Learn and Play Apps. You must provide all equipment and software necessary to connect to the Apps and are responsible to ensure that the foregoing do not disturb or interfere with the App''s operations. If any upgrade in or to the Apps requires changes in your equipment or software, you must effect these changes at your own expense. Unless explicitly stated in writing by Calm Island Co., Ltd., any new or additional features of the Apps, including the release of new content, shall be subject to these Terms of Use. We are not responsible for any loss or harm caused to your equipment or hardware for any Use of Badanamu Learn and Play Apps, or alleged Use of Badanamu Learn and Play Apps.



WARRANTY DISCLAIMER:



Your use of the apps, is solely at your own risk. The apps and the associated content are provided "as is" and "as available" without warranty of any kind by Calm Island Co., Ltd. or its affiliates. To the maximum extent allowed by applicable law, each of Calm Island Co., Ltd. and its affiliates, expressly disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability and fitness for a particular purpose and any warranty of non-infringement. There is no warranty that the Badanamu Learn and Play Apps will meet your requirements, or that your access to the same will be uninterrupted, timely, secure or error-free. Neither Calm Island Co., Ltd. nor its affiliates, warrant, guarantee, or make any representations regarding the use or the results of the use of Badanamu Learn and Play Apps with respect to performance, accuracy, reliability, security capability, currentness or otherwise. 
Calm Island Co., Ltd. uses reasonable efforts to ensure that information about any of the content on Badanamu Learn and Play Apps are correct. However, Calm Island Co., Ltd. cannot guarantee the accuracy of such information and will not be liable for any errors, omissions or other deficiencies. 
Because some jurisdictions do not allow certain warranties to be disclaimed, the above disclaimer may not apply in full to you. To the extent that in a particular circumstance any disclaimer set forth herein is prohibited by applicable law, then, instead of the provisions hereof in such particular circumstance, Calm Island Co., Ltd. and/or its affiliates shall be entitled to the maximum disclaimer available at law or in equity by such applicable law in such particular circumstance.



LIMITATION OF LIABILITY:



You acknowledge that you, or anyone else using Badanamu Learn and Play Apps will use it at your/his/her own risk of property and personal injury, whether such injury is foreseeable or not, including, but not limited to, seizures, vision problems, or other symptoms related to the use of Badanamu Learn and Play Apps. You acknowledge that the person using our apps are fit for such use and are using the same at your own discretion and sense of judgement.
In no event shall we be liable to you or any third party, whether in contract, tort (including negligence), strict liability, indemnification or otherwise, for any consequential, incidental, indirect, special or punitive damages arising out of or in connection with your use of the Badanamu Learn and Play Apps, in any manner, foreseeable or otherwise. Also, we shall not be liable for your or one''s inability to access Badanamu Learn and Play Apps, nor shall we be liable to you or any third party as to any virus or malicious code on your or their devices allegedly resulting from the use of Badanamu Learn and Play Apps; even if Calm Island Co., Ltd. and/or its affiliates have been advised of the possibility of such damages.
The total cumulative liability of Calm Island Co., Ltd., its affiliates and/or third party suppliers to you or to any third parties, from all causes of action and under all theories of liability will be limited to and will not exceed the greater of the fees you paid to Calm Island Co., Ltd. (and/or its affiliates) pursuant to this agreement over the twelve (12) months preceding the incident giving rise to such liability. Because some jurisdictions do not allow certain limitations of liability, portions of the above limitations may not apply to you. To the extent that in a particular circumstance any limitation on damages or liability set forth herein is prohibited by applicable law, then, instead of the provisions hereof in such particular circumstance, Calm Island Co., Ltd. and/or its affiliates, shall be entitled to the maximum limitations on damages and liability available at law or in equity by such applicable law in such particular circumstance.



INDEMNIFICATION:



You agree that you shall defend, indemnify and hold harmless Calm Island Co., Ltd. and its officers, directors, shareholders, employees, independent contractors, agents, representatives, partners, licensors, suppliers and affiliates (collectively, "Affiliates") and other users of Badanamu Learn and Play Apps from and against all claims, actions, demands, liabilities, settlements and expenses, including, but not limited to, attorneys'' fees and costs, arising out of or related to: (i) any breach or violation by you of these Terms of Use or the Privacy Policy or any applicable law; (ii) your access or Use of Badanamu Learn and Play Apps; (iii) any third party''s access or Use of Badanamu Learn and Play Apps; and (iv) your use of any of the Badanamu Learn and Play App Content.
 
AMENDMENT:



Calm Island Co., Ltd. reserves the right, at any time and from time to time, to amend, supplement or modify the terms of these Terms of Use. We will post or display notices of material changes on the website and those changes will become effective fifteen (15) days after the date of posting. You are responsible for regularly reviewing the Terms of Use, including, without limitation, by checking the date of "Last Update" at the bottom of this document. Your continued use of the App after the changes become effective signifies your agreement to be bound by such modified Terms of Use. If you do not agree with the changes in the Terms of Use, your only recourse is stop using the App.



DATE OF LAST UPDATE: 04 October 2018.', '', '', '');
	insert into ui_text values('GENERAL_PRIVACY_CONTENTS', 1, 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application. 

What information does the Application obtain and how is it used? 
User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application. 

Does the Application collect precise real time location information of the device? 
This Application does not collect precise information about the location of your mobile device. 

Do third parties see and/or have access to information obtained by the Application? 
Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement. We may disclose Automatically Collected Information: - as required by law, such as to comply with a subpoena, or similar legal process; - when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request; - with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. 

What are my opt-out rights? 
You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. 

Data Retention Policy
Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. 

Security
We are concerned about safeguarding the confidentiality of your information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can prevent all potential security breaches. Changes This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to out Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', 'The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application. 

What information does the Application obtain and how is it used? 
User Provided Information: The Application does not collect or store customer information. Automatically Collected Information: The Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application. 

Does the Application collect precise real time location information of the device? 
This Application does not collect precise information about the location of your mobile device. 

Do third parties see and/or have access to information obtained by the Application? 
Only aggregated, anonymized data is periodically transmitted to external services to help us improve the Application and our service. We will share your information with third parties only in the ways that are described in this privacy statement. We may disclose Automatically Collected Information: - as required by law, such as to comply with a subpoena, or similar legal process; - when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request; - with our trusted services providers who work on our behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement. 

What are my opt-out rights? 
You can stop all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network. You can also request to opt-out via email, at privacy@badanamu.com. 

Data Retention Policy
Managing Your Information We will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. Children We do not use the Application to knowingly solicit data from or market to children under the age of 13. If a parent or guardian becomes aware that his or her child has provided us with information without their consent, he or she should contact us at privacy@badanamu.com. We will delete such information from our files within a reasonable time. 

Security
We are concerned about safeguarding the confidentiality of your information. We provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve our Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can prevent all potential security breaches. Changes This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to out Privacy Policy by posting the new Privacy Policy here and informing you via email or text message.', '', '', '');
	insert into ui_text values('POPUP_FAILED_UPLOAD_DATA', 1, '데이터를 전송하는데 실패했습니다. 다시 시도해 주세요.', 'The app is unable to connect to the server. Please try again.', '', '', '');
	insert into ui_text values('POPUP_SUCCESSED_UPLOAD_DATA', 1, '데이터를 성공적으로 전송했습니다.', 'The data was sent successfully.', '', '', '');
	insert into ui_text values('POPUP_FAILED_MODIFY_PROFILE', 1, '아이 정보는 변경이 불가능합니다.', 'Existing profiles cannot be edited. ', '', '', '');
	insert into ui_text values('POPUP_SUCCESSED_CREATE_PROFILE', 1, '이 프로필로 등록하시겠습니까?', 'Do you want to create this profile?', '', '', '');
	insert into ui_text values('BUTTON_SAVE_PROFILE', 1, '저장', 'Save', '', '', '');
	insert into ui_text values('BUTTON_EDIT_PICTURE', 1, '변경', 'Edit', '', '', '');
	insert into ui_text values('POPUP_GENERAL_ASK_CLEAR_CONTENTS', 1, '컨텐츠를 삭제하면 어플리케이션이 재부팅됩니다. 지금 컨텐츠를 삭제하시겠습니까?', 'Do you want to delete the content? (The app will need to be restarted.)', '', '', '');
	insert into ui_text values('POPUP_NOTHING_CLEAR_CONTENTS', 1, '삭제할 컨텐츠가 없습니다.', 'There are no existing content.', '', '', '');
	insert into ui_text values('BUTTON_UPLOAD_USERDATA', 1, '프로필 업데이트/동기화', 'Update and Sync Profiles', '', '', '');
	insert into ui_text values('POPUP_NO_PROFILE_NOT_LOGIN', 1, '불러올 프로필 정보가 없습니다. 로그인이 필요합니다.', 'You must log in to access your profiles.', '', '', '');
	insert into ui_text values('POPUP_SUCCESSED_VERIFY', 1, '회원가입이 완료되었습니다.', 'Sign Up is completed.', '', '', '');
	insert into ui_text values('POPUP_TRY_LOGOUT', 1, '로그 아웃 하시겠습니까?', 'Are you sure you want to log out?', '', '', '');
	insert into ui_text values('SONGS_SUBSCRIPTION_BENEFIT_A', 1, '혜택 1. 모든 컨텐츠의 자유로운 이용\n- 바다나무에서 제공하는 {0} 앱을 이용할 수 있습니다.', 'Benefit #1: Unlimited Access\nEnjoy access to all {0}!', 'Benefit #1: Unlimited Access\nEnjoy access to all {0}!', 'Benefit #1: Unlimited Access\nEnjoy access to all {0}!', '');
	insert into ui_text values('SONGS_SUBSCRIPTION_BENEFIT_B', 1, '혜택 2. 끊김 없는 감상, 오프라인 저장\n- 바다나무의 인기 컨텐츠를 저장하여 이용할 수 있습니다.', 'Benefit #2: Easy Access\nThe app automatically saves the content as soon as you download it so you can enjoy it anytime, anywhere!', 'Benefit #2: Easy Access\nThe app automatically saves the content as soon as you download it so you can enjoy it anytime, anywhere!', 'Benefit #2: Easy Access\nThe app automatically saves the content as soon as you download it so you can enjoy it anytime, anywhere!', '');
	insert into ui_text values('SONGS_SUBSCRIPTION_BENEFIT_C', 1, '혜택 3. 지속적으로 업데이트 되는 컨텐츠의 이용\n- 매주 업데이트 되는 송 컨텐츠를 빠르게 이용할 수 있습니다.', 'Benefit #3: Regular Content Updates\nYou can easily access new songs as soon as they''re available!', 'Benefit #3: Regular Content Updates\nYou can easily access new songs as soon as they''re available!', 'Benefit #3: Regular Content Updates\nYou can easily access new songs as soon as they''re available!', '');
	insert into ui_text values('G_IC_PA_CHIMG', 1, 'g_ic_pa_chimg_0 Bada;g_ic_pa_chimg_1 Jess;g_ic_pa_chimg_2 Abby;g_ic_pa_chimg_3 Curly;g_ic_pa_chimg_4 Pogo;g_ic_pa_chimg_5 Mimi', 'g_ic_pa_chimg_0 Bada;g_ic_pa_chimg_1 Jess;g_ic_pa_chimg_2 Abby;g_ic_pa_chimg_3 Curly;g_ic_pa_chimg_4 Pogo;g_ic_pa_chimg_5 Mimi', 'g_ic_pa_chimg_0 Bada;g_ic_pa_chimg_1 Jess;g_ic_pa_chimg_2 Abby;g_ic_pa_chimg_3 Curly;g_ic_pa_chimg_4 Pogo;g_ic_pa_chimg_5 Mimi', 'g_ic_pa_chimg_0 Bada;g_ic_pa_chimg_1 Jess;g_ic_pa_chimg_2 Abby;g_ic_pa_chimg_3 Curly;g_ic_pa_chimg_4 Pogo;g_ic_pa_chimg_5 Mimi', '');
	insert into ui_text values('PROFILE_MAX_COUNT', 1, '생성할 수 있는 프로필의 수를 모두 사용하였습니다. 더 이상 프로필을 추가 할 수 없습니다.', 'You have reached the maximum number of profiles that can be created.', '', '', '');
	insert into ui_text values('SYS_CEO_VERSION_EXPIRED', 1, '사용중인 버전이 만료되었습니다.\n새로운 버전을 설치해주시기 바랍니다.', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', 'There is a new update available. Please update before using the app.', '');
	insert into ui_text values('SYS_GOING_SIGN_UP', 1, '계정 등록이 진행중입니다.', 'Account registration is in progress.', '', '', '');
	insert into ui_text values('SYS_VERIFICATION_CODE_INVALID', 1, '인증코드를 잘못 입력하셨습니다. 다시 입력해주세요.', 'You''ve entered an incorrect verification code. Please try again.', '', '', '');
	insert into ui_text values('WIFI_TITLE', 1, 'Wi-Fi', 'Wi-Fi', '', '', '');
	insert into ui_text values('TURNOFF_WIFI', 1, '연결이 차단되었습니다.', 'We are unable to establish a connection.', '', '', '');
	insert into ui_text values('WIFI_LIST_TITLE', 1, 'WI-FI 네트워크', 'WI-FI Network', '', '', '');
	insert into ui_text values('WIFI_PAGE_TITLE', 1, 'WI-FI SETTING', 'WI-FI SETTING', '', '', '');
	insert into ui_text values('BUTTON_SEARCH', 1, '검색', 'Search', '', '', '');
	insert into ui_text values('POPUP_SEARCH_WIFI', 1, '검색 중', 'Searching', '', '', '');
	insert into ui_text values('CONNECTED_WIFI', 1, '연결됨', 'Connected', '', '', '');
	insert into ui_text values('CONNECTING_WIFI', 1, '연결 중', 'Connecting', '', '', '');
	insert into ui_text values('TURNON_WIFI', 1, '{0}에 연결되었습니다.', 'You''re now connected to {0}.', '', '', '');
	insert into ui_text values('POPUP_UNFORESEEN_LAUNCHER', 1, 'Learn&Play 앱이 설치되어 있지 않습니다. 설치 후 다시 시도해 주세요.', 'The Learn&Play app is not installed. Please try again after installing it.', '', '', '');
	insert into ui_text values('POPUP_ASK_EXIT', 1, '종료하시겠습니까?', 'Do you want to exit?', '', '', '');
	insert into ui_text values('POPUP_FULL_FAVORITE_SONGS', 1, '즐겨찾기 목록이 꽉 찼습니다. 새로운 목록을 추가하려면 기존 목록을 제거해 주세요.', 'You can only have 20 favorite songs. Please remove some songs from your favorites to add more!', '', '', '');
	insert into ui_text values('POPUP_FULL_FAVORITE_BOOKS', 1, '즐겨찾기 목록이 꽉 찼습니다. 새로운 목록을 추가하려면 기존 목록을 제거해 주세요.', 'You can only have 20 favorite books. Please remove some books from your favorites to add more!', '', '', '');
	insert into ui_text values('BUTTON_SEND_LESSONPLAN', 1, '학습 계획 보내기', 'Send Lesson Plan', '', '', '');
	insert into ui_text values('NO_FAVORITE', 1, '즐겨찾기 목록이 없습니다. 하트 버튼을 터치해서 즐겨찾기를 추가하세요.', 'You don''t have any favorites yet! Tap the heart button to add to your favorites.', '', '', '');
	insert into ui_text values('EDIT_PROFILE_TITLE', 1, '프로필 수정', 'Edit Profile', '', '', '');
	insert into ui_text values('SHOW_PASSWORD_TITLE', 1, '비밀번호 보기', 'Show Password', '', '', '');
	insert into ui_text values('NO_RESULT_SEARCH', 1, '검색한 결과가 없습니다. 다른 키워드로 검색해보세요', 'We were unable to find any results. Please try again', '', '', '');
	insert into ui_text values('FAILED_SEND_LESSONPLAN', 1, '레슨 플랜을 전송하려면 와이파이 연결 또는 네트워크 통신이 되어야 합니다.', 'This features requires an active internet connection. Please connect and try again.', '', '', '');
	insert into ui_text values('SUCCESSED_SEND_LESSONPLAN', 1, '등록하신 이메일로 레슨 플랜을 전송했습니다.', 'The lesson plan was successfully sent to registered e-mail address.', '', '', '');
	insert into ui_text values('ABOUT_TITLE', 1, '기타', 'About', '', '', '');
	insert into ui_text values('POPUP_REMAINING_BATTERY10', 1, '배터리가 10% 남은 상태입니다.', 'There is 10% of battery life left on your device.', '', '', '');
	insert into ui_text values('POPUP_REMAINING_BATTERY5', 1, '배터리가 5% 남은 상태입니다.', 'There is 5% of battery life left on your device.', '', '', '');
	insert into ui_text values('POPUP_REMAINING_VOLUME', 1, '디바이스의 남은 용량이 부족하여, 어플리케이션이 정상 동작하지 않을 수 있습니다.', 'There is less than 100MB of storage left on your device. Apps may not work properly.', '', '', '');
	insert into ui_text values('FAILED_LOAD_SDCARD', 1, '바다나무 SD 카드가 없거나 인식하지 못했습니다.', 'We are unable to detect or read the Badanamu SD card. ', '', '', '');
	insert into ui_text values('WIFI_FAILURE_RECONNECT', 1, 'WI-FI 연결이 원활하지 않습니다. 다시 시도해주세요.', 'We have encountered an unexpected error. Please try again.', '', '', '');
	insert into ui_text values('NO_SPECIAL_CHAR_PROFILE', 1, '아이 이름에는 특수문자 또는 이름 앞뒤로 공백을 사용할 수 없습니다.', 'Profile names cannot contain special characters. (Including spaces before and after profile names.)', '', '', '');
	insert into ui_text values('CHOOSE_VIDEO_QUALITY', 1, '에피소드의 기본 화질이 변경되었습니다.\n변경 이전에 시청한 에피소드의 경우는 변경한 화질로 다시 내려 받아야 합니다.', 'You''ve changed the default resolution of the content. If you''ve downloaded episodes prior to this change, you will be asked to download the episodes again with the current resolution.', '', '', '');
	insert into ui_text values('SYNC_PROFILE_COMPARISON', 1, '바다나무 센터에 저장된 프로필 정보와 비교하고 있습니다. 잠시만 기다려 주세요.', 'Checking the servers for duplicate profiles.', '', '', '');
	insert into ui_text values('SYNC_COMPARISON', 1, '비교 중', 'Please wait', '', '', '');
	insert into ui_text values('SYNC_RESULT_SIMILAR', 1, '바다나무 센터에 저장된 프로필 정보와 유사한 프로필이 {0}개 존재합니다.', 'There are {0} profile(s) that need to be reconciled.', '', '', '');
	insert into ui_text values('SYNC_SIMILAR_TITLE', 1, '프로필을 정리해야 합니다. 유사한 프로필들을 병합하거나 유지 또는 지우세요.', 'Select a profile to begin reconciling. Profiles can be merged, kept, or deleted.', '', '', '');
	insert into ui_text values('SYNC_TARGET_TITLE', 1, '병합 대상', 'Merging Target', '', '', '');
	insert into ui_text values('SYNC_LOCATION_TITLE', 1, '저장 위치', 'Location', '', '', '');
	insert into ui_text values('BUTTON_SYNC_KEEP', 1, '유지', 'KEEP', '', '', '');
	insert into ui_text values('BUTTON_SYNC_DELETE', 1, '삭제', 'DELETE', '', '', '');
	insert into ui_text values('BUTTON_SYNC_MERGE', 1, '병합', 'MERGE', '', '', '');
	insert into ui_text values('POPUP_SYNC_CONFIRM', 1, '총 {0}개의 프로필을 선택했습니다. {1}/{2}/{3}로 병합하시겠습니까?', 'Would you like to merge the {0} selected profiles with {1}/{2}/{3}?', '', '', '');
	insert into ui_text values('POPUP_DUPLICATED_NAME', 1, '이미 사용 중인 아이 이름 입니다\n다른 이름을 사용하세요.', 'A profile already exists with this name.\nPlease rename this profile.', '', '', '');
	insert into ui_text values('CHECK_SPECIAL_CHAR_PROFILE', 1, '특수 문자는 사용할 수 없습니다.', 'Special characters cannot be used.', '', '', '');
	insert into ui_text values('CHECK_DUPLICATED_PROFILE', 1, '이미 사용 중인 아이 이름입니다.', 'There is already a profile with this name.', '', '', '');
	insert into ui_text values('CHECK_AVAILABLE_PROFILE', 1, '사용 가능한 아이 이름입니다.', 'This profile name is available for use.', '', '', '');
	insert into ui_text values('POPUP_SYNC_DELETE_PROFILE', 1, '{0}/{1}/{2} 프로필을 삭제하시겠습니까?', 'Are you sure you want to delete {0}/{1}/{2} profiles?', '', '', '');
	insert into ui_text values('SYNC_SUCCESSED_UPDATE_TITLE', 1, '갱신됨', 'UPDATED', '', '', '');
	insert into ui_text values('SYNC_SUCCESSED_MERGE_TITLE', 1, '병합됨', 'MERGED', '', '', '');
	insert into ui_text values('SYNC_SUCCESSED_DELETE_TITLE', 1, '삭제됨', 'DELETED', '', '', '');
	insert into ui_text values('SYNC_SUCCESSED_KEEP_TITLE', 1, '유지됨', 'KEPT', '', '', '');
	insert into ui_text values('SYNC_RESULT_TITLE', 1, '결과', 'RESULTS', '', '', '');
	insert into ui_text values('SYNC_RESULT', 1, '다음과 같이 프로필이 정리 되었습니다.', 'The following profiles have been reconciled.', '', '', '');
	insert into ui_text values('VIDEOQUALITY_TITLE', 1, 'Video default Quality', 'Video default Quality', '', '', '');
	insert into ui_text values('HD_VIDEOQUALITY_TITLE', 1, '- High Definition(HD) ', '- High Definition(HD) ', '', '', '');
	insert into ui_text values('FHD_VIDEOQUALITY_TITLE', 1, '- Full High Definition(HD) ', '- Full High Definition(HD) ', '', '', '');
	insert into ui_text values('POPUP_FAILED_DOWN_VIDEO', 1, '디바이스의 남은 용량이 부족하여, 영상을 내려받을 수 없습니다. 디바이스의 저장 공간을 비우시고 다시 시도해주세요.', 'Unable to download content due to not enough storage on the device. Please free up some storage and try again.', '', '', '');
	insert into ui_text values('POPUP_FAILED_PREVIOUS_PASSWORD', 1, '기존 비밀번호는 사용할 수 없습니다.', 'This password has already been previously used. Please try again.', '', '', '');
	insert into ui_text values('POPUP_RESTORE_INFO', 1, '구입한 아이템이 실행되지 않을 때나, 앱을 지웠다가 다시 설치했을 때 구입 복원을 누르시면 됩니다. Setting 메뉴에서도 구매 복원을 할 수 있습니다.', 'If you have reinstalled or have a new device, click Restore Purchases. You can restore purchases from the Settings menu.', '', '', '');
	insert into ui_text values('ACCOUNT_PROMOCODE_NOT_FOUND', 1, '프로모코드를 찾을 수 없습니다.', 'Unable to verify this access code.', '', '', '');
	insert into ui_text values('ACCOUNT_PROMOCODE_ALREADY_USED', 1, '프로모 코드가 이미 사용되었습니다.', 'This promo code has already been used.', '', '', '');
	insert into ui_text values('ACCOUNT_PROMOCODE_TYPE_INVALID', 1, '프로모 코드의 타입이 잘못되었습니다.', 'This promo code format is invalid.', '', '', '');
	insert into ui_text values('ACCOUNT_PROMOCODE_EXPIRED', 1, '프로모 코드의 기간이 만료되었습니다.', 'This promo code has expired.', '', '', '');
	insert into ui_text values('ACCOUNT_PROMOCODE_APPLIED', 1, '프로모 코드가 적용되었습니다.', 'This promo code is now applied.', '', '', '');
	insert into ui_text values('POPUP_CANNOT_DOWNLOAD_CONTENTS', 1, '현재 다운로드 중인 컨텐츠가 있습니다. 컨텐츠가 완전히 다운로드된 다음에 다시 시도해주세요.', 'There is currently a download in progress. Please wait until the download is complete and try again.', '', '', '');
	insert into ui_text values('POPUP_SYNC_CHECK_PROFILE_ID', 1, '선택한 프로필은 병합 또는 삭제가 필요한 프로필입니다.', 'The selected profile needs to be merged or deleted.', '', '', '');
	insert into ui_text values('POPUP_SYNC_SUCCESSED_KEPT', 1, '{0}/{1}/{2} 프로필을 유지하도록 처리했습니다.', '{0}/{1}/{2} Processed to keep profile.', '', '', '');
	insert into ui_text values('POPUP_SYNC_SUCCESSED_DELETE', 1, '{0}/{1}/{2} 프로필을 삭제했습니다.', 'The {0}/{1}/{2} profile has been deleted.', '', '', '');
	insert into ui_text values('SYNC_COUNT_DELETE_PROFILE', 1, '삭제할 프로필 수량:', 'Number of profiles to delete:', '', '', '');
	insert into ui_text values('SYNC_COUNT_KEEP_PROFILE', 1, '유지할 프로필 수량:', 'Number of profiles to keep:', '', '', '');
	insert into ui_text values('POPUP_SYNC_KEEP_PROFILE', 1, '{0}/{1}/{2} 프로필을 유지하시겠습니까?', 'Are you sure you want to keep {0}/{1}/{2} profiles?', '', '', '');
	insert into ui_text values('POPUP_WARNING_CREATE_PROFILE', 1, '로그인 상태에서 생성한 프로필만 학습 진행 상황이 추적 가능합니다. 프로필을 생성하시겠습니까?', 'Profile data can only be synced if you''re signed in. Do you want to continue?', '', '', '');
	insert into ui_text values('POPUP_NOT_SMALLLETTER_PASSWORD', 1, '비밀번호는 최소 1개 이상의 소문자가 필요합니다.', 'Passwords must contain at least one small letter.', '', '', '');
	insert into ui_text values('SYS_BLOCKING_USER    ', 1, '접근이 불가능합니다. 관리자에게 문의하시기 바랍니다. ', 'Access Denied. Please contact admin. ', '', '', '');
	insert into ui_text values('MEDIABOX_NOT_PURCHASED', 1, '구매하지 않은 프로그램 입니다.', 'You have not purchased this program. ', '', '', '');
	insert into ui_text values('MEDIABOX_FIRST_CONTENT', 1, '프로그램의 첫 번째 콘텐츠입니다. ', 'This is the first content of the program.', '', '', '');
	insert into ui_text values('MEDIABOX_LAST_CONTENT', 1, '프로그램의 마지막 콘텐츠입니다. ', 'This is the last content of the program.', '', '', '');
	insert into ui_text values('POPUP_BLUETOOTH_TURNED_OFF', 1, 'Bluetooth가 꺼져있습니다. Bluetooth를 켠 후 다시 시도 해주세요. ', 'Bluetooth is turned off. Please try again after turning on Bluetooth.', '', '', '');
	insert into ui_text values('POPUP_NO_ACCESS', 1, '이전 학습을 순서대로 완료해주세요.', 'You must finish the activities in order before unlocking the next activity.', '', '', '');
	insert into ui_text values('POPUP_COMING_SOON', 1, '추후 업데이트 될 예정입니다.', 'The activity will be updated soon. ', '', '', '');
	insert into ui_text values('POPUP_MEMORY_CAPTURE_CHECK', 1, '디바이스내 용량을 확인해주세요.', 'Please check the device''s memory.', '', '', '');
	insert into ui_text values('DNS_FAILURE_RESTART', 1, '인터넷 연결이 원활하지 않아 앱을 다시 시작해야합니다. ', 'Unstable Network. You need to restart the app. ', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_WEEKLYREPORT', 1, '주간 리포트', 'Weekly Report', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_TIMESPENT', 1, '사용한 시간', 'Time Spent', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_FAVORITE', 1, '즐겨 본 콘텐츠', 'Favorite Contents', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_DETAIL', 1, '상세보기', 'Detail', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_THISWEEK', 1, '이번 주', 'This week', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_LASTWEEK', 1, '지난 주', 'Last week', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_MIN', 1, '분', 'min', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_HOUR', 1, '시', 'hr', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_DAY', 1, '일', 'day', '', '', '');
	insert into ui_text values('QUIZ_UNLOCK', 1, '퀴즈를 풀기 위해서는 앞의 학습을 완료해야 합니다. ', 'You must clear previous lessons. ', '', '', '');
	insert into ui_text values('GENDER_UNSELECTED_TITLE', 1, '선택안됨', 'Not Specified', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_LOGIN_REQUIRED', 1, '로그인 상태가 아닙니다. 정상적으로 기능을 사용하시려면 먼저 로그인을 해 주세요.', 'You are not signed in. You must sign-in to use this feature.', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_ONLINE_REQUIRED', 1, '온라인 상태가 아닙니다. 정상적으로 기능을 사용하시려면 먼저 인터넷에 연결해 주세요.', 'Your status is not online. The device must be connected to the internet to use this feature.', '', '', '');
	insert into ui_text values('POPUP_INSUFFICIENT_STORAGE', 1, '디바이스에 저장 공간이 부족하여 저장할 수 없습니다. 저장 공간을 비운 후에 다시 시도하세요. ', 'Unable to save content due to not enough storage on the device. Please free up some storage and try again.', '', '', '');
	insert into ui_text values('ENTER_LEARNERS_NAME', 1, '학습자 이름', 'Learner''s Name', '', '', '');
	insert into ui_text values('ENTER_YEAR_OF_BIRTH', 1, '학습자 생년월', 'Year of Birth', '', '', '');
	insert into ui_text values('POP_UP_DOWNLOAD_CONTENT', 1, '{0}MB의 필요한 파일을 추가로 다운로드 받아야 합니다. Wi-Fi 환경에서 다운로드를 추천합니다. 다운로드를 진행하시겠습니까? ', 'Required to download additional files of {0}MB. We recommend you to download in Wi-Fi. Do you want to proceed with the download?', '', '', '');
	insert into ui_text values('POP_UP_STICKER_ASK_DELETE', 1, '꾸며진 스티커를 모두 삭제하시겠습니까?', 'Do you want to delete all?', '', '', '');
	insert into ui_text values('POPUP_FILE_DOESNOT_EXIST', 1, '해당 파일을 찾을 수 없습니다.', 'Content does not exist. ', '', '', '');
	insert into ui_text values('POP_UP_CHANGE_ACCOUNT', 1, '추천 콘텐츠를 이용하려면 키즈룹 계정으로 로그인 정보를 전환해야 합니다. 계속하시겠습니까?', 'Would you like to use KidsLoop account to use recommended content?', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_NO_SONG', 1, '이번 주에는 노래 영상을 학습하지 않았어요.', 'No song has been played.', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_NO_BOOK', 1, '이번 주에는 책을 읽지 않았어요.', 'No book has been read. ', '', '', '');
	insert into ui_text values('KIDSAPP_DASHBOARD_UPDATE_TIME', 1, '리포트 생성일:', 'Update Date: ', '', '', '');
