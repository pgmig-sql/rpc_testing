#  rpc_testing/90_types
## types

```sql
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
)
;
```
|id | tbool | tchar |   tdate    | tfloat4 |  tfloat8  |    tinet     | tint2 |  tint4   |  tint8   |    tinterval    |   tjson   |   tjsonb   |  tmoney   | tnumeric  |  ttext   |   ttime    |     ttimestamp      |      ttimestamptz      |  aint4  |    atext    
|---|-------|-------|------------|---------|-----------|--------------|-------|----------|----------|-----------------|-----------|------------|-----------|-----------|----------|------------|---------------------|------------------------|---------|-------------
| 1 | t     | a     | 1997-12-17 |   12.34 | 1234.5678 | 127.0.0.1/16 |  1234 | 12345678 | 12345678 | 7 days          | [{"a":1}] | [{"a": 1}] | $1,234.57 | 1234.5678 | text     | 23:59:10   | 1997-12-17 15:37:16 | 1997-12-17 15:00:00+03 | {1,2,3} | {abc,def}
| 2 | f     | x     | 2019-03-31 | 4.11333 |  411.5226 | 127.0.0.1/16 |   617 |  6172839 |  6172839 | 7 days 01:00:00 | [{"a":1}] | [{"a": 1}] | $1,234.57 | 1234.5678 | texttext | 23:55:10.5 | 1997-12-17 15:37:16 | 1997-12-17 19:00:00+03 | {9,8,7} | {zyx1,zyx2}
| 3 |       |       |            |         |           |              |       |          |          |                 |           |            |           |           |          |            |                     |                        |         | 

