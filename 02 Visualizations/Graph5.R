ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  facet_grid(PCLASS~SURVIVED) +
  labs(title='Titanic where age <= 10') +
  labs(x="SURVIVED", y=paste("FARE")) +
  layer(data=df5, 
        mapping=aes(x=SEX, y=as.numeric(as.character(FARE)), color=as.character(SEX)), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        #position=position_identity()
        position=position_jitter(width=0.3, height=0)
  )

