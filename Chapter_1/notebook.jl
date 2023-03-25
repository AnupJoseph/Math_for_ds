### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ b73a988f-abf3-41b7-bb7a-386ed4914065
begin

    using CairoMakie
end

# ╔═╡ 5f96383c-c8a6-11ed-090f-e1694405fd94
md"
# Chapter 1"

# ╔═╡ cd70b7b7-2a6e-4720-a21e-54fdc69ca69a
md"#### Example 1.1- Solving an expression in Julia"

# ╔═╡ c02ac7fe-b33b-4f7d-bbe7-21b07e6ae512
my_val = 2(3+2)^2 ÷ 5-4

# ╔═╡ e9f7d810-1589-48ad-bc20-6fd7a38f9b79
begin
	x = 3
	res = 2x
end

# ╔═╡ 4cc37e83-5a38-4aca-b018-4bea55c50e63
md"Using greek Variable names just because we can with Julia"

# ╔═╡ fddb8cac-06db-4a1c-b93d-19c8ba4defc2
begin
	β = 1.75
	θ = 30.0
end

# ╔═╡ 1bb88678-5fea-4267-9a14-811020b5a976
md"## Functions"

# ╔═╡ 57ac746a-da2a-48f4-bf49-4b232f38f016
f(x) = 2x+1

# ╔═╡ 994ab61b-f555-4777-967b-182f2782cd96
begin
	x_values = [0,1,2,3]
	f.(x_values)
end

# ╔═╡ 450e8185-f3e7-4308-a751-7ec8ed061e24
begin
	x_val = -10:0.1:10
	lines(x_val,f.(x_val),title = "Graph for function y = 2x + 1")
end

# ╔═╡ e05199f2-3670-4d15-8415-ab3b12703b91
begin
	y(x) = x^2+1
	lines(-10:0.1:10,y.(-10:0.1:10),title = "Using Make to graph an exponential function")
end

# ╔═╡ f1f4d2cc-0ed3-4212-a1b4-7a928e86cbee
begin
	y(i,j) = 2i+3j
	fig = Figure(resolution = (1200, 800), fontsize = 14)
	Axis3(fig[fldmod1(1, 3)...], title = "Using Makie to graph a 3-dimensional function")
	surface!(-10:0.1:10,10:-0.1:-10,y.(-10:0.1:10,10:-0.1:-10))
	fig
end

# ╔═╡ b9e1d42c-cc61-4a49-8180-c00045a1ef9c
md"### Summations"

# ╔═╡ bf0b98d5-e87c-4487-b6f6-4f29f4efae94
begin
	summer(i) = 2i
	sum(summer.(1:6))
end

# ╔═╡ 0311d786-2403-404f-ab29-2c32450ce6b6
md"### Exponents"

# ╔═╡ 76550641-5b09-4407-a8b1-da0624210cf4


# ╔═╡ Cell order:
# ╟─5f96383c-c8a6-11ed-090f-e1694405fd94
# ╠═b73a988f-abf3-41b7-bb7a-386ed4914065
# ╟─cd70b7b7-2a6e-4720-a21e-54fdc69ca69a
# ╠═c02ac7fe-b33b-4f7d-bbe7-21b07e6ae512
# ╠═e9f7d810-1589-48ad-bc20-6fd7a38f9b79
# ╟─4cc37e83-5a38-4aca-b018-4bea55c50e63
# ╠═fddb8cac-06db-4a1c-b93d-19c8ba4defc2
# ╟─1bb88678-5fea-4267-9a14-811020b5a976
# ╠═57ac746a-da2a-48f4-bf49-4b232f38f016
# ╠═994ab61b-f555-4777-967b-182f2782cd96
# ╠═450e8185-f3e7-4308-a751-7ec8ed061e24
# ╠═e05199f2-3670-4d15-8415-ab3b12703b91
# ╠═f1f4d2cc-0ed3-4212-a1b4-7a928e86cbee
# ╟─b9e1d42c-cc61-4a49-8180-c00045a1ef9c
# ╠═bf0b98d5-e87c-4487-b6f6-4f29f4efae94
# ╟─0311d786-2403-404f-ab29-2c32450ce6b6
# ╠═76550641-5b09-4407-a8b1-da0624210cf4
