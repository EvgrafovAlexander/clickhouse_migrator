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

insert into table1
values
	(1, 2.3, True, 'comment1'),
	(2, 4.5, False, 'comment2'),
	(3, 6.7, True, 'comment3');
