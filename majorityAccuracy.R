# #Majority Vote Accuracy
# For Johns Hopkins / Machine Learning in R

# n <- 5 # Independent Classifiers
# k <- 3 #
#
# accuracy <- 0.7
#
# majorityAccu(5, 3, .7) # 83.7% Accuracy
# majorityAccu(101, 51, .7) #99.9% Accuracy
#
#
# ( choose(5,3)*(.7^3)*(.3^2) ) + ( choose(5,4)*(.7^4)*(.3^1) ) + ( choose(5,5)*(.7^5)*(.3^0) )

majorityAccu <- function(n, k, accuracy){
    a <- NULL
    for (x in 0:(k - 1)) {
        
        a[x+1] <- ( choose(n, k + x) * (accuracy ^ (k + x)) )
        
    }
    
    b <- NULL
    for (y in (n-k):0) {
        b[y] <- ( (1-accuracy)^(k - y) )
    }
    b[k] <- 1
    
    print(sum(a*b))
}