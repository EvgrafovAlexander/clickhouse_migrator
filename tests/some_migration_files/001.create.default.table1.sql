create table if not exists default.table1
(
    `id` Int16,
    `value` Nullable(Float64),
    `bool_value` Nullable(Int8),
    `str_value` Nullable(String)
)
engine = ReplacingMergeTree()
partition by id
ORDER BY (id)
settings index_granularity = 8192;
