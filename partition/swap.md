# Directory swap

The primary function of swap space is to substitute disk space for RAM memory when real RAM fills up and more space is needed.

The kernel uses a memory management program that detect blocks, aka pages, of memory in which the contents have not been used recently. The memory management program swaps enough of these relatively infrequently used pages of memory out a special partition on the hard drive specifically designated for paging or swapping. Those pages of memory swapped out to the hard drive are tracked by the kernel's memory management code and can be pahesback into RAM if they are need.
