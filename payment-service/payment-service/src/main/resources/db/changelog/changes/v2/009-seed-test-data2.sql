insert into wallets (user_id,currency,balance,wallet_number,status)
select id,'RUB',235580.32,'IVAN_RUB_WALLET','ACTIVE' from users where email = 'ivan@test.com';
  
insert into wallets (user_id,currency,balance,wallet_number,status)
select id,'USD',256.32,'IVAN_USD_WALLET','FROZEN' from users where email = 'ivan@test.com';
  
insert into wallets (user_id,currency,balance,wallet_number,status)
select id,'RUB',13577.00,'PETR_RUB_WALLET','ACTIVE' from users where email = 'petr@test.com';

insert into transactions (from_wallet_id,to_wallet_id,amount,currency,type,status,description,idempotency_key)
select distinct wdeb.id,wcre.id,10.00,'RUB','TRANSFER','PENDING','info','dfg98797g5lkjlkjgdflgjd8s7g6t8d698yu9' from wallets wdeb join wallets wcre on wcre.wallet_number = 'PETR_RUB_WALLET'  where wdeb.wallet_number = 'IVAN_RUB_WALLET';

insert into transactions (from_wallet_id,to_wallet_id,amount,currency,type,status,description,idempotency_key)
select distinct wcre.id,wdeb.id,2.00,'RUB','DEPOSIT','COMPLETED','info','65416dsgdffdiuyhiuthihkjltfnhlkfnklghnkgfnh' from wallets wdeb join wallets wcre on wcre.wallet_number = 'PETR_RUB_WALLET'  where wdeb.wallet_number = 'IVAN_RUB_WALLET';