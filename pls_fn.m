function y = pls_fn(t)
y = stp_fn (t+0.5 ) - stp_fn (t - 0.5 - eps) ;