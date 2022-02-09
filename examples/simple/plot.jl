using Plots
using Argon

particle1 = Particle(4., 5., 1., 0.)
particle2 = Particle(6., 5., 1., 0.)
L = 10. # length of the box [σ]

s = Simulation(L, [particle1, particle2])
p1 = quiver(
    [p.x for p in s.particles],[p.y for p in s.particles],
    quiver = ([p.vx for p in s.particles], [p.vy for p in s.particles])
    )
scatter!([p.x for p in s.particles], [p.y for p in s.particles], aspect_ratio=:equal, legend = false)
xlabel!("\$x\$ [σ]")
ylabel!("\$y\$ [σ]")
xlims!((0,s.L))
ylims!((0,s.L))
title!("Initial positions")
plot(p1)