# knights-travails

Learning goals: Implementing algorithms, learning a new data structure(Graph), use of queues, recursion

Defines a method of calculating the shortest path a knight can take from a given square on a chessboard, to another. This is done by following a breadth-first traversal algorithm to find the first connection to the target square among its possible moves. The board is represented by a Graph whose Squares are connected to other squares in the way that a knight moves.

There is not a GUI, but you can change the values `Board` is initialized with, and the values passed to `knight_moves` to change the size of the board, start, and end points.

This project was quite challenging. I think I was able to figure it out relatively quickly because I had spent a lot of time thinking about it ahead of time, and 'mentally debugging' each possible solution. I briefly considered using a DFS search because I hadn't yet thought of a way to keep track of where a move came from when it was put into a queue. Eventually, I ended up using a method of editing a square's attribute to include the path of where it came from when it is enqueued. 

In retrospect, I likely did not need to represent the board as a nested array. But it felt somewhat clunky to keep a list of created `Square`s somewhere that would need to be searched through to find the proper node. It is possible that my solution runs a little slower than the alternative, because squares are made that might not be necessary to the path. I do however avoid generating the square's connections to other squares for a few reasons. First, it saves a lot on runtime, as those operations are only done when they are necessary. (An earlier iteration tried to generate all the moves as the board was, which ended up getting bogged down and taking several minutes to create a board.) Second, some implementations would fail to find all the adjacent nodes because I had them trying to find other nodes before those nodes had been made... Oops!

Thanks to [The Odin Project](https://www.theodinproject.com/home/) maintainers for providing the project spec and some of the resources I used. All code is written by me.
