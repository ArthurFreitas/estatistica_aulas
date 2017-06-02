SamuData = read.csv("solicitacoes2015.csv",sep=";") #csv reader
calculateMeanOfDF(SamuData) #function call

calculateMeanOfDF = function(param){ #def função, ultima linha é o retorno
  for(i in names(param)){ #itera sobre os nomes das colunas do dataframe
    if(class(param[[i]]) == "integer"){ #class retorna tipo em string "integer" ou whatever
      param[[paste(i, 'mean', sep="_")]] <- mean(param[[i]],na.rm=TRUE) #cria coluna on the fly, estilo object de js
    }
  }
  View(param)#visualiza os dados
  param$paciente_idadeanos_mean#acesso a coluna de dataframe
  ?hist #=== help(hist)
  hist(param$paciente_idadeanos)#plota histograma
}

#param$coluna === param[["coluna"]]
#hist(AirPassengers, xlab="Passengers", border="black", col = "blue", xlim=c(150,500), las=1, angle=45)