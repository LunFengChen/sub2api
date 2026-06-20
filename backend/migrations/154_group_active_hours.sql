-- 分组时间段限制（UTC+8）
-- NULL 表示全天可用；支持跨夜（end < start，如 22 和 6 表示 22:00-次日06:00）
ALTER TABLE groups ADD COLUMN IF NOT EXISTS active_hours_start integer DEFAULT NULL;
ALTER TABLE groups ADD COLUMN IF NOT EXISTS active_hours_end   integer DEFAULT NULL;

COMMENT ON COLUMN groups.active_hours_start IS '允许访问的起始小时（UTC+8，0-23），NULL 表示全天可用';
COMMENT ON COLUMN groups.active_hours_end   IS '允许访问的结束小时（UTC+8，0-23），NULL 表示全天可用；end < start 表示跨夜';
