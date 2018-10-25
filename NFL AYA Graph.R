aya_graph <- 
  ggplot(Adj_Yd_Att, aes(x = AYA, y = WPCT)) + 
  geom_point(color='gray24') +
  stat_smooth(method = 'lm',
              color = 'honeydew4',
              se = FALSE,
              size = .55) +
  geom_text_repel(aes(label=QB,color=factor(WPCT)),size=2.5) +
  theme(legend.position="none",plot.title = element_text(hjust = 0.5)) + 
  labs(y = "Win %", x = "Adjusted Yards Per Attempt",
                 title = "Win % ~ Adj. Yards Per Attempt")