test_that("Test long description prints",{
  expect_equal(fullDescribe("poptotal"),
               "Total population per state")
  expect_equal(fullDescribe(c("poptotal", "popfemale")),
               c("Total population per state",
                 "The number of residents who are female. Data for 2001 are unavailable."))
})
