mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups='keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) #import dataset into ggplot2

plt + geom_line()

plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(15:30)) #add line plot with labels

head(mpg)
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv,size=cty))
plt+geom_point() + xlab("Engine Size(L)") + ylab("City Fuel-Eficiency (MPG)") #add scatter plot

plt + geom_point() + labs(x="Engine Size (L)",y="City Fuel-Efficiency (MPG)",color="Vehicle Class")

plt + geom_point() + labs(x="Engine Size (L)",y="City Fuel-Efficiency (MPG)",color="Vehicle Class",shape="Type of Drive",size="City Fuel-Efficiency (MPG)")


plt <- ggplot(mpg,aes(y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() #add boxplot


plt <- ggplot(mpg,aes(x=manufacturer,y=hwy,color=class,shape=drv)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) #add boxplot and rotate x-axis labels 45 degrees


mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table

plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))

plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)") #create heatmap with labels



mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
  