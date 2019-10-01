
public enum ErrCode
{
	NONE = 0,
	UNKNOWN = 1,
	SYS_MSG_TYPE_INVALID = 1001,
	SYS_VERSION_UPGRADE_REQUIRED = 1002,
	SYS_SESSION_REQUIRED = 1003,
	SYS_PARAM_REQUIRED = 1004,
	SYS_MASTER_DATA_TABLE_NOT_FOUND = 1005,
	SYS_MASTER_DATA_INFO_NOT_FOUND = 1006,
	SYS_EMAIL_REQUIRED = 1007,
	SYS_NOT_ALLOWED = 1008,
	SYS_ALREADY_EXIST = 1009,
	SYS_EMAIL_ALREADY_IN_USE = 1010,
	SYS_SIGN_UP_REQUIRED = 1011,
	SYS_GOING_SIGN_UP = 1012,
	SYS_VERIFICATION_CODE_INVALID = 1013,
	SYS_CEO_VERSION_EXPIRED = 1014,
	SYS_DB_CONNECT_FAILED = 1015,
	SYS_DB_ERROR = 1016,
	SYS_BLOCKING_USER = 1017,
	SYS_PARSE_ERROR = 1018,
	SYS_EXTERNAL_CONNECT_FAILED = 1019,
	SYS_EXTERNAL_DATA_INVALID = 1020,
	SYS_KIDSLOOP_CONNECT_FAILED = 1021,
	SYS_KIDSLOOP_DATA_INVALID = 1022,
	SYS_TOKEN_INVALID = 1023,
	SYS_TOKEN_EXPIRED = 1024,
	SYS_INTERNAL_SERVER_ERROR = 1025,
	SYS_ACCESSTOKEN_EXPIRED = 1026,
	ACCOUNT_GET_ITEM_FAILED = 1201,
	ACCOUNT_PUT_ITEM_FAILED = 1202,
	ACCOUNT_UPDATE_ITEM_FAILED = 1203,
	ACCOUNT_NOT_FOUND = 1204,
	ACCOUNT_OS_GET_ITEM_FAILED = 1205,
	ACCOUNT_OS_PUT_ITEM_FAILED = 1206,
	ACCOUNT_DELETE_ITEM_FAILED = 1207,
	ACCOUNT_OS_UPDATE_ITEM_FAILED = 1208,
	ACCOUNT_OS_DELETE_ITEM_FAILED = 1209,
	ACCOUNT_PROMOCODE_NOT_FOUND = 1210,
	ACCOUNT_PROMOCODE_ALREADY_USED = 1211,
	ACCOUNT_PROMOCODE_TYPE_INVALID = 1212,
	ACCOUNT_PROMOCODE_EXPIRED = 1213,
	ACCOUNT_PROMOCODE_GET_ITEM_FAILED = 1214,
	ACCOUNT_PROMOCODE_PUT_ITEM_FAILED = 1215,
	ACCOUNT_PROMOCODE_UPDATE_ITEM_FAILED = 1216,
	ACCOUNT_PROMOCODE_DELETE_ITEM_FAILED = 1217,
	ACCOUNT_MEDIABOX_GET_ITEM_FAILED = 1218,
	ACCOUNT_MEDIABOX_PUT_ITEM_FAILED = 1219,
	ACCOUNT_MEDIABOX_UPDATE_ITEM_FAILED = 1220,
	ACCOUNT_MEDIABOX_DELETE_ITEM_FAILED = 1221,
	ACCOUNT_SUB_GET_ITEM_FAILED = 1222,
	ACCOUNT_SUB_PUT_ITEM_FAILED = 1223,
	ACCOUNT_SUB_UPDATE_ITEM_FAILED = 1224,
	ACCOUNT_SUB_DELETE_ITEM_FAILED = 1225,
	ACCOUNT_DEVICE_GET_ITEM_FAILED = 1226,
	ACCOUNT_DEVICE_PUT_ITEM_FAILED = 1227,
	ACCOUNT_DEVICE_UPDATE_ITEM_FAILED = 1228,
	ACCOUNT_DEVICE_DELETE_ITEM_FAILED = 1229,
	PROFILE_QUERY_ITEMS_FAILED = 1301,
	PROFILE_PUT_ITEM_FAILED = 1302,
	PROFILE_DELETE_ITEM_FAILED = 1303,
	PROFILE_UPDATE_ITEM_FAILED = 1304,
	PROFILE_GET_ITEM_FAILED = 1305,
	PROFILE_BOOKS_NOT_FOUND = 1306,
	PROFILE_SONGS_NOT_FOUND = 1307,
	PROFILE_BADA_RHYME_LESSON_NOT_FOUND = 1308,
	PROFILE_NOT_FOUND = 1309,
	PROFILE_MAX_COUNT = 1310,
	PROFILE_DATA_PUT_ITEM_FAILED = 1311,
	PROFILE_DATA_DELETE_ITEM_FAILED = 1312,
	PROFILE_DATA_UPDATE_ITEM_FAILED = 1313,
	PROFILE_DATA_GET_ITEM_FAILED = 1314,
	PROFILE_DATA_NOT_FOUND = 1315,
	PROFILE_BADA_GENIUS_LESSON_NOT_FOUND = 1316,
	WEATHER_GET_GEO_INFO_FAILED = 1401,
	WEATHER_PARSE_GEO_INFO_FAILED = 1402,
	WEATHER_GET_ITEM_FAILED = 1403,
	WEATHER_PUT_ITEM_FAILED = 1404,
	WEATHER_UPDATE_ITEM_FAILED = 1405,
	LEGACY_BADATALK_QUERY_ITEMS_FAILED = 1501,
	LEGACY_BADATALK_PUT_ITEM_FAILED = 1502,
	LEGACY_BADATALK_TOO_MANY_DEVICES = 1503,
	PAYMENT_RECEIPT_INVALID = 1601,
	PAYMENT_PUT_ITEM_FAILED = 1602,
	PAYMENT_UPDATE_ITEM_FAILED = 1603,
	PAYMENT_INIT_FAILED = 1604,
	PAYMENT_RECEIPT_VALIDATE_FAILED = 1605,
	PAYMENT_RECEIPT_TRANSACTION_NOT_FOUND = 1606,
	PAYMENT_RECEIPT_INVALID_PRODUCT = 1607,
	PAYMENT_ALREADY_SUBS = 1608,
	USER_GET_ITEM_FAILED = 1701,
	USER_PUT_ITEM_FAILED = 1702,
	USER_UPDATE_ITEM_FAILED = 1703,
	USER_PASSWD_INVALID = 1704,
	USER_EMAIL_INVALID = 1705,
	USER_NOT_FOUND = 1706,
	USER_DELETE_ITEM_FAILED = 1707,
	ACCEPT_TERMS_PUT_ITEM_FAILED = 1801,
	ACCEPT_TERMS_DELETE_ITEM_FAILED = 1802,
	ACCEPT_TERMS_UPDATE_ITEM_FAILED = 1803,
	ACCEPT_TERMS_GET_ITEM_FAILED = 1804,
	ACCEPT_TERMS_ALREADY_EXIST = 1805,
	END = 9999
}
