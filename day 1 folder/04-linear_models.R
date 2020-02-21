library(AmesHousing)
library(tidymodels)

ames = AmesHousing::make_ames()

lm_ames = lm (Sale_Price ~ Gr_Liv_Area, data = ames)
lm_ames

broom::tidy(lm_ames)

#tidymodels
#parsnip

library(parsnip)

#pick a model, linear regression
#pick the engine, lm
#mode

lm_spec = parsnip::linear_reg()%>%
  parsnip::set_engine("lm")

lm.fit = parsnip::fit(lm_spec, Sale_Price ~ Gr_Liv_Area, data = ames)

broom::tidy(lm.fit)
