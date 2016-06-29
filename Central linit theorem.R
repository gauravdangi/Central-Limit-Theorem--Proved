hist(bdata$income)
library(ggplot2)
attach(bdata)
ggplot(bdata,aes(x=income))+geom_histogram(aes(fill=gender))#qplot provide better graphics

clt_fun=function(){
  
    
    x=sample(bdata$income,25,replace = T)
     
     x1=mean(x)
     return(x1)
    
    
   }
ans=NULL

#Let's create 7000 samples

 for(i in 1:7000){
   ans[i]=clt_fun()
 }  
  qplot(ans,xlab="Income",ylab="Frequency",main="Frequency distribution of Income")
  
  
  mean(ans)           # 152389.1
  mean(bdata$income)  # 152461.9
  
  plot(density(income))
  lines(density(ans),col=3)
   