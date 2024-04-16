class ExchangeRateDto {
  ExchangeRateDto({
    this.result,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.baseCode,
    this.conversionRates,
  });

  ExchangeRateDto.fromJson(dynamic json) {
    result = json['result'];
    documentation = json['documentation'];
    termsOfUse = json['terms_of_use'];
    timeLastUpdateUnix = json['time_last_update_unix'];
    timeLastUpdateUtc = json['time_last_update_utc'];
    timeNextUpdateUnix = json['time_next_update_unix'];
    timeNextUpdateUtc = json['time_next_update_utc'];
    baseCode = json['base_code'];
    conversionRates = json['conversion_rates'] != null
        ? ConversionRatesDto.fromJson(json['conversion_rates'])
        : null;
  }

  String? result;
  String? documentation;
  String? termsOfUse;
  num? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  num? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  String? baseCode;
  ConversionRatesDto? conversionRates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    map['documentation'] = documentation;
    map['terms_of_use'] = termsOfUse;
    map['time_last_update_unix'] = timeLastUpdateUnix;
    map['time_last_update_utc'] = timeLastUpdateUtc;
    map['time_next_update_unix'] = timeNextUpdateUnix;
    map['time_next_update_utc'] = timeNextUpdateUtc;
    map['base_code'] = baseCode;
    if (conversionRates != null) {
      map['conversion_rates'] = conversionRates?.toJson();
    }
    return map;
  }
}

class ConversionRatesDto {
  ConversionRatesDto({
    this.usd,
    this.aed,
    this.afn,
    this.all,
    this.amd,
    this.ang,
    this.aoa,
    this.ars,
    this.aud,
    this.awg,
    this.azn,
    this.bam,
    this.bbd,
    this.bdt,
    this.bgn,
    this.bhd,
    this.bif,
    this.bmd,
    this.bnd,
    this.bob,
    this.brl,
    this.bsd,
    this.btn,
    this.bwp,
    this.byn,
    this.bzd,
    this.cad,
    this.cdf,
    this.chf,
    this.clp,
    this.cny,
    this.cop,
    this.crc,
    this.cup,
    this.cve,
    this.czk,
    this.djf,
    this.dkk,
    this.dop,
    this.dzd,
    this.egp,
    this.ern,
    this.etb,
    this.eur,
    this.fjd,
    this.fkp,
    this.fok,
    this.gbp,
    this.gel,
    this.ggp,
    this.ghs,
    this.gip,
    this.gmd,
    this.gnf,
    this.gtq,
    this.gyd,
    this.hkd,
    this.hnl,
    this.hrk,
    this.htg,
    this.huf,
    this.idr,
    this.ils,
    this.imp,
    this.inr,
    this.iqd,
    this.irr,
    this.isk,
    this.jep,
    this.jmd,
    this.jod,
    this.jpy,
    this.kes,
    this.kgs,
    this.khr,
    this.kid,
    this.kmf,
    this.krw,
    this.kwd,
    this.kyd,
    this.kzt,
    this.lak,
    this.lbp,
    this.lkr,
    this.lrd,
    this.lsl,
    this.lyd,
    this.mad,
    this.mdl,
    this.mga,
    this.mkd,
    this.mmk,
    this.mnt,
    this.mop,
    this.mru,
    this.mur,
    this.mvr,
    this.mwk,
    this.mxn,
    this.myr,
    this.mzn,
    this.nad,
    this.ngn,
    this.nio,
    this.nok,
    this.npr,
    this.nzd,
    this.omr,
    this.pab,
    this.pen,
    this.pgk,
    this.php,
    this.pkr,
    this.pln,
    this.pyg,
    this.qar,
    this.ron,
    this.rsd,
    this.rub,
    this.rwf,
    this.sar,
    this.sbd,
    this.scr,
    this.sdg,
    this.sek,
    this.sgd,
    this.shp,
    this.sle,
    this.sll,
    this.sos,
    this.srd,
    this.ssp,
    this.stn,
    this.syp,
    this.szl,
    this.thb,
    this.tjs,
    this.tmt,
    this.tnd,
    this.top,
    this.tur,
    this.ttd,
    this.tvd,
    this.twd,
    this.tzs,
    this.uah,
    this.ugx,
    this.uyu,
    this.uzs,
    this.ves,
    this.vnd,
    this.vuv,
    this.wst,
    this.xaf,
    this.xcd,
    this.xdr,
    this.xof,
    this.xpf,
    this.yer,
    this.zar,
    this.zmw,
    this.zwl,
  });

