subjects <- c('msa', 'psad', 'ssd', 'tiksod')

marks <- c(9, 4, 7, 10)
has_i_in_the_name <- c(F,F,F,T)
is_connected_with_statistics <- c(T, F, F, F)
was_interesting <- c(T, F, T, F)
word_number <- sapply(subjects, nchar)

fit <- lm(marks ~ #has_i_in_the_name + 
            #word_number + 
            is_connected_with_statistics + 
            was_interesting
            )
summary(fit)
mikp <- data.frame(#has_i_in_the_name = c(T),
                   #word_number = c(4),
                   is_connected_with_statistics = c(T),
                   was_interesting = c(T)
                   )
forecast(fit, newdata = mikp)
