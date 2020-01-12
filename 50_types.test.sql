/*
    Тесты
*/

-- -----------------------------------------------------------------------------
SAVEPOINT test_begin;
select pgmig.assert_count(1);

-- -----------------------------------------------------------------------------
SELECT pgmig.assert_eq('types'
, (SELECT jsonb_agg(row_to_json(r)) FROM rpc_testing.test_types(
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
, a_tjson := '{}'::json
, a_tjsonb := '{}'::jsonb
--, a_tjson := '[{"a":1}]'::json
--, a_tjsonb := '[{"a":1}]'::jsonb
-- , a_tmoney := 1234.5678::money
, a_tnumeric := 1234.5678::numeric
, a_ttext := 'text':: text
-- , a_ttime := '23:59:10'::time
, a_ttimestamp := '12/17/1997 15:37:16.00'::timestamp
, a_ttimestamptz := '1997-12-17 12:00 UTC'::timestamptz
-- , a_aint4 := array[1,2,3]::integer[]
, a_atext := array['abc','def']::text[]
) r)
, ' [
        {
            "id": 1,
            "atext": [
                "abc",
                "def"
            ],
            "tbool": true,
            "tchar": "a",
            "tdate": "1997-12-17",
            "tinet": "127.0.0.1/16",
            "tint2": 1234,
            "tint4": 12345678,
            "tint8": 12345678,
            "tjson": {
            },
            "ttext": "text",
            "tjsonb": {
            },
            "tfloat4": 12.34,
            "tfloat8": 1234.5678,
            "tnumeric": 1234.5678,
            "tinterval": "7 days",
            "ttimestamp": "1997-12-17T15:37:16",
            "ttimestamptz": "1997-12-17T15:00:00+03:00"
        },
        {
            "id": 2,
            "atext": [
                "zyx1",
                "zyx2"
            ],
            "tbool": false,
            "tchar": "x",
            "tdate": "2019-03-31",
            "tinet": "1.2.3.4/8",
            "tint2": 617,
            "tint4": 6172839,
            "tint8": 6172839,
            "tjson": {
            },
            "ttext": "texttext",
            "tjsonb": {
            },
            "tfloat4": 4.11333,
            "tfloat8": 411.5226,
            "tnumeric": 1234.5678,
            "tinterval": "7 days 01:00:00",
            "ttimestamp": "1997-12-17T15:37:16",
            "ttimestamptz": "1997-12-17T19:00:00+03:00"
        },
        {
            "id": 3,
            "atext": null,
            "tbool": null,
            "tchar": null,
            "tdate": null,
            "tinet": null,
            "tint2": null,
            "tint4": null,
            "tint8": null,
            "tjson": null,
            "ttext": null,
            "tjsonb": null,
            "tfloat4": null,
            "tfloat8": null,
            "tnumeric": null,
            "tinterval": null,
            "ttimestamp": null,
            "ttimestamptz": null
        }
    ]'
);

ROLLBACK TO SAVEPOINT test_begin;

