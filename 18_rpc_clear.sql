/*
  Удалить все регистрации методов пакета в RPC.
  При создании методы повторят регистрацию
*/
SELECT rpc.nsp_clear(:'PKG');
