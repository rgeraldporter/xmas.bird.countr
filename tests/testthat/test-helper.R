context("helper")

test_that("file safe name is generated", {
  skip_on_cran()
  slash <- FileSafeName("Hairy/Downy Woodpecker")
  expect_equal(slash, "Hairy_or_Downy Woodpecker")
  spuh <- FileSafeName("sparrow sp.")
  expect_equal(spuh, "sparrow sp")
})
