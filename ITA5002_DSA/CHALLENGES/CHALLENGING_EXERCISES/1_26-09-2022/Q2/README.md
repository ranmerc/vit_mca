# Question

To facilitate a thorough net surfing, any web browser
has back and forward buttons that allow the user to move
backward and forward through a series of web pages. To
allow the user to move both forward and backward two stacks
are employed. When the user presses the back button, the
link to the current web page is stored on a separate stack
for the forward button. As the user moves backward through a
series of previous pages, the link to each page is moved in
turn from the back to the forward stack.
When the user presses the forward button, the action is the
reverse of the back button. Now the item from the forward stack
is popped, and becomes the current web page. The previous web
page is pushed on the back stack. Simulate the functioning of
these buttons using array implementation of Stack. Also provide
options for displaying the contents of both the stacks
whenever required.
