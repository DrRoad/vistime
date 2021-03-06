context("vistime.R")

test_that("vistime main tests", {
  data <- data.frame(start = "2019-01-01", end = "2019-01-05", event = 1)

  generated <- vistime(data, events = "event", start = "start", end = "end",
                       groups = "group", colors = "color", fontcolors = "fontcolor",
                       tooltips = "tooltip", linewidth = NULL, title = NULL,
                       show_labels = TRUE, lineInterval = NULL, background_lines = 11)

  expected <- readRDS("test_plot_glued.rds")

  expect_equivalent(generated$x$attrs,
    expected$x$attrs,
    tolerance = 3601
  )

  expect_equivalent(generated$x$layout,
    expected$x$layout,
    tolerance = 3601
  )
})
