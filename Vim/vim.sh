# Vim Tutorial

# vim is working in the different modes
i - insert mode - text before the cursor
a - insert mode - text after the cursor
o - insert mode - text new line

# capitals
I - insert mode - text starts from start of the line
A - insert mode - text starts from the end of the line
O - insert mode - text start from above the existing line

# set number - sets the line numbers

# movement keys
h left
j down 
k up
l right

# navigate the text in terms of words
w moves to the start of the next word
e moves to the end of the next word
b moves to the beginning of the word


# to set relative line numbers
set relativenumber

# to activate mouse
set mouse=a

# path of the vim dir
vi ~/.vimrc

# undo
u

# redo 
Ctrl + R

# visual mode 
v - "use arrows to select the text"

# delete
d 

# copy
y

# plaste after a line or after a word 
p

# to paset 4 times
4p

# to paste above line or before the word
P

# To edit 
c

# to change till the end of the line 
C

# to replace 
r

# to jump word by word
w

# to jump backward word by word
b

# delete a word from current position in the word.
dw

# to delete a complete word.
diw

# delet till end of the line
d$ 
D

# to jump to the closing pair of brakets like entities
%

# to delete till a specific symbol - symbol or character exclusive
dt*<char>

# delete till start of the line from current word 
d0

# copy a word when you are middle of the word 
yiw

# change the word 
ciw

# delete till a specific character
'print("some text here") - di"'

# change till a specific char
ci<char>

# jump begining of the file 
gg

# jump end of the file 
Shift + g

# to select multiple lines 
Shift + v

# to indent the lines
==

# searching 
/<keyword>
n - goes to next word
N - goes to previous word

# to mark any section to jump to 
m<char>
ma
mg

# to jump to the marked section
'<char>
'a
'g
't

# to cetred the current line 
zz

# to change the all occurrences of a specific character
:%s/characterToChnage/newCharcter/g


# to change occurrences of the selected text 
select text - v
:s/oldChar/newChar/g

# to use last executing commad
.

# vim contains a register that stores the last actions 
:reg