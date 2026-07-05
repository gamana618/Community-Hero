-- Enable uuid-ossp extensions if needed (Supabase usually has this enabled by default)
create extension if not exists "uuid-ossp";

-- 1. Create reporters table
create table if not exists reporters (
    id uuid primary key,
    display_name text,
    points int default 0,
    badge text default 'scout',
    created_at timestamptz default now()
);

-- 2. Create issues table
create table if not exists issues (
    id uuid primary key default gen_random_uuid(),
    title text,
    description text,
    category text,
    media_url text,
    media_type text check (media_type in ('image', 'video')),
    lat float8,
    lng float8,
    status text default 'reported',
    upvotes int default 0,
    reporter_id text, -- text nullable as requested
    created_at timestamptz default now()
);

-- 3. Storage bucket initialization
-- Insert the bucket entry into storage.buckets (or create via dashboard with public access allowed)
insert into storage.buckets (id, name, public) 
values ('issue-media', 'issue-media', true)
on conflict (id) do nothing;

-- 4. Enable Row Level Security (RLS) policies for the storage bucket 'issue-media'
-- Note: Ensure that policies allow public read and upload for our app
create policy "Allow Public Read Access" on storage.objects 
  for select using (bucket_id = 'issue-media');

create policy "Allow Public Upload Access" on storage.objects 
  for insert with check (bucket_id = 'issue-media');

-- 5. Enable Realtime Replication for the issues table
-- This allows Supabase to broadcast INSERT/UPDATE events in real-time
alter publication supabase_realtime add table issues;
