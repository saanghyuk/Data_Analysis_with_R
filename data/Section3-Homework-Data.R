#Data

#monthly revenue
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
#monthly expenses
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#1 profit for each month
profit <- revenue-expenses
profit

#2 profit after tax for each month
profit_after_tax <- profit*0.7
profit_after_tax

#3 profit margin for each month
profit_margin <- profit_after_tax/revenue

#4 good months
mean_of_profit <- mean(profit_after_tax)
months <- profit_after_tax>mean_of_profit
good_months <- NA
for(i in 1:length(months)){

  if(months[i]){
    good_months <- append(good_months, i )
  }
}
good_months <- good_months[2:length(good_months)]
good_months

#bad months
bad_months <- NA
for(i in 1:length(months)){
  if(!months[i]){
    bad_months <- append(bad_months, i )
  }
}
bad_months <- bad_months[2:length(bad_months)]
bad_months


#best month

best_month <- NA
for(i in 1:length(profit_after_tax)){
  if(profit_after_tax[i] == max(profit_after_tax)){
    best_month <- i    
  }
}
best_month
#worst month
worst_month <- NA
for(i in 1:length(profit_after_tax)){
  if(profit_after_tax[i] == min(profit_after_tax)){
    worst_month <- i    
  }
}
worst_month

