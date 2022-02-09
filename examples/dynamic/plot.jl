using Plots
using Argon

particle1 = Particle(4., 5., 1., 0.)
particle2 = Particle(6., 5., 1., 0.)
L = 10. # length of the box [σ]

s = Simulation(L, [particle1, particle2])

global p_new = particles
@gif for t in t_i:dt:t_f
    global p_old = p_new
    global p_new = []

    for p in p_old
        x_old = p.x
        y_old = p.y
        vx_old = p.vx
        vy_old = p.vy
        
        x_new = (x_old + vx_old*dt) % L
        y_new = (y_old + vy_old*dt) % L
        vx_new = vx_old
        vy_new = vy_old
        push!(p_new, particle(x_new, y_new, vx_new, vy_new))
    end

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
end