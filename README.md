# IL2236_project

**1. What problems you can detect from this setup? Why?**

Input count&timing shoud be set before the source queue buffer because the waiting time for buffer to enter the networkshould be considered.

**2. (Performance evaluation) Answer the following questions:**

**a) Explain the differences of open-loop and closed-loop measurements.**

**The open-loop measurement** configuration enables the traffic parameters to be controlled independently of the network itself:

1. Use an infinite source queue for the traffic isolation. This separates the packet source from the network at each terminal
2. The source queues are not part of the network being simulated, but serve to isolate the traffic processes from the network itself.
3. The goal is generally to evaluate the network on a specific traffic pattern for throughput, latency, and fault tolerance.

**Closed-loop measurement systems**, in which the network influences the traffic, are useful for measuring overall system performance:

1. For example, the performance of a multicomputer may be estimated by running a simulation in which the terminal instrumentation is replaced by simulations of the multicomputer’s processors.
2. A more typical application of this simulation setup would be to test the sensitivity of the application run time to network parameters such as bandwidths, routing algorithms, and flow control.


**b) Explain why, in the open-loop measurement, during the drain phase, we need to run the
network long enough for all of the measurement packets to reach their destination?**

It is important that the simulation be run long enough to measure
the finish time of every measurement packet to capture the tail of the
latency distribution.

**c) Explain the throughput bounds in a general network as shown in the latency vs. offered traffic
graph, specifically, why the Topology bound is larger than the routing bound, which is larger
than the saturation throughput.**


![1](https://github.com/shiruimin123/IL2236_project/assets/106392919/9a06a76d-1d01-48ae-b87e-c3bc5b4c129d)

Topology throughput bound is ideal, assuming
random traffic with perfect flow control (no idle
cycles for channels) and perfect routing (load
balance, minimal path); Routing throughput bound counts possible load imbalance of a routing algorithm; Saturation throughput counts idle channels
due to resource dependencies (VC allocation
dependency for deadlock freedom, credit
availability etc.). So the Topology bound is larger than the routing bound, which is larger
than the saturation throughput.


