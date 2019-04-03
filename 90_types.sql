/*
    Тесты
*/

-- -----------------------------------------------------------------------------
SELECT poma.test('types'); -- BOT

SELECT * FROM rpc_testing.test_types(
  a_tbool := 1::bool              
, a_tchar := 'a'::char
, a_tdate := '1997-12-17'::date
, a_tfloat4 := 12.34::float4
, a_tfloat8 := 1234.5678::float8
, a_tinet := '127.0.0.1/16'::inet
, a_tint2 := 1234::int2
, a_tint4 := 12345678::int4
, a_tint8 := 12345678::int8
, a_tinterval := '1 week'::interval
, a_tjson := '[{"a":1}]'::json
, a_tjsonb := '[{"a":1}]'::jsonb
, a_tmoney := 1234.5678::money
, a_tnumeric := 1234.5678::numeric
, a_ttext := 'text':: text 
, a_ttime := '23:59:10'::time
, a_ttimestamp := '12/17/1997 15:37:16.00'::timestamp
, a_ttimestamptz := '1997-12-17 12:00 UTC'::timestamptz
, a_aint4 := array[1,2,3]::int4[]
, a_atext := array['abc','def']::text[]
); -- EOT
