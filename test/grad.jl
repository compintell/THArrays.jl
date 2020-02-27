using JTorch

a = rand(3, 2)
b = rand(3, 2)

ta = Tensor(a, requires_grad=true)
tb = Tensor(b)
tc = (ta + ta + tb)

tg = Tensor(ones(3, 2))

backward(tc, tg)

@show grad(ta)
