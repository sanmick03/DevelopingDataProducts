---
title       : Body Mass Index - Calculator
subtitle    : Developing Data Products Project
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
host        : rpubs
---

## What is BMI?

The Body Mass Index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.
Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:
* BMI <18.5       : Underweight
* BMI [18.5-24.9] : Normal weight
* BMI [25-29.9]   : Overweight
* BMI >=30        : Obese

--- 

## How is it calculated?
There is a formula for calculating the BMI measure. The formula is the following:

BMI = weight(kg) / height(metres)$^2$

Thus for the next example, the BMI will be:


```r
wt = 75
ht = 1.80
BMI <- wt / ht^2
BMI
```

```
## [1] 23.14815
```


---

## Inference
The function use for calculating and inferring is the following:

```r
infer_f<-function(wt,ht){
    BMI_value<-wt/(ht^2)
    ifelse(BMI_value<18.5,"under wt",ifelse(BMI_value<25,"normal wt",
                            ifelse(BMI_value<30,"over wt","obese")))
}
```

For our example (weight=75 kg and height=1.80 m) the inference would be:


```r
infer_f(75 , 1.8)
```

```
## [1] "normal wt"
```

---

## Conclusion
The BMI is a relatively easy, cheap and non-invasive method for establishing weight status, and for most people, it correlates reasonably well with their level of body fat. 

However, BMI is only a proxy for body fatness. other factors such as fitness, ethnic origin and puberty can alter the relation between BMI and body fatness and must be taken into consideration.
