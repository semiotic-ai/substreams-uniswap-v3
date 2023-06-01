create index if not exists uniswap_day_data_id_block_range_excl on "sgdXXX"."uniswap_day_data" using gist (id, block_range);
create index if not exists brin_uniswap_day_data on "sgdXXX"."uniswap_day_data" using brin(lower(block_range), coalesce(upper(block_range), 2147483647), vid);
create index if not exists uniswap_day_data_block_range_closed on "sgdXXX"."uniswap_day_data"(coalesce(upper(block_range), 2147483647)) where coalesce(upper(block_range), 2147483647) < 2147483647;
create index if not exists attr_13_0_uniswap_day_data_id on "sgdXXX"."uniswap_day_data" using btree("id");
create index if not exists attr_13_1_uniswap_day_data_date on "sgdXXX"."uniswap_day_data" using btree("date");
create index if not exists attr_13_2_uniswap_day_data_volume_eth on "sgdXXX"."uniswap_day_data" using btree("volume_eth");
create index if not exists attr_13_3_uniswap_day_data_volume_usd on "sgdXXX"."uniswap_day_data" using btree("volume_usd");
create index if not exists attr_13_4_uniswap_day_data_volume_usd_untracked on "sgdXXX"."uniswap_day_data" using btree("volume_usd_untracked");
create index if not exists attr_13_5_uniswap_day_data_total_value_locked_usd on "sgdXXX"."uniswap_day_data" using btree("total_value_locked_usd");
create index if not exists attr_13_6_uniswap_day_data_fees_usd on "sgdXXX"."uniswap_day_data" using btree("fees_usd");
create index if not exists attr_13_7_uniswap_day_data_tx_count on "sgdXXX"."uniswap_day_data" using btree("tx_count");
