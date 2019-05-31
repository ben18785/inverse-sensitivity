### Based on MosegaardTarantola2002_best (MT2002_best)

* Deterministic: Equation (46) gives a form for the posterior parameter distribution when the forward model is deterministic
  * Assume that $g_m$ and $g_d$ are the identity matrices since we are using Cartesian coordinates
  * $F \in \R^{m\times p}$, where $m$ is the number of outputs and $p$ is the number of parameters, is a matrix of derivatives
  * Important to add the identity matrix to the numerator of the determinant expression
  * Have tried this out on the non-linear map problem and it works! Although on close examination, there are v. small differences -- not clear whether these are it not working or whether it's difficult to target this distribution?
  * Currently I have coded up eq. (129) in MT2002_best, which also seems to result in slight differences vs the target distribution assuming that the matrices defining the metric are $g_{uv}$ is ones and the diagonal matrices of $\boldsymbol{g}$ are identity 
  * Actually not sure the corrections with the determinant are doing much seeing as the target is close to the actual even if I just do simple Metropolis!
  * Even with problem where simple Metropolis fails more substantially, the corrections we make to MCMC don't appear to help
  * **I think that Tarantola is examining a different inverse problem where probability distributions are combined by conjunction**
* Stochastic forward model: less clear whether the authors are solving the same inverse problem
  * When using eq. (74), to determine the posterior distribution for the $X_i\sim N(\mu,\sigma)​$ case, as $\sigma\rightarrow 0​$ the variance of the estimated posterior decreases when it should be increasing
  * In Figure 1.12 in Tarantola2005, the positions of the peaks of the distributions for data do not line up. This seems evident from eq. (68) in MT2002_best (ignoring the homogeneous probability denominator) since the two densities for $d$ combine conjunctively, meaning the resultant distribution is the average of them.

### Open questions

* Why does the Tarantola inverse problem agree with ours for a deterministic forward model?
  * From eq. (68)-(69) in MT2002_best, the posterior for data is just the target distribution because:
    * $\sigma(d) \propto \int \rho_M(m) \rho_D(d) \delta(d-f(m))\mathrm{d}m = \rho_D(d) \int_{f(m)=d} \rho_M(m) \mathrm{d}m$? 
    * $\sigma(m) \propto \int \rho_M(m) \rho_D(d) \delta(d-f(m))\mathrm{d}d=\rho_M(m) \rho_D(f(m))$
    * Neither of the above are correct. Is the homogeneous probability for the data dimension not homogeneous after all? Don't think so, given eq. (47) is when nonlinearities are weak -- the opposite of our problem?
    * Or, is the inverse problem actually just different?