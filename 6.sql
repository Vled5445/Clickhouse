create table current.courses
(
    name String,
    lanuage LowCardinality(String),
    description String,
    author_id  UInt32
)
engine = MergeTree()
order by name;

create materialized view direct_log.course_mv
to current.courses
as
    select name, lanuage, description, author_id
from stage.course
