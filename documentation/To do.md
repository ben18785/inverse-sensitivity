

## Big things

* Make clear that the theory isn't necessarily novel but it is new for this audience
* Make clear that this paper is different to Bayesian inference but is a formalisation of sensitivity analyses that describes uncertainty in input parameters coherent with a given output
  * Also explain why this method is different to standard MCMC
  * Can we represent the different in problems between standard  Bayes / MCMC and the current approach?
* Lessen claims about computational burden increasing with number of outputs
* Can the output distribution always be reached?
* [x] Change eq. 3 to the Dirac delta function
* Make explicit reference 17 to many-to-one Jacobian calculation. Also make clear that this calculation requires knowing the level sets of Q. So even if we can numerically determine the sensitivities, we are still stuck!
* "Our approach, therefore, consists of two distinct steps..." refers to section $4.2 which is actually before this
* Combine algorithm 2 with 1 since in the first case $p(\lambda) = const.$  
* Shorten and simplify since it has already been discussed at length in $4.1: "For many-to-one maps, no inverse map exists, meaning that a given output value (unless a singular point) corresponds to a number of input vectors. This means that a given output distribution can be produced from a variety of input distributions. Like in Bayesian inference, to reduce the set of allowable input distributions to one, we specify a prior distribution over input parameters. In contrast to Bayesian inference, this prior
  is specified as a conditional probability distribution, where we condition on particular output values."
* Tools such as Sobol's method, the FAST algorithm, and FIM-based identifiability measures are regularly used to perform this task [sensitivity analysis]. What's the difference here? We are looking at inverse sensitivity anaysis
* The applications to computational biology in the current manuscript are shallow. The three examples used are textbook models, with no effort to put them into a meaningful context. Could we use a summary statistic example?
* Likewise, your initial derivation relies on a distinction between values of the output quantities and values of a collection of data points, which requires the reader to follow an implicit shift from values to distributions. We need to explain that fitting a distribution to output data is an essential part of the algorithm.
* Clean up and better explain example 1 as per Reviewer #4's comments
* Explain more: "For a finite sample size for 220 the first step, the sampling distribution of the Markov chain in the second step does not exactly converge to the target distribution due to Jensen’s inequality"

## Small things

* "many models are highly parametrized"
* “output value is “singular”” clarify
* Michaelis-Menten model of enzyme kinetics?
* Make consistent use of inputs vs input parameters

# Tu et al analysis

* Take average of data at t=0
* Non-dimensional time?
* In Julia, fit a kernel density estimator to 3d output data at t=12 and t=72



### Results

* mBounds = [[40 60]; [4 6]; [0.5 15]; [0 0.5]; [2 4]; [2 20]; [0 0.2]];

  * ```
    4.84356  0.558021  0.862116  3.21376
    ```

    ```
    0.263702   -0.0422736    0.0687865  -0.0513065
     -0.0422736   0.00934229  -0.0179715   0.0314511
      0.0687865  -0.0179715    0.15016    -0.294149 
      -0.0513065   0.0314511   -0.294149    0.944201 
    ```

  * See screenshot on 10th June 2020 in "old_figs"

* mBounds = [[40 60]; [4 8]; [0.5 16]; [0 0.7]; [2 4]; [2 20]; [0 0.2]];

  * ```
    4.90413  0.570053  1.13278  2.68944
    ```

    ```
    1.10002    -0.0950675  -0.126812    0.437985 
     -0.0950675   0.0142869  -0.0136173   0.0150131
     -0.126812   -0.0136173   0.315512   -0.537052 
      0.437985    0.0150131  -0.537052    1.25463  
    ```

  * See first screenshot on 11th June 2020 in "old_figs"