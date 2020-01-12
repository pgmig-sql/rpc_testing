/*
    Тесты
*/

-- -----------------------------------------------------------------------------
SAVEPOINT test_begin;
select pgmig.assert_count(3);

-- -----------------------------------------------------------------------------

SELECT pgmig.assert_eq('test_index'
, rpc_testing.test_args('index')
, 'index'
);

-- -----------------------------------------------------------------------------
SELECT pgmig.assert_eq('test_null'
, rpc_testing.test_args(null)
, null
);

-- -----------------------------------------------------------------------------
SELECT pgmig.assert_eq('args_default'
, rpc_testing.test_args()
, 'def'
);

ROLLBACK TO SAVEPOINT test_begin;
