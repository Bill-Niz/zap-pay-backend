create table "public"."shops" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "name" character varying,
    "description" character varying
);


alter table "public"."shops" enable row level security;

CREATE UNIQUE INDEX shops_pkey ON public.shops USING btree (id);

alter table "public"."shops" add constraint "shops_pkey" PRIMARY KEY using index "shops_pkey";

grant delete on table "public"."shops" to "anon";

grant insert on table "public"."shops" to "anon";

grant references on table "public"."shops" to "anon";

grant select on table "public"."shops" to "anon";

grant trigger on table "public"."shops" to "anon";

grant truncate on table "public"."shops" to "anon";

grant update on table "public"."shops" to "anon";

grant delete on table "public"."shops" to "authenticated";

grant insert on table "public"."shops" to "authenticated";

grant references on table "public"."shops" to "authenticated";

grant select on table "public"."shops" to "authenticated";

grant trigger on table "public"."shops" to "authenticated";

grant truncate on table "public"."shops" to "authenticated";

grant update on table "public"."shops" to "authenticated";

grant delete on table "public"."shops" to "service_role";

grant insert on table "public"."shops" to "service_role";

grant references on table "public"."shops" to "service_role";

grant select on table "public"."shops" to "service_role";

grant trigger on table "public"."shops" to "service_role";

grant truncate on table "public"."shops" to "service_role";

grant update on table "public"."shops" to "service_role";