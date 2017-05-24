#Atividade 1
x = c()
for(i in 1:10){
  z = i
  while(z >= 1){
    x = c(x,i)
    z = z-1
  }
}

media = mean(x)

for(index in 1:length(x)){
  if(x[index] > media){
    break
  }
}
x = x[1:index-1]

#Atividade 2
#cbind
data = data.frame(peso=c(60,70,80), altura = c(160,150,170))
imcs = c()
for(i in 1:3){
  pessoa = data[i,];
  imcs = c(imcs,(pessoa[1]/ (pessoa[2]^2))) 
}

imc = data.frame(data,imc=imcs)

