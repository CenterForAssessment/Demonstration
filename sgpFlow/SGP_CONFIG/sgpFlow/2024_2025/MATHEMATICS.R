#############################################################################
### 2024 sgpFlow configurations: MATHEMATICS DEMONSTRATION
#############################################################################

sgpFlow_MATHEMATICS.config <- list(
    MATHEMATICS_GRADE_3 = list(
        grade.progression="3",
        grade.projection.sequence=c("4", "5", "6", "7", "8", "9", "10"),
        content_area.progression="MATHEMATICS",
        content_area.projection.sequence=c("MATHEMATICS", "MATHEMATICS", "MATHEMATICS", "MATHEMATICS", "MATHEMATICS", "MATHEMATICS", "MATHEMATICS"),
        year_lags.progression=as.integer(NULL),
        year_lags.projection.sequence=c(1L, 1L, 1L, 1L, 1L, 1L, 1L),
        max.order.for.progression=2L,
#        growth.distributions=list("UNIFORM_RANDOM", "50", "1", "99", "BETA", "FREE_REDUCED_LUNCH_STATUS"))
        growth.distributions=list("UNIFORM_RANDOM", "50", "1", "99"))
    )
