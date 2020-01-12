/*
    Тесты
*/
/*
-- -----------------------------------------------------------------------------
SAVEPOINT test_begin;
select pgmig.assert_count(1);

-- -----------------------------------------------------------------------------
SELECT pgmig.assert_eq('void'
, rpc_testing.test_void('args')
, null
);

ROLLBACK TO SAVEPOINT test_begin;
*/
