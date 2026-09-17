-- Achadinhos BR - banco Supabase
create table if not exists public.products (
  id uuid primary key,
  name text not null,
  price text not null,
  category text default 'Ofertas',
  link text not null,
  desc text default '',
  photo text default '',
  created_at timestamptz not null default now()
);

alter table public.products enable row level security;

-- Público pode ver os produtos
create policy "public can read products"
on public.products for select
to anon, authenticated
using (true);

-- Para este protótipo, o ADM também grava usando a chave anon.
-- IMPORTANTE: isso NÃO é autenticação segura. Depois podemos trocar
-- o login do ADM por Supabase Auth.
create policy "public can insert products"
on public.products for insert
to anon, authenticated
with check (true);

create policy "public can update products"
on public.products for update
to anon, authenticated
using (true)
with check (true);

create policy "public can delete products"
on public.products for delete
to anon, authenticated
using (true);
