#  rpc_testing/90_args
## args_regular

```sql
SELECT * FROM rpc_testing.test_args('index')
;
```
|test_args 
|----------
|index

## args_null

```sql
SELECT * FROM rpc_testing.test_args(NULL)
;
```
|test_args 
|----------
|

## args_default

```sql
SELECT * FROM rpc_testing.test_args()
;
```
|test_args 
|----------
|def

