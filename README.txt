# Achadinhos BR — versão com produtos compartilhados

## O que foi corrigido
Agora o site tenta carregar e salvar os produtos no Supabase, em vez de usar somente o `localStorage`.
Assim, depois da configuração, um produto cadastrado no ADM fica disponível para os clientes em outros celulares/computadores.

## Configuração
1. Crie um projeto no Supabase.
2. Abra o SQL Editor e execute o arquivo `SUPABASE_SQL.sql`.
3. Vá em Project Settings > API.
4. Copie o Project URL e a chave `anon public`.
5. Abra `index.html` e substitua:
   - `COLE_AQUI_SUA_PROJECT_URL`
   - `COLE_AQUI_SUA_ANON_PUBLIC_KEY`
6. Publique o `index.html` + `logo.png` em seu hospedador.

## Importante
O login ADM desta versão ainda é um login simples no navegador. O banco fica online e os produtos ficam compartilhados, mas o controle de escrita não deve ser considerado seguro para uma loja pública.
Se quiser segurança de verdade, a próxima etapa é trocar o login por Supabase Auth e restringir INSERT/UPDATE/DELETE somente ao usuário ADM.

Sem preencher as duas chaves do Supabase, o site continua funcionando apenas localmente.
