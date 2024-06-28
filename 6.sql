create table history.courses
(
    name String,
    lanuage LowCardinality(String),
    description String,
    author_id  UInt32
)
engine = MergeTree()
order by name;

create materialized view direct_log.course_mv
to history.courses
as
    select name, lanuage, description, author_id
from stage.course
