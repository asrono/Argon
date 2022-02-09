using Plots
using Argon

particle1 = Particle(4., 5., 1., 0.)
particle2 = Particle(6., 5., 1., 0.)
L = 10. # length of the box [σ]
dt = 0.1 # time step [s]
tf = 1 # simulation time [s]

s = Simulation(L, dt, tf, [particle1, particle2])
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