/*:
## App Exercise - Fitness Calculations
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracker keeps track of users' heart rate, but you might also want to display their average heart rate over the last hour. Create three constants, `heartRate1`, `heartRate2`, and `heartRate3`. Give each constant a different value between 60 and 100. Create a constant `addedHR` equal to the sum of all three heart rates. Now create a constant called `averageHR` that equals `addedHR` divided by 3 to get the average. Print the result.
 */
let heartRate1 = 65
let hearRate2 = 88
let heartRate3 = 100
let addedHR = heartRate1+hearRate2+heartRate3
let averageHR = addedHR/3
print(averageHR)
//:  Now create three more constants, `heartRate1D`, `heartRate2D`, and `heartRate3D`, equal to the same values as `heartRate1`, `heartRate2`, and `heartRate3`. These new constants should be of type `Double`. Create a constant `addedHRD` equal to the sum of all three heart rates. Create a constant called `averageHRD` that equals the `addedHRD` divided by 3 to get the average of your new heart rate constants. Print the result. Does this differ from your previous average? Why or why not?
let heartRate1D: Double = 65.0
let hearRate2D: Double = 88.0
let heartRate3D: Double = 100.0
let addedHRD: Double = heartRate1D+hearRate2D+heartRate3D
let averageHRD: Double = addedHRD/3.0
print(averageHRD)
print("Instead of the average being 84, the average is now 84.3333. This is becaus eit is of type double so it can have decimals now")
//:  Imagine that partway through the day a user has taken 3,467 steps out of the 10,000 step goal. Create constants `steps` and `goal`. Both will need to be of type `Double` so that you can perform accurate calculations. `steps` should be assigned the value 3,467, and `goal` should be assigned 10,000. Create a constant `percentOfGoal` that equals an expression that evaluates to the percent of the goal that has been achieved so far.
let steps: Double = 3467
let goal: Double = 10000
let percentOfGoal: Double = steps/goal
/*:
[Previous](@previous)  |  page 2 of 8  |  [Next: Exercise - Compound Assignment](@next)
 */
