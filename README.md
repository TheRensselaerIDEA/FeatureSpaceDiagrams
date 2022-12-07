# FeatureSpaceDiagram
Generating feature space diagrams in R

This is a first effort to implement "feature space diagrams" in R, inspired by:
https://towardsdatascience.com/escape-the-correlation-matrix-into-feature-space-4d71c51f25e5

## Workflow

Our workflow is generally as described in the original post:

* Generate the correlation matrix
* Take the absolute value of correlation matrix and subtract each value from 1. The result is a distance matrix.
* Use PCA to reduce our NxN matrix to Nx2.
* Plot each feature’s location using the two principal components.
* Use Feature Agglomeration to generate feature clusters.
* Color each feature by its cluster.
* Draw lines to represent relationships of at least r = 0.7 (or user’s choosing)