  ConversionRatesDto.fromJson(dynamic json) {
    usd = json['USD'];
    aed = json['AED'];
    afn = json['AFN'];
    all = json['ALL'];
    amd = json['AMD'];
    ang = json['ANG'];
    aoa = json['AOA'];
    ars = json['ARS'];
    aud = json['AUD'];
    awg = json['AWG'];
    azn = json['AZN'];
    bam = json['BAM'];
    bbd = json['BBD'];
    bdt = json['BDT'];
    bgn = json['BGN'];
    bhd = json['BHD'];
    bif = json['BIF'];
    bmd = json['BMD'];
    bnd = json['BND'];
    bob = json['BOB'];
    brl = json['BRL'];
    bsd = json['BSD'];
    btn = json['BTN'];
    bwp = json['BWP'];
    byn = json['BYN'];
    bzd = json['BZD'];
    cad = json['CAD'];
    cdf = json['CDF'];
    chf = json['CHF'];
    clp = json['CLP'];
    cny = json['CNY'];
    cop = json['COP'];
    crc = json['CRC'];
    cup = json['CUP'];
    cve = json['CVE'];
    czk = json['CZK'];
    djf = json['DJF'];
    dkk = json['DKK'];
    dop = json['DOP'];
    dzd = json['DZD'];
    egp = json['EGP'];
    ern = json['ERN'];
    etb = json['ETB'];
    eur = json['EUR'];
    fjd = json['FJD'];
    fkp = json['FKP'];
    fok = json['FOK'];
    gbp = json['GBP'];
    gel = json['GEL'];
    ggp = json['GGP'];
    ghs = json['GHS'];
    gip = json['GIP'];
    gmd = json['GMD'];
    gnf = json['GNF'];
    gtq = json['GTQ'];
    gyd = json['GYD'];
    hkd = json['HKD'];
    hnl = json['HNL'];
    hrk = json['HRK'];
    htg = json['HTG'];
    huf = json['HUF'];
    idr = json['IDR'];
    ils = json['ILS'];
    imp = json['IMP'];
    inr = json['INR'];
    iqd = json['IQD'];
    irr = json['IRR'];
    isk = json['ISK'];
    jep = json['JEP'];
    jmd = json['JMD'];
    jod = json['JOD'];
    jpy = json['JPY'];
    kes = json['KES'];
    kgs = json['KGS'];
    khr = json['KHR'];
    kid = json['KID'];
    kmf = json['KMF'];
    krw = json['KRW'];
    kwd = json['KWD'];
    kyd = json['KYD'];
    kzt = json['KZT'];
    lak = json['LAK'];
    lbp = json['LBP'];
    lkr = json['LKR'];
    lrd = json['LRD'];
    lsl = json['LSL'];
    lyd = json['LYD'];
    mad = json['MAD'];
    mdl = json['MDL'];
    mga = json['MGA'];
    mkd = json['MKD'];
    mmk = json['MMK'];
    mnt = json['MNT'];
    mop = json['MOP'];
    mru = json['MRU'];
    mur = json['MUR'];
    mvr = json['MVR'];
    mwk = json['MWK'];
    mxn = json['MXN'];
    myr = json['MYR'];
    mzn = json['MZN'];
    nad = json['NAD'];
    ngn = json['NGN'];
    nio = json['NIO'];
    nok = json['NOK'];
    npr = json['NPR'];
    nzd = json['NZD'];
    omr = json['OMR'];
    pab = json['PAB'];
    pen = json['PEN'];
    pgk = json['PGK'];
    php = json['PHP'];
    pkr = json['PKR'];
    pln = json['PLN'];
    pyg = json['PYG'];
    qar = json['QAR'];
    ron = json['RON'];
    rsd = json['RSD'];
    rub = json['RUB'];
    rwf = json['RWF'];
    sar = json['SAR'];
    sbd = json['SBD'];
    scr = json['SCR'];
    sdg = json['SDG'];
    sek = json['SEK'];
    sgd = json['SGD'];
    shp = json['SHP'];
    sle = json['SLE'];
    sll = json['SLL'];
    sos = json['SOS'];
    srd = json['SRD'];
    ssp = json['SSP'];
    stn = json['STN'];
    syp = json['SYP'];
    szl = json['SZL'];
    thb = json['THB'];
    tjs = json['TJS'];
    tmt = json['TMT'];
    tnd = json['TND'];
    top = json['TOP'];
    tur = json['TRY'];
    ttd = json['TTD'];
    tvd = json['TVD'];
    twd = json['TWD'];
    tzs = json['TZS'];
    uah = json['UAH'];
    ugx = json['UGX'];
    uyu = json['UYU'];
    uzs = json['UZS'];
    ves = json['VES'];
    vnd = json['VND'];
    vuv = json['VUV'];
    wst = json['WST'];
    xaf = json['XAF'];
    xcd = json['XCD'];
    xdr = json['XDR'];
    xof = json['XOF'];
    xpf = json['XPF'];
    yer = json['YER'];
    zar = json['ZAR'];
    zmw = json['ZMW'];
    zwl = json['ZWL'];
  }

