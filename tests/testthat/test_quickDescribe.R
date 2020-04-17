test_that("Test short description prints",{
  expect_equal(quickDescribe("poptotal"),
               "Population total")
  expect_equal(quickDescribe(c("poptotal", "popfemale")),
               c("Population total",
                 "Female population"))
})
