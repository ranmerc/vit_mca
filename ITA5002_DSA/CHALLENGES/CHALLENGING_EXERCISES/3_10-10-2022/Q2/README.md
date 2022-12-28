# Question

When burning a DVD it is essential that the laser beam
burning pits onto the surface is constantly fed with data,
otherwise the DVD fails. Most leading DVD burn applications make
use of a circular buffer to stream data from the hard disk onto
the DVD. The first part, the ‘writing process’ fills up a
circular buffer with data, then the ‘burning process’ begins
to read from the buffer as the laser beam burns pits onto
the surface of the DVD. If the buffer starts to become empty,
the application should continue filling up the emptied space
in the buffer with new data from the disk. Implement this
scenario using Circular Queue.
