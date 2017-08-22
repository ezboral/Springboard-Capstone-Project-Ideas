a <-clean %>% 
  group_by(LoanAmtBin) %>%
  summarise(Def = sum(DefaultOct05 == 'Def'),
            NDef = sum(DefaultOct05 != 'Def'),
            DRate = mean(DefaultOct05 == 'Def'))

b <-clean %>% 
  group_by(AgeBin) %>%
  summarise(Def = sum(DefaultOct05 == 'Def'),
            NDef = sum(DefaultOct05 != 'Def'),
            DRate = mean(DefaultOct05 == 'Def'))

c <-clean %>% 
  group_by(Gender) %>%
  summarise(Def = sum(DefaultOct05 == 'Def'),
            NDef = sum(DefaultOct05 != 'Def'),
            DRate = mean(DefaultOct05 == 'Def'))

agglist <- list(a, b, c)

do.call(rbind, agglist)