  num? usd;
  num? aed;
  num? afn;
  num? all;
  num? amd;
  num? ang;
  num? aoa;
  num? ars;
  num? aud;
  num? awg;
  num? azn;
  num? bam;
  num? bbd;
  num? bdt;
  num? bgn;
  num? bhd;
  num? bif;
  num? bmd;
  num? bnd;
  num? bob;
  num? brl;
  num? bsd;
  num? btn;
  num? bwp;
  num? byn;
  num? bzd;
  num? cad;
  num? cdf;
  num? chf;
  num? clp;
  num? cny;
  num? cop;
  num? crc;
  num? cup;
  num? cve;
  num? czk;
  num? djf;
  num? dkk;
  num? dop;
  num? dzd;
  num? egp;
  num? ern;
  num? etb;
  num? eur;
  num? fjd;
  num? fkp;
  num? fok;
  num? gbp;
  num? gel;
  num? ggp;
  num? ghs;
  num? gip;
  num? gmd;
  num? gnf;
  num? gtq;
  num? gyd;
  num? hkd;
  num? hnl;
  num? hrk;
  num? htg;
  num? huf;
  num? idr;
  num? ils;
  num? imp;
  num? inr;
  num? iqd;
  num? irr;
  num? isk;
  num? jep;
  num? jmd;
  num? jod;
  num? jpy;
  num? kes;
  num? kgs;
  num? khr;
  num? kid;
  num? kmf;
  num? krw;
  num? kwd;
  num? kyd;
  num? kzt;
  num? lak;
  num? lbp;
  num? lkr;
  num? lrd;
  num? lsl;
  num? lyd;
  num? mad;
  num? mdl;
  num? mga;
  num? mkd;
  num? mmk;
  num? mnt;
  num? mop;
  num? mru;
  num? mur;
  num? mvr;
  num? mwk;
  num? mxn;
  num? myr;
  num? mzn;
  num? nad;
  num? ngn;
  num? nio;
  num? nok;
  num? npr;
  num? nzd;
  num? omr;
  num? pab;
  num? pen;
  num? pgk;
  num? php;
  num? pkr;
  num? pln;
  num? pyg;
  num? qar;
  num? ron;
  num? rsd;
  num? rub;
  num? rwf;
  num? sar;
  num? sbd;
  num? scr;
  num? sdg;
  num? sek;
  num? sgd;
  num? shp;
  num? sle;
  num? sll;
  num? sos;
  num? srd;
  num? ssp;
  num? stn;
  num? syp;
  num? szl;
  num? thb;
  num? tjs;
  num? tmt;
  num? tnd;
  num? top;
  num? tur;
  num? ttd;
  num? tvd;
  num? twd;
  num? tzs;
  num? uah;
  num? ugx;
  num? uyu;
  num? uzs;
  num? ves;
  num? vnd;
  num? vuv;
  num? wst;
  num? xaf;
  num? xcd;
  num? xdr;
  num? xof;
  num? xpf;
  num? yer;
  num? zar;
  num? zmw;
  num? zwl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['USD'] = usd;
    map['AED'] = aed;
    map['AFN'] = afn;
    map['ALL'] = all;
    map['AMD'] = amd;
    map['ANG'] = ang;
    map['AOA'] = aoa;
    map['ARS'] = ars;
    map['AUD'] = aud;
    map['AWG'] = awg;
    map['AZN'] = azn;
    map['BAM'] = bam;
    map['BBD'] = bbd;
    map['BDT'] = bdt;
    map['BGN'] = bgn;
    map['BHD'] = bhd;
    map['BIF'] = bif;
    map['BMD'] = bmd;
    map['BND'] = bnd;
    map['BOB'] = bob;
    map['BRL'] = brl;
    map['BSD'] = bsd;
    map['BTN'] = btn;
    map['BWP'] = bwp;
    map['BYN'] = byn;
    map['BZD'] = bzd;
    map['CAD'] = cad;
    map['CDF'] = cdf;
    map['CHF'] = chf;
    map['CLP'] = clp;
    map['CNY'] = cny;
    map['COP'] = cop;
    map['CRC'] = crc;
    map['CUP'] = cup;
    map['CVE'] = cve;
    map['CZK'] = czk;
    map['DJF'] = djf;
    map['DKK'] = dkk;
    map['DOP'] = dop;
    map['DZD'] = dzd;
    map['EGP'] = egp;
    map['ERN'] = ern;
    map['ETB'] = etb;
    map['EUR'] = eur;
    map['FJD'] = fjd;
    map['FKP'] = fkp;
    map['FOK'] = fok;
    map['GBP'] = gbp;
    map['GEL'] = gel;
    map['GGP'] = ggp;
    map['GHS'] = ghs;
    map['GIP'] = gip;
    map['GMD'] = gmd;
    map['GNF'] = gnf;
    map['GTQ'] = gtq;
    map['GYD'] = gyd;
    map['HKD'] = hkd;
    map['HNL'] = hnl;
    map['HRK'] = hrk;
    map['HTG'] = htg;
    map['HUF'] = huf;
    map['IDR'] = idr;
    map['ILS'] = ils;
    map['IMP'] = imp;
    map['INR'] = inr;
    map['IQD'] = iqd;
    map['IRR'] = irr;
    map['ISK'] = isk;
    map['JEP'] = jep;
    map['JMD'] = jmd;
    map['JOD'] = jod;
    map['JPY'] = jpy;
    map['KES'] = kes;
    map['KGS'] = kgs;
    map['KHR'] = khr;
    map['KID'] = kid;
    map['KMF'] = kmf;
    map['KRW'] = krw;
    map['KWD'] = kwd;
    map['KYD'] = kyd;
    map['KZT'] = kzt;
    map['LAK'] = lak;
    map['LBP'] = lbp;
    map['LKR'] = lkr;
    map['LRD'] = lrd;
    map['LSL'] = lsl;
    map['LYD'] = lyd;
    map['MAD'] = mad;
    map['MDL'] = mdl;
    map['MGA'] = mga;
    map['MKD'] = mkd;
    map['MMK'] = mmk;
    map['MNT'] = mnt;
    map['MOP'] = mop;
    map['MRU'] = mru;
    map['MUR'] = mur;
    map['MVR'] = mvr;
    map['MWK'] = mwk;
    map['MXN'] = mxn;
    map['MYR'] = myr;
    map['MZN'] = mzn;
    map['NAD'] = nad;
    map['NGN'] = ngn;
    map['NIO'] = nio;
    map['NOK'] = nok;
    map['NPR'] = npr;
    map['NZD'] = nzd;
    map['OMR'] = omr;
    map['PAB'] = pab;
    map['PEN'] = pen;
    map['PGK'] = pgk;
    map['PHP'] = php;
    map['PKR'] = pkr;
    map['PLN'] = pln;
    map['PYG'] = pyg;
    map['QAR'] = qar;
    map['RON'] = ron;
    map['RSD'] = rsd;
    map['RUB'] = rub;
    map['RWF'] = rwf;
    map['SAR'] = sar;
    map['SBD'] = sbd;
    map['SCR'] = scr;
    map['SDG'] = sdg;
    map['SEK'] = sek;
    map['SGD'] = sgd;
    map['SHP'] = shp;
    map['SLE'] = sle;
    map['SLL'] = sll;
    map['SOS'] = sos;
    map['SRD'] = srd;
    map['SSP'] = ssp;
    map['STN'] = stn;
    map['SYP'] = syp;
    map['SZL'] = szl;
    map['THB'] = thb;
    map['TJS'] = tjs;
    map['TMT'] = tmt;
    map['TND'] = tnd;
    map['TOP'] = top;
    map['TRY'] = tur;
    map['TTD'] = ttd;
    map['TVD'] = tvd;
    map['TWD'] = twd;
    map['TZS'] = tzs;
    map['UAH'] = uah;
    map['UGX'] = ugx;
    map['UYU'] = uyu;
    map['UZS'] = uzs;
    map['VES'] = ves;
    map['VND'] = vnd;
    map['VUV'] = vuv;
    map['WST'] = wst;
    map['XAF'] = xaf;
    map['XCD'] = xcd;
    map['XDR'] = xdr;
    map['XOF'] = xof;
    map['XPF'] = xpf;
    map['YER'] = yer;
    map['ZAR'] = zar;
    map['ZMW'] = zmw;
    map['ZWL'] = zwl;
    return map;
  }
}
