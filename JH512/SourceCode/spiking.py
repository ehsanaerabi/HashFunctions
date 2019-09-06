function spikingnet(n,nspike,k,j0,ratewnt,tau,seedic,seedtopo)
    
    #neuron parameters (leaky integrate and fire neuron)
    iext = tau*sqrt(k)*j0*ratewnt/1000 # iext given by balance equation
    w, c = 1/log(1. + 1/iext),j0/sqrt(k)/(1. + iext) # phase velocity LIF
    phith, phishift = 1., 0.# threshold for LIF
    
    # init. random number generator (Xorshift)
    r = Xoroshiro128Star(seedic) 
    
    #generate heap
    phi = mutable_binary_maxheap(rand(n))
    
    # initialize/preallocate spike raster and vector of receiving neurons
    spikeidx = Int64[] #initialize time
    spiketimes = Float64[] # spike raster
    postidx = Array{Int64,1}(k)
    
    # main loop
    @time for s = 1 : nspike
        
        # find next spiking neuron
        phimax, j = top_with_handle(phi) 
        
        # calculate next spike time
        dphi = phith - phimax - phishift  
        
        # global backshift instead of shifting all phases forward
        phishift += dphi 
        
        # spiking neuron index is seed of rng to reduce memory
        srand(r,j+seedtopo) 
        
        # sample receiving neuron index
        sample!(r,1:n-1,postidx) 
        @inbounds for i = 1:k # avoid selfconnections
          postidx[i] >= j && ( postidx[i]+=1 )
        end
        
        # evaluate phase transition curve
        ptc!(phi,postidx,phishift,w,c) 
        
        # reset spiking neuron
        phi[j]=-phishift  
        
        # store spike raster
        push!(spiketimes,phishift) # store spiketimes
        push!(spikeidx,j) # store spiking neuron
    end
    
    nspike/phishift/n/tau*w, spikeidx, spiketimes*tau/w
end
