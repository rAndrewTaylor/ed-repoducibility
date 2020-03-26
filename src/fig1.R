# Generation of Figure 1

require(tidyverse)
require(xlsx)

df <- read("data/journal_articles_mod.xls")


df %>%
  select(open_code_yn:code_avail) %>%
  gather(key, value) %>%
  mutate(value = ifelse(value == 'N', 0, 1)) %>%
  xtabs(value ~ key, data = .)