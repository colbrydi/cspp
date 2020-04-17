test_that("Test years prints",{
  expect_equal(years("poptotal"),
               cspp::variable_info$years[cspp::variable_info$variable.name=="poptotal"])
  expect_equal(years(c("poptotal", "popfemale")),
               c(cspp::variable_info$years[cspp::variable_info$variable.name=="poptotal"],
                 cspp::variable_info$years[cspp::variable_info$variable.name=="popfemale"]))
})
