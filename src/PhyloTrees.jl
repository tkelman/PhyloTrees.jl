module PhyloTrees

  # Dependencies
  using Distributions

  export
    # Trees
    Tree,
    Node,
    Branch,
    addnode!,
    addbranch!,
    branch!,

    # Traversal algorithms
    postorder,

    # Utilities
    isroot,
    isleaf,
    isnode,
    findroot,
    findleaves,
    findnodes,

    # Mutation
    JC69,
    K80,
    F81,
    F84,
    HKY85,
    TN93,
    GTR,
    UNREST,
    Q,
    P,

    # Simulation
    simulate

    # Inference
    # loglikelihood

  include("trees.jl")
  include("traversal.jl")
  include("utilities.jl")
  include("mutation.jl")
  include("simulation.jl")
  # include("inference.jl")
end