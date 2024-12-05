# Sample_Size_calculator
This is the repository for host the shiny app for Module5 in Developing Data Products

Introduction of Sample Size Calculator

Jiaqi Li

2024-12-01

Introduction

Power calculation is a critical step in designing studies to ensure they are statistically valid and efficient. It determines the sample size required to detect a meaningful difference between groups with a certain level of confidence.
This sample size calculator is designed for hypothesis testing for two independent groups with continuous data:

Alpha (Significance Level): The probability of rejecting the null hypothesis when it is true (Type I error). Commonly set to 0.05. 

Power (1-Beta): The probability of correctly rejecting the null hypothesis when it is false. Typically, a power of 0.8 (80%) is considered acceptable. 

Effect Size: The difference between group means relative to their variability. Larger differences or smaller variability result in smaller required sample sizes.

How to Use the Sample Size Calculator App

This Shiny app provides an interactive way to calculate the required sample size for two independent groups and visualize the group distributions.

1, Open the app in your browser 

2, Input Parameters: 

Group 1 Mean: Use the slider to specify the mean of the first group.

Group 1 Variance: Use the slider to set the variance for Group 1. 

Group 2 Mean: Use the slider to specify the mean of the second group. 

Alpha (Significance Level): Use the slider to select the desired significance level, ranging from 0 to 1 (Default: 0.05 for 5%). 

Power (1-Beta): Use the slider to set the desired power level, ranging from 0 to 1 (Default: 0.8 for 80%). 

3, Click: Submit 

Sample Size Output: The app displays the required sample size per group based on the inputs. 

Distribution Plot: A visual representation of the two group distributions is shown.

# Links to Project App&Docs
