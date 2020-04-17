test_that("Test Citation prints",{
  expect_equal(citation("beer_tax"),
               'Tax Foundation. "How High Are Beer Taxes in Your State?" Center for State Tax Policy.')
  expect_equal(citation(c("beer_tax", "spirit_tax")),
               c('Tax Foundation. "How High Are Beer Taxes in Your State?" Center for State Tax Policy.',
                 'Tax Foundation. "How High Are Beer Taxes in Your State?" Center for State Tax Policy.'))
})
