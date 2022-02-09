export Simulation

mutable struct Simulation
    L::Float64 # length of the box
    dt::Float64 # time step
    tf::Float64 # final time step
    particles::Vector{Particle} # particles in the box
end

function Simulation()
    return Simulation(0., 0., 0., [])
end