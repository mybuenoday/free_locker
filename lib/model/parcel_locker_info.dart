class ParcelLockerInfo {
  String? fcltyNm; // 시설명
  String? ctprvnNm; // 시도명
  String? signguNm; // 시군구명
  String? signguCode; // 시군구코드
  String? rdnmadr; // 소재지도로명주소
  String? lnmadr; // 소재지지번주소
  double? latitude; // 위도
  double? longitude; // 경도
  String? weekdayOperOpenHhmm; // 평일운영시작시각
  String? weekdayOperColseHhmm; // 평일운영종료시각
  String? satOperOperOpenHhmm; // 토요일운영시작시각
  String? satOperCloseHhmm; // 토요일운영종료시각
  String? holidayOperOpenHhmm; // 공휴일운영시작시각
  String? holidayCloseOpenHhmm; // 공휴일운영종료시각
  String? freeUseTime; // 무료이용시간
  String? arrsUnitTime; // 연체료부과단위시간
  String? arrs; // 연체료
  String? ctrlMthdCode; // 제어방식구분코드
  String? useRecovryMthDc; // 사용방법설명
  String? hdryboxKnd; // 택배함종류코드
  String? boxCo; // 칸개수
  String? boxDp; // 칸깊이
  String? boxBt; // 칸너비
  String? boxHg; // 칸높이
  String? instlDate; // 설치일자
  String? cstmrCnterPhoneNumber; // 고객센터전화번호
  String? institutionNm; // 관리기관명
  String? institutionPhoneNumber; // 관리기관전화번호
  String? referenceDate; // 데이터기준일자
  String? instt_code; // 제공기관코드

  ParcelLockerInfo({
    this.fcltyNm,
    this.ctprvnNm,
    this.signguNm,
    this.signguCode,
    this.rdnmadr,
    this.lnmadr,
    this.latitude,
    this.longitude,
    this.weekdayOperOpenHhmm,
    this.weekdayOperColseHhmm,
    this.satOperOperOpenHhmm,
    this.satOperCloseHhmm,
    this.holidayOperOpenHhmm,
    this.holidayCloseOpenHhmm,
    this.freeUseTime,
    this.arrsUnitTime,
    this.arrs,
    this.ctrlMthdCode,
    this.useRecovryMthDc,
    this.hdryboxKnd,
    this.boxCo,
    this.boxDp,
    this.boxBt,
    this.boxHg,
    this.instlDate,
    this.cstmrCnterPhoneNumber,
    this.institutionNm,
    this.institutionPhoneNumber,
    this.referenceDate,
    this.instt_code,
  });

  ParcelLockerInfo.fromJson(Map<String, dynamic> json) {
    fcltyNm = json['시설명'];
    ctprvnNm = json['시도명'];
    signguNm = json['시군구명'];
    signguCode = json['시군구코드'];
    rdnmadr = json['소재지도로명주소'];
    lnmadr = json['소재지지번주소'];
    latitude = json['위도'] != null ? double.tryParse(json['위도'].toString()) : null;
    longitude = json['경도'] != null ? double.tryParse(json['경도'].toString()) : null;
    weekdayOperOpenHhmm = json['평일운영시작시각'];
    weekdayOperColseHhmm = json['평일운영종료시각'];
    satOperOperOpenHhmm = json['토요일운영시작시각'];
    satOperCloseHhmm = json['토요일운영종료시각'];
    holidayOperOpenHhmm = json['공휴일운영시작시각'];
    holidayCloseOpenHhmm = json['공휴일운영종료시각'];
    freeUseTime = json['무료이용시간'];
    arrsUnitTime = json['연체료부과단위시간'];
    arrs = json['연체료'];
    ctrlMthdCode = json['제어방식구분코드'];
    useRecovryMthDc = json['사용방법설명'];
    hdryboxKnd = json['택배함종류코드'];
    boxCo = json['칸개수'];
    boxDp = json['칸깊이'];
    boxBt = json['칸너비'];
    boxHg = json['칸높이'];
    instlDate = json['설치일자'];
    cstmrCnterPhoneNumber = json['고객센터전화번호'];
    institutionNm = json['관리기관명'];
    institutionPhoneNumber = json['관리기관전화번호'];
    referenceDate = json['데이터기준일자'];
    instt_code = json['제공기관코드'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['시설명'] = fcltyNm;
    data['시도명'] = ctprvnNm;
    data['시군구명'] = signguNm;
    data['시군구코드'] = signguCode;
    data['소재지도로명주소'] = rdnmadr;
    data['소재지지번주소'] = lnmadr;
    data['위도'] = latitude;
    data['경도'] = longitude;
    data['평일운영시작시각'] = weekdayOperOpenHhmm;
    data['평일운영종료시각'] = weekdayOperColseHhmm;
    data['토요일운영시작시각'] = satOperOperOpenHhmm;
    data['토요일운영종료시각'] = satOperCloseHhmm;
    data['공휴일운영시작시각'] = holidayOperOpenHhmm;
    data['공휴일운영종료시각'] = holidayCloseOpenHhmm;
    data['무료이용시간'] = freeUseTime;
    data['연체료부과단위시간'] = arrsUnitTime;
    data['연체료'] = arrs;
    data['제어방식구분코드'] = ctrlMthdCode;
    data['사용방법설명'] = useRecovryMthDc;
    data['택배함종류코드'] = hdryboxKnd;
    data['칸개수'] = boxCo;
    data['칸깊이'] = boxDp;
    data['칸너비'] = boxBt;
    data['칸높이'] = boxHg;
    data['설치일자'] = instlDate;
    data['고객센터전화번호'] = cstmrCnterPhoneNumber;
    data['관리기관명'] = institutionNm;
    data['관리기관전화번호'] = institutionPhoneNumber;
    data['데이터기준일자'] = referenceDate;
    data['제공기관코드'] = instt_code;
    return data;
  }
}