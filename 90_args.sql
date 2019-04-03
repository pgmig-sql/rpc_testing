/*
    Тесты
*/

-- -----------------------------------------------------------------------------
SELECT poma.test('args_regular'); -- BOT

SELECT * FROM rpc_testing.test_args('index'); -- EOT

-- -----------------------------------------------------------------------------
SELECT poma.test('args_null'); -- BOT

SELECT * FROM rpc_testing.test_args(NULL); -- EOT

-- -----------------------------------------------------------------------------
SELECT poma.test('args_default'); -- BOT

SELECT * FROM rpc_testing.test_args(); -- EOT
