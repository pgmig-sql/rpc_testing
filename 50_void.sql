/*
  Functions for testing void result

*/

-- -----------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION test_void (
  a_code TEXT DEFAULT ''
) RETURNS VOID LANGUAGE 'sql' AS
$_$
  UPDATE rpc.func_anno SET code=code WHERE code ~ a_code
$_$;
SELECT rpc.add('test_void'
, 'Args test'
, '{
    "a_code": "method.code filter"
   }'
);

-- -----------------------------------------------------------------------------
