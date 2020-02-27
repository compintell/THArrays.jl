#include <torch/torch.h>
#include <torch/csrc/autograd/variable.h>
#include <torch/csrc/autograd/function.h>

#include <typeinfo>
#include <iostream>

int main() {
    torch::Tensor tensor = torch::rand({2, 3});
    std::cout << tensor << std::endl;

    float data[] = { 1, 2, 3,
                     4, 5, 6 };
    torch::Tensor f = torch::from_blob(data, {2, 3});
    std::cout << f << std::endl;

    int64_t data_2[] = { 1, 2, 3,
                         4, 5, 6 };
    torch::Tensor i64 = torch::from_blob(data_2, {2, 3}, at::kLong);
    std::cout << i64 << std::endl;

    torch::ScalarType k = at::kLong;
    const std::type_info& t_long = typeid(at::kLong);
    std::cout << t_long.name() << std::endl;


    torch::Tensor a = torch::ones({2, 2}, torch::requires_grad(1));
    torch::Tensor b = torch::randn({2, 2});

    // auto *pa = new torch::Tensor(a.clone());
    auto *pa = new torch::Tensor(a);
    pa->set_requires_grad(1);
    auto c = *pa + b;

    // c.sum().backward();
    auto* pc = new torch::Tensor(c);
    auto ts = pc->sum();
    auto pts = new torch::Tensor(ts);
    pts->backward();

    std::cout << "c = " << c << std::endl;
    std::cout << "a.grad() = " << pa->grad() << std::endl;

    delete pa;
    delete pc;
    delete pts;
}
