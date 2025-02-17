// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultadosImpl _$$ResultadosImplFromJson(Map<String, dynamic> json) =>
    _$ResultadosImpl(
      by: json['by'] as String,
      valid_key: json['valid_key'] as bool,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
      execution_time: (json['execution_time'] as num).toInt(),
      from_cache: json['from_cache'] as bool,
    );

Map<String, dynamic> _$$ResultadosImplToJson(_$ResultadosImpl instance) =>
    <String, dynamic>{
      'by': instance.by,
      'valid_key': instance.valid_key,
      'results': instance.results,
      'execution_time': instance.execution_time,
      'from_cache': instance.from_cache,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      currencies:
          Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
      stocks: Stocks.fromJson(json['stocks'] as Map<String, dynamic>),
      available_sources: (json['available_sources'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      taxes: json['taxes'] as List<dynamic>,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
      'stocks': instance.stocks,
      'available_sources': instance.available_sources,
      'taxes': instance.taxes,
    };

_$CurrenciesImpl _$$CurrenciesImplFromJson(Map<String, dynamic> json) =>
    _$CurrenciesImpl(
      source: json['source'] as String,
      usd: Currency.fromJson(json['USD'] as Map<String, dynamic>),
      eur: Currency.fromJson(json['EUR'] as Map<String, dynamic>),
      gbp: Currency.fromJson(json['GBP'] as Map<String, dynamic>),
      ars: Currency.fromJson(json['ARS'] as Map<String, dynamic>),
      cad: Currency.fromJson(json['CAD'] as Map<String, dynamic>),
      aud: Currency.fromJson(json['AUD'] as Map<String, dynamic>),
      jpy: Currency.fromJson(json['JPY'] as Map<String, dynamic>),
      cny: Currency.fromJson(json['CNY'] as Map<String, dynamic>),
      btc: Currency.fromJson(json['BTC'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrenciesImplToJson(_$CurrenciesImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'USD': instance.usd,
      'EUR': instance.eur,
      'GBP': instance.gbp,
      'ARS': instance.ars,
      'CAD': instance.cad,
      'AUD': instance.aud,
      'JPY': instance.jpy,
      'CNY': instance.cny,
      'BTC': instance.btc,
    };

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      name: json['name'] as String,
      buy: (json['buy'] as num).toDouble(),
      sell: (json['sell'] as num?)?.toDouble(),
      variation: (json['variation'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'buy': instance.buy,
      'sell': instance.sell,
      'variation': instance.variation,
    };

_$StocksImpl _$$StocksImplFromJson(Map<String, dynamic> json) => _$StocksImpl(
      ibovespa: Stock.fromJson(json['IBOVESPA'] as Map<String, dynamic>),
      ifix: Stock.fromJson(json['IFIX'] as Map<String, dynamic>),
      nasdaq: Stock.fromJson(json['NASDAQ'] as Map<String, dynamic>),
      dowjones: Stock.fromJson(json['DOWJONES'] as Map<String, dynamic>),
      cac: Stock.fromJson(json['CAC'] as Map<String, dynamic>),
      nikkei: Stock.fromJson(json['NIKKEI'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StocksImplToJson(_$StocksImpl instance) =>
    <String, dynamic>{
      'IBOVESPA': instance.ibovespa,
      'IFIX': instance.ifix,
      'NASDAQ': instance.nasdaq,
      'DOWJONES': instance.dowjones,
      'CAC': instance.cac,
      'NIKKEI': instance.nikkei,
    };

_$StockImpl _$$StockImplFromJson(Map<String, dynamic> json) => _$StockImpl(
      name: json['name'] as String,
      location: json['location'] as String,
      points: (json['points'] as num).toDouble(),
      variation: (json['variation'] as num).toDouble(),
    );

Map<String, dynamic> _$$StockImplToJson(_$StockImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'points': instance.points,
      'variation': instance.variation,
    };
