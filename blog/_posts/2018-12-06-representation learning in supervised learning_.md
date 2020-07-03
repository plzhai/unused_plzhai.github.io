---
layout: post
title: 好的特征是怎样的？
category: communicate
tags: [Representation Learning, Deep Learning]
---
然而，值得思考的是“重构”这个要求是否合理？

首先，我们可以发现通过低维编码重构原图的结果通常是很模糊的，这可以解释为损失函数mse要求“逐像素”重建过于苛刻。又或者可以理解为，对于图像重构事实上我们并没有非常适合的loss可以选用，最理想的方法是用对抗网络训练一个判别器出来，但是这会进一步增加任务难度。

其次，一个很有趣的事实是：我们大多数人能分辨出很多真假币，但如果要我们画一张百元大钞出来，我相信基本上画得一点都不像。这表明，对于真假币识别这个任务，可以设想我们有了一堆真假币供学习，我们能从中提取很丰富的特征，但是这些特征并不足以重构原图，它只能让我们分辨出这堆纸币的差异。也就是说，对于数据集和任务来说，**合理的、充分的特征并不一定能完成图像重构。**
上面的讨论表明，重构不是好特征的必要条件。**好特征的基本原则应当是“能够从整个数据集中辨别出该样本出来”，**也就是说，提取出该样本（最）独特的信息。

> What is a good representation to Deep Learning Algorithm?
> I will try 3 methods to extract the representation of Mnist digits recognization task:
> 
> 1.minimize the information bottleneck.
> 
> 2.minimize the dependence of the representation,or disentangle,or decouple the representation.
> 
> 3.minimize the cross-entropy,which taken as a contrast.




### 1.Variational Information Bottleneck

We have talked about information bottleneck in my another blog [How do we understand Information Bottleneck? ](https://plzhai.github.io/2018/12/03/information-bottleneck/) And we think that the goal of Deep Learning is to seek for a representation that minimizes the IB equation given the data and label.

But how? 

Recall that IB objective has the form 
\begin{equation}
min_{T}MI(X;T)-\beta MI(Y;T)
\end{equation}
.
We will give a variational bound to the two MI equations and minimize the bound instead.
Let's start with $I(Z,Y)$.Writing it out in full, this becomes

[](/img/in-post/IZY.jpg)
let *q(y|z)* be a variational approximation to *p(y|z)* since the latter is intractable in our case.*q(y|z)* is our decoder we will take to be a neural network with its own set of parameters.

Since *KL[p(Y|Z),q(Y|Z)]* is always positive,hence

[](/img/in-post/IZY_LB.jpg)

Also the entropy of *H(Y)* is independent of our optimization procedure and so can be ignored.So the final lower bound only requre samples from both our joint data distribution as well as samples from our stochastic encoder, while it requires we have access to a tractable variational approximation in 
<a href="https://www.codecogs.com/eqnedit.php?latex=\inline&space;\dpi{100}&space;q(y|z)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\inline&space;\dpi{100}&space;q(y|z)" title="q(y|z)" /></a>.



>variation information bottleneck(VIB) is closely related to variational Auto-Encoder(VAE).VAE is to minimize the reconstruction loss while minimize the distance between a setted Gauss noise and it's latent vector z. It don't do them all but try to balance them using the en-decoder architecture. 
>
>Samiliar to VAE,VIB aims to minimize the prediction loss while approximate our setted distribution with latent z.
>So their differience only lies at the output of the whole network:X or y.
In fact,the 







When $a \ne 0$, there are two solutions to \(ax^2 + bx + c = 0\) and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$










### Reference

[1]. Deep Variational Information Bottleneck.

[2].
