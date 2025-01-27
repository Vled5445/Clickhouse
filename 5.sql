
create table stage.course
(
    name String,
    duration_day UInt16,
    lanuage LowCardinality(String),
    description String,
    author_id  UInt32
)
engine = MergeTree()
order by name

create table direct_log.course
(
        name String,
    duration_day UInt16,
    lanuage LowCardinality(String),
    description String,
    author_id  UInt32
)
engine = Buffer(stage,course,16, 10, 100, 10000, 1000000, 10000000, 100000000);
