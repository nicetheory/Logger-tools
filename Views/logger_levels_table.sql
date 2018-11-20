-- Create table logger level for levels text
--alter trigger mf.source_hist_trg disable;

create table LOGGER.LOGGER_LEVELS
(
  logger_level NUMBER(3) not null,
  level_text   VARCHAR2(20) not null,
  primary key (LOGGER_LEVEL)
)
organization index;

--alter trigger mf.source_hist_trg enable;

insert into logger.logger_levels (logger_level, level_text) values (1, 'PERMANENT');
insert into logger.logger_levels (logger_level, level_text) values (2, 'ERROR');
insert into logger.logger_levels (logger_level, level_text) values (4, 'WARNING');
insert into logger.logger_levels (logger_level, level_text) values (8, 'INFO');
insert into logger.logger_levels (logger_level, level_text) values (16, 'DEBUG');
insert into logger.logger_levels (logger_level, level_text) values (32, 'TIMING');
insert into logger.logger_levels (logger_level, level_text) values (64, 'SYS_CONTEXT');
insert into logger.logger_levels (logger_level, level_text) values (128, 'APEX');
commit;
select * from logger_levels;
