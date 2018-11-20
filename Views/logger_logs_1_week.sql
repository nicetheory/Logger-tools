create or replace force view logger.logger_logs_1_week as
select
	 l.id
  , ll.level_text
  , l.time_stamp
  , l.text
  , l.scope
  , l.module
  , l.action
  , l.user_name
  , l.call_stack
  , l.unit_name
  , l.line_no
  , l.extra
  , l.sid
  , l.client_identifier
  , l.client_info
from logger_logs l
join logger_levels ll on (l.logger_level = ll.logger_level)
where l.time_stamp > systimestamp - 7
order by l.time_stamp desc
/
