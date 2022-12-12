# FeatureSpaceDiagram
Generating feature space diagrams in R

This is a first effort to implement "feature space diagrams" in R, inspired by:
https://towardsdatascience.com/escape-the-correlation-matrix-into-feature-space-4d71c51f25e5

## Workflow

Our workflow is generally as described in the original post:

* Generate the correlation matrix
* Create a distance matrix from the correlation matrix
    * Original approach: Take the absolute value of correlation matrix and subtract each value from 1.
    * Revised approach: use R's `dist()` function to provide different approaches to finding distance
* Use PCA to reduce our NxN distance matrix to Nx2.
* Plot each feature’s location using the first two principal components.
* Use Feature Agglomeration (hierarchical clusterimg) to generate feature clusters.
* Color each feature by its cluster.
* Draw lines to represent relationships based on some threshold

## Acknowledgements

Many thanks to [Win Cowger](https://mastodon.social/@wincowger) and the rest of the [#Rstats Fediverse community](https://mastodon.social/@rstats@a.gup.pe) for the inspiration!

![image](https://user-images.githubusercontent.com/358649/207143886-d834decd-8df1-410d-bc29-c61a4667a1ec.png)
