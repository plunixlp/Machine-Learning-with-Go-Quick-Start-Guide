іт

Џ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12b'v1.13.1-2-g09e3b09e69'ои	
p
input_inputPlaceholder*
shape:џџџџџџџџџ*
dtype0*(
_output_shapes
:џџџџџџџџџ
k
input/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
]
input/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *SЏН
]
input/random_uniform/maxConst*
_output_shapes
: *
valueB
 *SЏ=*
dtype0
Ѕ
"input/random_uniform/RandomUniformRandomUniforminput/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	 *
seed2ѕН*
seedБџх)
t
input/random_uniform/subSubinput/random_uniform/maxinput/random_uniform/min*
T0*
_output_shapes
: 

input/random_uniform/mulMul"input/random_uniform/RandomUniforminput/random_uniform/sub*
_output_shapes
:	 *
T0
y
input/random_uniformAddinput/random_uniform/mulinput/random_uniform/min*
_output_shapes
:	 *
T0

input/kernel
VariableV2*
shape:	 *
shared_name *
dtype0*
_output_shapes
:	 *
	container 
Е
input/kernel/AssignAssigninput/kernelinput/random_uniform*
_output_shapes
:	 *
use_locking(*
T0*
_class
loc:@input/kernel*
validate_shape(
v
input/kernel/readIdentityinput/kernel*
_class
loc:@input/kernel*
_output_shapes
:	 *
T0
X
input/ConstConst*
_output_shapes
: *
valueB *    *
dtype0
v

input/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ё
input/bias/AssignAssign
input/biasinput/Const*
T0*
_class
loc:@input/bias*
validate_shape(*
_output_shapes
: *
use_locking(
k
input/bias/readIdentity
input/bias*
T0*
_class
loc:@input/bias*
_output_shapes
: 

input/MatMulMatMulinput_inputinput/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0

input/BiasAddBiasAddinput/MatMulinput/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
S

input/ReluReluinput/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
h
X1/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
Z
X1/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
Z
X1/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 

X1/random_uniform/RandomUniformRandomUniformX1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

:  *
seed2ЯЎ
k
X1/random_uniform/subSubX1/random_uniform/maxX1/random_uniform/min*
T0*
_output_shapes
: 
}
X1/random_uniform/mulMulX1/random_uniform/RandomUniformX1/random_uniform/sub*
_output_shapes

:  *
T0
o
X1/random_uniformAddX1/random_uniform/mulX1/random_uniform/min*
_output_shapes

:  *
T0
}
	X1/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

:  *
	container *
shape
:  
Ј
X1/kernel/AssignAssign	X1/kernelX1/random_uniform*
T0*
_class
loc:@X1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
l
X1/kernel/readIdentity	X1/kernel*
_class
loc:@X1/kernel*
_output_shapes

:  *
T0
U
X1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
s
X1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

X1/bias/AssignAssignX1/biasX1/Const*
_class
loc:@X1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
b
X1/bias/readIdentityX1/bias*
T0*
_class
loc:@X1/bias*
_output_shapes
: 

	X1/MatMulMatMul
input/ReluX1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( 
w

X1/BiasAddBiasAdd	X1/MatMulX1/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ *
T0
M
X1/ReluRelu
X1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
h
X2/random_uniform/shapeConst*
_output_shapes
:*
valueB"        *
dtype0
Z
X2/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
Z
X2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *qФ>*
dtype0

X2/random_uniform/RandomUniformRandomUniformX2/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

:  *
seed2зМ
k
X2/random_uniform/subSubX2/random_uniform/maxX2/random_uniform/min*
T0*
_output_shapes
: 
}
X2/random_uniform/mulMulX2/random_uniform/RandomUniformX2/random_uniform/sub*
T0*
_output_shapes

:  
o
X2/random_uniformAddX2/random_uniform/mulX2/random_uniform/min*
T0*
_output_shapes

:  
}
	X2/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
Ј
X2/kernel/AssignAssign	X2/kernelX2/random_uniform*
use_locking(*
T0*
_class
loc:@X2/kernel*
validate_shape(*
_output_shapes

:  
l
X2/kernel/readIdentity	X2/kernel*
T0*
_class
loc:@X2/kernel*
_output_shapes

:  
U
X2/ConstConst*
_output_shapes
: *
valueB *    *
dtype0
s
X2/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

X2/bias/AssignAssignX2/biasX2/Const*
_class
loc:@X2/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
b
X2/bias/readIdentityX2/bias*
T0*
_class
loc:@X2/bias*
_output_shapes
: 

	X2/MatMulMatMulX1/ReluX2/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0
w

X2/BiasAddBiasAdd	X2/MatMulX2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
M
X2/ReluRelu
X2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
h
X3/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"        
Z
X3/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
Z
X3/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 

X3/random_uniform/RandomUniformRandomUniformX3/random_uniform/shape*
dtype0*
_output_shapes

:  *
seed2Кв*
seedБџх)*
T0
k
X3/random_uniform/subSubX3/random_uniform/maxX3/random_uniform/min*
T0*
_output_shapes
: 
}
X3/random_uniform/mulMulX3/random_uniform/RandomUniformX3/random_uniform/sub*
T0*
_output_shapes

:  
o
X3/random_uniformAddX3/random_uniform/mulX3/random_uniform/min*
T0*
_output_shapes

:  
}
	X3/kernel
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
Ј
X3/kernel/AssignAssign	X3/kernelX3/random_uniform*
use_locking(*
T0*
_class
loc:@X3/kernel*
validate_shape(*
_output_shapes

:  
l
X3/kernel/readIdentity	X3/kernel*
T0*
_class
loc:@X3/kernel*
_output_shapes

:  
U
X3/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
s
X3/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

X3/bias/AssignAssignX3/biasX3/Const*
use_locking(*
T0*
_class
loc:@X3/bias*
validate_shape(*
_output_shapes
: 
b
X3/bias/readIdentityX3/bias*
T0*
_class
loc:@X3/bias*
_output_shapes
: 

	X3/MatMulMatMulX2/ReluX3/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0
w

X3/BiasAddBiasAdd	X3/MatMulX3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
M
X3/ReluRelu
X3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
h
X4/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
Z
X4/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
Z
X4/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 

X4/random_uniform/RandomUniformRandomUniformX4/random_uniform/shape*
dtype0*
_output_shapes

:  *
seed2пo*
seedБџх)*
T0
k
X4/random_uniform/subSubX4/random_uniform/maxX4/random_uniform/min*
_output_shapes
: *
T0
}
X4/random_uniform/mulMulX4/random_uniform/RandomUniformX4/random_uniform/sub*
T0*
_output_shapes

:  
o
X4/random_uniformAddX4/random_uniform/mulX4/random_uniform/min*
_output_shapes

:  *
T0
}
	X4/kernel
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
Ј
X4/kernel/AssignAssign	X4/kernelX4/random_uniform*
_class
loc:@X4/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
l
X4/kernel/readIdentity	X4/kernel*
_output_shapes

:  *
T0*
_class
loc:@X4/kernel
U
X4/ConstConst*
dtype0*
_output_shapes
: *
valueB *    
s
X4/bias
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0

X4/bias/AssignAssignX4/biasX4/Const*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X4/bias*
validate_shape(
b
X4/bias/readIdentityX4/bias*
T0*
_class
loc:@X4/bias*
_output_shapes
: 

	X4/MatMulMatMulX3/ReluX4/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0
w

X4/BiasAddBiasAdd	X4/MatMulX4/bias/read*'
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC
M
X4/ReluRelu
X4/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
l
output/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
^
output/random_uniform/minConst*
valueB
 *JQкО*
dtype0*
_output_shapes
: 
^
output/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *JQк>
І
#output/random_uniform/RandomUniformRandomUniformoutput/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

: *
seed2ЁЇЯ
w
output/random_uniform/subSuboutput/random_uniform/maxoutput/random_uniform/min*
T0*
_output_shapes
: 

output/random_uniform/mulMul#output/random_uniform/RandomUniformoutput/random_uniform/sub*
_output_shapes

: *
T0
{
output/random_uniformAddoutput/random_uniform/muloutput/random_uniform/min*
T0*
_output_shapes

: 

output/kernel
VariableV2*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
И
output/kernel/AssignAssignoutput/kerneloutput/random_uniform*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

: 
x
output/kernel/readIdentityoutput/kernel*
T0* 
_class
loc:@output/kernel*
_output_shapes

: 
Y
output/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
w
output/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ѕ
output/bias/AssignAssignoutput/biasoutput/Const*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
n
output/bias/readIdentityoutput/bias*
_output_shapes
:*
T0*
_class
loc:@output/bias

output/MatMulMatMulX4/Reluoutput/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

output/BiasAddBiasAddoutput/MatMuloutput/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ*
T0
r
input_input_1Placeholder*
shape:џџџџџџџџџ*
dtype0*(
_output_shapes
:џџџџџџџџџ
m
input_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
input_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *SЏН*
dtype0
_
input_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *SЏ=*
dtype0
Ј
$input_1/random_uniform/RandomUniformRandomUniforminput_1/random_uniform/shape*
dtype0*
_output_shapes
:	 *
seed2іF*
seedБџх)*
T0
z
input_1/random_uniform/subSubinput_1/random_uniform/maxinput_1/random_uniform/min*
T0*
_output_shapes
: 

input_1/random_uniform/mulMul$input_1/random_uniform/RandomUniforminput_1/random_uniform/sub*
T0*
_output_shapes
:	 

input_1/random_uniformAddinput_1/random_uniform/mulinput_1/random_uniform/min*
T0*
_output_shapes
:	 

input_1/kernel
VariableV2*
shape:	 *
shared_name *
dtype0*
_output_shapes
:	 *
	container 
Н
input_1/kernel/AssignAssigninput_1/kernelinput_1/random_uniform*
T0*!
_class
loc:@input_1/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
|
input_1/kernel/readIdentityinput_1/kernel*
_output_shapes
:	 *
T0*!
_class
loc:@input_1/kernel
Z
input_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
x
input_1/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Љ
input_1/bias/AssignAssigninput_1/biasinput_1/Const*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@input_1/bias*
validate_shape(
q
input_1/bias/readIdentityinput_1/bias*
T0*
_class
loc:@input_1/bias*
_output_shapes
: 

input_1/MatMulMatMulinput_input_1input_1/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0

input_1/BiasAddBiasAddinput_1/MatMulinput_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
W
input_1/ReluReluinput_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
j
X1_1/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
\
X1_1/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
\
X1_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *qФ>
Ё
!X1_1/random_uniform/RandomUniformRandomUniformX1_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

:  *
seed2шќO
q
X1_1/random_uniform/subSubX1_1/random_uniform/maxX1_1/random_uniform/min*
T0*
_output_shapes
: 

X1_1/random_uniform/mulMul!X1_1/random_uniform/RandomUniformX1_1/random_uniform/sub*
T0*
_output_shapes

:  
u
X1_1/random_uniformAddX1_1/random_uniform/mulX1_1/random_uniform/min*
T0*
_output_shapes

:  

X1_1/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
А
X1_1/kernel/AssignAssignX1_1/kernelX1_1/random_uniform*
_class
loc:@X1_1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
r
X1_1/kernel/readIdentityX1_1/kernel*
T0*
_class
loc:@X1_1/kernel*
_output_shapes

:  
W

X1_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
u
	X1_1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

X1_1/bias/AssignAssign	X1_1/bias
X1_1/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X1_1/bias
h
X1_1/bias/readIdentity	X1_1/bias*
_output_shapes
: *
T0*
_class
loc:@X1_1/bias

X1_1/MatMulMatMulinput_1/ReluX1_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( 
}
X1_1/BiasAddBiasAddX1_1/MatMulX1_1/bias/read*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ *
T0
Q
	X1_1/ReluReluX1_1/BiasAdd*'
_output_shapes
:џџџџџџџџџ *
T0
j
X2_1/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
\
X2_1/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
\
X2_1/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 
Ђ
!X2_1/random_uniform/RandomUniformRandomUniformX2_1/random_uniform/shape*
_output_shapes

:  *
seed2мЌ*
seedБџх)*
T0*
dtype0
q
X2_1/random_uniform/subSubX2_1/random_uniform/maxX2_1/random_uniform/min*
T0*
_output_shapes
: 

X2_1/random_uniform/mulMul!X2_1/random_uniform/RandomUniformX2_1/random_uniform/sub*
_output_shapes

:  *
T0
u
X2_1/random_uniformAddX2_1/random_uniform/mulX2_1/random_uniform/min*
_output_shapes

:  *
T0

X2_1/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
А
X2_1/kernel/AssignAssignX2_1/kernelX2_1/random_uniform*
use_locking(*
T0*
_class
loc:@X2_1/kernel*
validate_shape(*
_output_shapes

:  
r
X2_1/kernel/readIdentityX2_1/kernel*
_class
loc:@X2_1/kernel*
_output_shapes

:  *
T0
W

X2_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
u
	X2_1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

X2_1/bias/AssignAssign	X2_1/bias
X2_1/Const*
use_locking(*
T0*
_class
loc:@X2_1/bias*
validate_shape(*
_output_shapes
: 
h
X2_1/bias/readIdentity	X2_1/bias*
_output_shapes
: *
T0*
_class
loc:@X2_1/bias

X2_1/MatMulMatMul	X1_1/ReluX2_1/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( *
T0
}
X2_1/BiasAddBiasAddX2_1/MatMulX2_1/bias/read*'
_output_shapes
:џџџџџџџџџ *
T0*
data_formatNHWC
Q
	X2_1/ReluReluX2_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
j
X3_1/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
\
X3_1/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
\
X3_1/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 
Ё
!X3_1/random_uniform/RandomUniformRandomUniformX3_1/random_uniform/shape*
dtype0*
_output_shapes

:  *
seed2Ѓ}*
seedБџх)*
T0
q
X3_1/random_uniform/subSubX3_1/random_uniform/maxX3_1/random_uniform/min*
T0*
_output_shapes
: 

X3_1/random_uniform/mulMul!X3_1/random_uniform/RandomUniformX3_1/random_uniform/sub*
T0*
_output_shapes

:  
u
X3_1/random_uniformAddX3_1/random_uniform/mulX3_1/random_uniform/min*
T0*
_output_shapes

:  

X3_1/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
А
X3_1/kernel/AssignAssignX3_1/kernelX3_1/random_uniform*
use_locking(*
T0*
_class
loc:@X3_1/kernel*
validate_shape(*
_output_shapes

:  
r
X3_1/kernel/readIdentityX3_1/kernel*
_output_shapes

:  *
T0*
_class
loc:@X3_1/kernel
W

X3_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
u
	X3_1/bias
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0

X3_1/bias/AssignAssign	X3_1/bias
X3_1/Const*
_class
loc:@X3_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
h
X3_1/bias/readIdentity	X3_1/bias*
T0*
_class
loc:@X3_1/bias*
_output_shapes
: 

X3_1/MatMulMatMul	X2_1/ReluX3_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( 
}
X3_1/BiasAddBiasAddX3_1/MatMulX3_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
Q
	X3_1/ReluReluX3_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
j
X4_1/random_uniform/shapeConst*
valueB"        *
dtype0*
_output_shapes
:
\
X4_1/random_uniform/minConst*
valueB
 *qФО*
dtype0*
_output_shapes
: 
\
X4_1/random_uniform/maxConst*
valueB
 *qФ>*
dtype0*
_output_shapes
: 
Ђ
!X4_1/random_uniform/RandomUniformRandomUniformX4_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

:  *
seed2їЦ
q
X4_1/random_uniform/subSubX4_1/random_uniform/maxX4_1/random_uniform/min*
T0*
_output_shapes
: 

X4_1/random_uniform/mulMul!X4_1/random_uniform/RandomUniformX4_1/random_uniform/sub*
_output_shapes

:  *
T0
u
X4_1/random_uniformAddX4_1/random_uniform/mulX4_1/random_uniform/min*
T0*
_output_shapes

:  

X4_1/kernel
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
А
X4_1/kernel/AssignAssignX4_1/kernelX4_1/random_uniform*
_class
loc:@X4_1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
r
X4_1/kernel/readIdentityX4_1/kernel*
T0*
_class
loc:@X4_1/kernel*
_output_shapes

:  
W

X4_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
u
	X4_1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

X4_1/bias/AssignAssign	X4_1/bias
X4_1/Const*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X4_1/bias*
validate_shape(
h
X4_1/bias/readIdentity	X4_1/bias*
T0*
_class
loc:@X4_1/bias*
_output_shapes
: 

X4_1/MatMulMatMul	X3_1/ReluX4_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b( 
}
X4_1/BiasAddBiasAddX4_1/MatMulX4_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ 
Q
	X4_1/ReluReluX4_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ 
n
output_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
`
output_1/random_uniform/minConst*
valueB
 *JQкО*
dtype0*
_output_shapes
: 
`
output_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *JQк>
Њ
%output_1/random_uniform/RandomUniformRandomUniformoutput_1/random_uniform/shape*
seedБџх)*
T0*
dtype0*
_output_shapes

: *
seed2­љД
}
output_1/random_uniform/subSuboutput_1/random_uniform/maxoutput_1/random_uniform/min*
T0*
_output_shapes
: 

output_1/random_uniform/mulMul%output_1/random_uniform/RandomUniformoutput_1/random_uniform/sub*
T0*
_output_shapes

: 

output_1/random_uniformAddoutput_1/random_uniform/muloutput_1/random_uniform/min*
T0*
_output_shapes

: 

output_1/kernel
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
Р
output_1/kernel/AssignAssignoutput_1/kerneloutput_1/random_uniform*
use_locking(*
T0*"
_class
loc:@output_1/kernel*
validate_shape(*
_output_shapes

: 
~
output_1/kernel/readIdentityoutput_1/kernel*
T0*"
_class
loc:@output_1/kernel*
_output_shapes

: 
[
output_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
y
output_1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
­
output_1/bias/AssignAssignoutput_1/biasoutput_1/Const*
use_locking(*
T0* 
_class
loc:@output_1/bias*
validate_shape(*
_output_shapes
:
t
output_1/bias/readIdentityoutput_1/bias*
_output_shapes
:*
T0* 
_class
loc:@output_1/bias

output_1/MatMulMatMul	X4_1/Reluoutput_1/kernel/read*
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
transpose_b( 

output_1/BiasAddBiasAddoutput_1/MatMuloutput_1/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
О
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: *
use_locking(
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *wО?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ў
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
T0*
_class
loc:@Adam/beta_2*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Њ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

output_targetPlaceholder*
dtype0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*%
shape:џџџџџџџџџџџџџџџџџџ
p
output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
w
loss/output_loss/subSuboutput_1/BiasAddoutput_target*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
r
loss/output_loss/SquareSquareloss/output_loss/sub*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
r
'loss/output_loss/Mean/reduction_indicesConst*
_output_shapes
: *
valueB :
џџџџџџџџџ*
dtype0
Њ
loss/output_loss/MeanMeanloss/output_loss/Square'loss/output_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0*
T0
l
)loss/output_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Ќ
loss/output_loss/Mean_1Meanloss/output_loss/Mean)loss/output_loss/Mean_1/reduction_indices*
T0*#
_output_shapes
:џџџџџџџџџ*
	keep_dims( *

Tidx0
y
loss/output_loss/mulMulloss/output_loss/Mean_1output_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
`
loss/output_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/output_loss/NotEqualNotEqualoutput_sample_weightsloss/output_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ

loss/output_loss/CastCastloss/output_loss/NotEqual*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

`
loss/output_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

loss/output_loss/Mean_2Meanloss/output_loss/Castloss/output_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/output_loss/truedivRealDivloss/output_loss/mulloss/output_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
b
loss/output_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/output_loss/Mean_3Meanloss/output_loss/truedivloss/output_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/output_loss/Mean_3*
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
Ж
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ѕ
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/output_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
И
Btraining/Adam/gradients/loss/output_loss/Mean_3_grad/Reshape/shapeConst*
valueB:**
_class 
loc:@loss/output_loss/Mean_3*
dtype0*
_output_shapes
:

<training/Adam/gradients/loss/output_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Btraining/Adam/gradients/loss/output_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
:
О
:training/Adam/gradients/loss/output_loss/Mean_3_grad/ShapeShapeloss/output_loss/truediv*
T0*
out_type0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
:
Ї
9training/Adam/gradients/loss/output_loss/Mean_3_grad/TileTile<training/Adam/gradients/loss/output_loss/Mean_3_grad/Reshape:training/Adam/gradients/loss/output_loss/Mean_3_grad/Shape*

Tmultiples0*
T0**
_class 
loc:@loss/output_loss/Mean_3*#
_output_shapes
:џџџџџџџџџ
Р
<training/Adam/gradients/loss/output_loss/Mean_3_grad/Shape_1Shapeloss/output_loss/truediv*
T0*
out_type0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
:
Ћ
<training/Adam/gradients/loss/output_loss/Mean_3_grad/Shape_2Const*
valueB **
_class 
loc:@loss/output_loss/Mean_3*
dtype0*
_output_shapes
: 
А
:training/Adam/gradients/loss/output_loss/Mean_3_grad/ConstConst*
_output_shapes
:*
valueB: **
_class 
loc:@loss/output_loss/Mean_3*
dtype0
Ѕ
9training/Adam/gradients/loss/output_loss/Mean_3_grad/ProdProd<training/Adam/gradients/loss/output_loss/Mean_3_grad/Shape_1:training/Adam/gradients/loss/output_loss/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
: 
В
<training/Adam/gradients/loss/output_loss/Mean_3_grad/Const_1Const*
valueB: **
_class 
loc:@loss/output_loss/Mean_3*
dtype0*
_output_shapes
:
Љ
;training/Adam/gradients/loss/output_loss/Mean_3_grad/Prod_1Prod<training/Adam/gradients/loss/output_loss/Mean_3_grad/Shape_2<training/Adam/gradients/loss/output_loss/Mean_3_grad/Const_1**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ќ
>training/Adam/gradients/loss/output_loss/Mean_3_grad/Maximum/yConst*
value	B :**
_class 
loc:@loss/output_loss/Mean_3*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/output_loss/Mean_3_grad/MaximumMaximum;training/Adam/gradients/loss/output_loss/Mean_3_grad/Prod_1>training/Adam/gradients/loss/output_loss/Mean_3_grad/Maximum/y*
T0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
: 

=training/Adam/gradients/loss/output_loss/Mean_3_grad/floordivFloorDiv9training/Adam/gradients/loss/output_loss/Mean_3_grad/Prod<training/Adam/gradients/loss/output_loss/Mean_3_grad/Maximum*
T0**
_class 
loc:@loss/output_loss/Mean_3*
_output_shapes
: 
ь
9training/Adam/gradients/loss/output_loss/Mean_3_grad/CastCast=training/Adam/gradients/loss/output_loss/Mean_3_grad/floordiv*

SrcT0**
_class 
loc:@loss/output_loss/Mean_3*
Truncate( *
_output_shapes
: *

DstT0

<training/Adam/gradients/loss/output_loss/Mean_3_grad/truedivRealDiv9training/Adam/gradients/loss/output_loss/Mean_3_grad/Tile9training/Adam/gradients/loss/output_loss/Mean_3_grad/Cast**
_class 
loc:@loss/output_loss/Mean_3*#
_output_shapes
:џџџџџџџџџ*
T0
М
;training/Adam/gradients/loss/output_loss/truediv_grad/ShapeShapeloss/output_loss/mul*
T0*
out_type0*+
_class!
loc:@loss/output_loss/truediv*
_output_shapes
:
­
=training/Adam/gradients/loss/output_loss/truediv_grad/Shape_1Const*
valueB *+
_class!
loc:@loss/output_loss/truediv*
dtype0*
_output_shapes
: 
Ъ
Ktraining/Adam/gradients/loss/output_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/loss/output_loss/truediv_grad/Shape=training/Adam/gradients/loss/output_loss/truediv_grad/Shape_1*
T0*+
_class!
loc:@loss/output_loss/truediv*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
њ
=training/Adam/gradients/loss/output_loss/truediv_grad/RealDivRealDiv<training/Adam/gradients/loss/output_loss/Mean_3_grad/truedivloss/output_loss/Mean_2*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ*
T0
Й
9training/Adam/gradients/loss/output_loss/truediv_grad/SumSum=training/Adam/gradients/loss/output_loss/truediv_grad/RealDivKtraining/Adam/gradients/loss/output_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/output_loss/truediv
Љ
=training/Adam/gradients/loss/output_loss/truediv_grad/ReshapeReshape9training/Adam/gradients/loss/output_loss/truediv_grad/Sum;training/Adam/gradients/loss/output_loss/truediv_grad/Shape*
T0*
Tshape0*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ
Б
9training/Adam/gradients/loss/output_loss/truediv_grad/NegNegloss/output_loss/mul*
T0*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ
љ
?training/Adam/gradients/loss/output_loss/truediv_grad/RealDiv_1RealDiv9training/Adam/gradients/loss/output_loss/truediv_grad/Negloss/output_loss/Mean_2*
T0*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ
џ
?training/Adam/gradients/loss/output_loss/truediv_grad/RealDiv_2RealDiv?training/Adam/gradients/loss/output_loss/truediv_grad/RealDiv_1loss/output_loss/Mean_2*
T0*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ

9training/Adam/gradients/loss/output_loss/truediv_grad/mulMul<training/Adam/gradients/loss/output_loss/Mean_3_grad/truediv?training/Adam/gradients/loss/output_loss/truediv_grad/RealDiv_2*
T0*+
_class!
loc:@loss/output_loss/truediv*#
_output_shapes
:џџџџџџџџџ
Й
;training/Adam/gradients/loss/output_loss/truediv_grad/Sum_1Sum9training/Adam/gradients/loss/output_loss/truediv_grad/mulMtraining/Adam/gradients/loss/output_loss/truediv_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@loss/output_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ђ
?training/Adam/gradients/loss/output_loss/truediv_grad/Reshape_1Reshape;training/Adam/gradients/loss/output_loss/truediv_grad/Sum_1=training/Adam/gradients/loss/output_loss/truediv_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@loss/output_loss/truediv*
_output_shapes
: 
З
7training/Adam/gradients/loss/output_loss/mul_grad/ShapeShapeloss/output_loss/Mean_1*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss/output_loss/mul
З
9training/Adam/gradients/loss/output_loss/mul_grad/Shape_1Shapeoutput_sample_weights*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss/output_loss/mul
К
Gtraining/Adam/gradients/loss/output_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7training/Adam/gradients/loss/output_loss/mul_grad/Shape9training/Adam/gradients/loss/output_loss/mul_grad/Shape_1*
T0*'
_class
loc:@loss/output_loss/mul*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
щ
5training/Adam/gradients/loss/output_loss/mul_grad/MulMul=training/Adam/gradients/loss/output_loss/truediv_grad/Reshapeoutput_sample_weights*#
_output_shapes
:џџџџџџџџџ*
T0*'
_class
loc:@loss/output_loss/mul
Ѕ
5training/Adam/gradients/loss/output_loss/mul_grad/SumSum5training/Adam/gradients/loss/output_loss/mul_grad/MulGtraining/Adam/gradients/loss/output_loss/mul_grad/BroadcastGradientArgs*'
_class
loc:@loss/output_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

9training/Adam/gradients/loss/output_loss/mul_grad/ReshapeReshape5training/Adam/gradients/loss/output_loss/mul_grad/Sum7training/Adam/gradients/loss/output_loss/mul_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0*'
_class
loc:@loss/output_loss/mul
э
7training/Adam/gradients/loss/output_loss/mul_grad/Mul_1Mulloss/output_loss/Mean_1=training/Adam/gradients/loss/output_loss/truediv_grad/Reshape*
T0*'
_class
loc:@loss/output_loss/mul*#
_output_shapes
:џџџџџџџџџ
Ћ
7training/Adam/gradients/loss/output_loss/mul_grad/Sum_1Sum7training/Adam/gradients/loss/output_loss/mul_grad/Mul_1Itraining/Adam/gradients/loss/output_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@loss/output_loss/mul

;training/Adam/gradients/loss/output_loss/mul_grad/Reshape_1Reshape7training/Adam/gradients/loss/output_loss/mul_grad/Sum_19training/Adam/gradients/loss/output_loss/mul_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@loss/output_loss/mul*#
_output_shapes
:џџџџџџџџџ
Л
:training/Adam/gradients/loss/output_loss/Mean_1_grad/ShapeShapeloss/output_loss/Mean*
T0*
out_type0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
:
Ї
9training/Adam/gradients/loss/output_loss/Mean_1_grad/SizeConst*
_output_shapes
: *
value	B :**
_class 
loc:@loss/output_loss/Mean_1*
dtype0
є
8training/Adam/gradients/loss/output_loss/Mean_1_grad/addAdd)loss/output_loss/Mean_1/reduction_indices9training/Adam/gradients/loss/output_loss/Mean_1_grad/Size*
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: 

8training/Adam/gradients/loss/output_loss/Mean_1_grad/modFloorMod8training/Adam/gradients/loss/output_loss/Mean_1_grad/add9training/Adam/gradients/loss/output_loss/Mean_1_grad/Size**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: *
T0
В
<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_1Const*
_output_shapes
:*
valueB: **
_class 
loc:@loss/output_loss/Mean_1*
dtype0
Ў
@training/Adam/gradients/loss/output_loss/Mean_1_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : **
_class 
loc:@loss/output_loss/Mean_1
Ў
@training/Adam/gradients/loss/output_loss/Mean_1_grad/range/deltaConst*
_output_shapes
: *
value	B :**
_class 
loc:@loss/output_loss/Mean_1*
dtype0
ж
:training/Adam/gradients/loss/output_loss/Mean_1_grad/rangeRange@training/Adam/gradients/loss/output_loss/Mean_1_grad/range/start9training/Adam/gradients/loss/output_loss/Mean_1_grad/Size@training/Adam/gradients/loss/output_loss/Mean_1_grad/range/delta*

Tidx0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
:
­
?training/Adam/gradients/loss/output_loss/Mean_1_grad/Fill/valueConst*
_output_shapes
: *
value	B :**
_class 
loc:@loss/output_loss/Mean_1*
dtype0
Ё
9training/Adam/gradients/loss/output_loss/Mean_1_grad/FillFill<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_1?training/Adam/gradients/loss/output_loss/Mean_1_grad/Fill/value*
T0*

index_type0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: 

Btraining/Adam/gradients/loss/output_loss/Mean_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/output_loss/Mean_1_grad/range8training/Adam/gradients/loss/output_loss/Mean_1_grad/mod:training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape9training/Adam/gradients/loss/output_loss/Mean_1_grad/Fill*
T0**
_class 
loc:@loss/output_loss/Mean_1*
N*
_output_shapes
:
Ќ
>training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :**
_class 
loc:@loss/output_loss/Mean_1

<training/Adam/gradients/loss/output_loss/Mean_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/output_loss/Mean_1_grad/DynamicStitch>training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum/y**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
:*
T0

=training/Adam/gradients/loss/output_loss/Mean_1_grad/floordivFloorDiv:training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape<training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum*
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
:
Ў
<training/Adam/gradients/loss/output_loss/Mean_1_grad/ReshapeReshape9training/Adam/gradients/loss/output_loss/mul_grad/ReshapeBtraining/Adam/gradients/loss/output_loss/Mean_1_grad/DynamicStitch*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0**
_class 
loc:@loss/output_loss/Mean_1
Њ
9training/Adam/gradients/loss/output_loss/Mean_1_grad/TileTile<training/Adam/gradients/loss/output_loss/Mean_1_grad/Reshape=training/Adam/gradients/loss/output_loss/Mean_1_grad/floordiv*#
_output_shapes
:џџџџџџџџџ*

Tmultiples0*
T0**
_class 
loc:@loss/output_loss/Mean_1
Н
<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_2Shapeloss/output_loss/Mean*
_output_shapes
:*
T0*
out_type0**
_class 
loc:@loss/output_loss/Mean_1
П
<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_3Shapeloss/output_loss/Mean_1*
T0*
out_type0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
:
А
:training/Adam/gradients/loss/output_loss/Mean_1_grad/ConstConst*
valueB: **
_class 
loc:@loss/output_loss/Mean_1*
dtype0*
_output_shapes
:
Ѕ
9training/Adam/gradients/loss/output_loss/Mean_1_grad/ProdProd<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_2:training/Adam/gradients/loss/output_loss/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: 
В
<training/Adam/gradients/loss/output_loss/Mean_1_grad/Const_1Const*
_output_shapes
:*
valueB: **
_class 
loc:@loss/output_loss/Mean_1*
dtype0
Љ
;training/Adam/gradients/loss/output_loss/Mean_1_grad/Prod_1Prod<training/Adam/gradients/loss/output_loss/Mean_1_grad/Shape_3<training/Adam/gradients/loss/output_loss/Mean_1_grad/Const_1*
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ў
@training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum_1/yConst*
value	B :**
_class 
loc:@loss/output_loss/Mean_1*
dtype0*
_output_shapes
: 

>training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum_1Maximum;training/Adam/gradients/loss/output_loss/Mean_1_grad/Prod_1@training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum_1/y*
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: 

?training/Adam/gradients/loss/output_loss/Mean_1_grad/floordiv_1FloorDiv9training/Adam/gradients/loss/output_loss/Mean_1_grad/Prod>training/Adam/gradients/loss/output_loss/Mean_1_grad/Maximum_1*
T0**
_class 
loc:@loss/output_loss/Mean_1*
_output_shapes
: 
ю
9training/Adam/gradients/loss/output_loss/Mean_1_grad/CastCast?training/Adam/gradients/loss/output_loss/Mean_1_grad/floordiv_1*

SrcT0**
_class 
loc:@loss/output_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0

<training/Adam/gradients/loss/output_loss/Mean_1_grad/truedivRealDiv9training/Adam/gradients/loss/output_loss/Mean_1_grad/Tile9training/Adam/gradients/loss/output_loss/Mean_1_grad/Cast**
_class 
loc:@loss/output_loss/Mean_1*#
_output_shapes
:џџџџџџџџџ*
T0
Й
8training/Adam/gradients/loss/output_loss/Mean_grad/ShapeShapeloss/output_loss/Square*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss/output_loss/Mean
Ѓ
7training/Adam/gradients/loss/output_loss/Mean_grad/SizeConst*
value	B :*(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
: 
ъ
6training/Adam/gradients/loss/output_loss/Mean_grad/addAdd'loss/output_loss/Mean/reduction_indices7training/Adam/gradients/loss/output_loss/Mean_grad/Size*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
: *
T0
ў
6training/Adam/gradients/loss/output_loss/Mean_grad/modFloorMod6training/Adam/gradients/loss/output_loss/Mean_grad/add7training/Adam/gradients/loss/output_loss/Mean_grad/Size*
T0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
: 
Ї
:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *(
_class
loc:@loss/output_loss/Mean
Њ
>training/Adam/gradients/loss/output_loss/Mean_grad/range/startConst*
value	B : *(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
: 
Њ
>training/Adam/gradients/loss/output_loss/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*(
_class
loc:@loss/output_loss/Mean
Ь
8training/Adam/gradients/loss/output_loss/Mean_grad/rangeRange>training/Adam/gradients/loss/output_loss/Mean_grad/range/start7training/Adam/gradients/loss/output_loss/Mean_grad/Size>training/Adam/gradients/loss/output_loss/Mean_grad/range/delta*

Tidx0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
:
Љ
=training/Adam/gradients/loss/output_loss/Mean_grad/Fill/valueConst*
value	B :*(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
: 

7training/Adam/gradients/loss/output_loss/Mean_grad/FillFill:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_1=training/Adam/gradients/loss/output_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*(
_class
loc:@loss/output_loss/Mean

@training/Adam/gradients/loss/output_loss/Mean_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/output_loss/Mean_grad/range6training/Adam/gradients/loss/output_loss/Mean_grad/mod8training/Adam/gradients/loss/output_loss/Mean_grad/Shape7training/Adam/gradients/loss/output_loss/Mean_grad/Fill*
T0*(
_class
loc:@loss/output_loss/Mean*
N*
_output_shapes
:
Ј
<training/Adam/gradients/loss/output_loss/Mean_grad/Maximum/yConst*
value	B :*(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
: 

:training/Adam/gradients/loss/output_loss/Mean_grad/MaximumMaximum@training/Adam/gradients/loss/output_loss/Mean_grad/DynamicStitch<training/Adam/gradients/loss/output_loss/Mean_grad/Maximum/y*
T0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
:

;training/Adam/gradients/loss/output_loss/Mean_grad/floordivFloorDiv8training/Adam/gradients/loss/output_loss/Mean_grad/Shape:training/Adam/gradients/loss/output_loss/Mean_grad/Maximum*
T0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
:
И
:training/Adam/gradients/loss/output_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/output_loss/Mean_1_grad/truediv@training/Adam/gradients/loss/output_loss/Mean_grad/DynamicStitch*
Tshape0*(
_class
loc:@loss/output_loss/Mean*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
Џ
7training/Adam/gradients/loss/output_loss/Mean_grad/TileTile:training/Adam/gradients/loss/output_loss/Mean_grad/Reshape;training/Adam/gradients/loss/output_loss/Mean_grad/floordiv*
T0*(
_class
loc:@loss/output_loss/Mean*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*

Tmultiples0
Л
:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_2Shapeloss/output_loss/Square*
T0*
out_type0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
:
Й
:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_3Shapeloss/output_loss/Mean*
_output_shapes
:*
T0*
out_type0*(
_class
loc:@loss/output_loss/Mean
Ќ
8training/Adam/gradients/loss/output_loss/Mean_grad/ConstConst*
valueB: *(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
:

7training/Adam/gradients/loss/output_loss/Mean_grad/ProdProd:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_28training/Adam/gradients/loss/output_loss/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/output_loss/Mean
Ў
:training/Adam/gradients/loss/output_loss/Mean_grad/Const_1Const*
valueB: *(
_class
loc:@loss/output_loss/Mean*
dtype0*
_output_shapes
:
Ё
9training/Adam/gradients/loss/output_loss/Mean_grad/Prod_1Prod:training/Adam/gradients/loss/output_loss/Mean_grad/Shape_3:training/Adam/gradients/loss/output_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*(
_class
loc:@loss/output_loss/Mean
Њ
>training/Adam/gradients/loss/output_loss/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*(
_class
loc:@loss/output_loss/Mean

<training/Adam/gradients/loss/output_loss/Mean_grad/Maximum_1Maximum9training/Adam/gradients/loss/output_loss/Mean_grad/Prod_1>training/Adam/gradients/loss/output_loss/Mean_grad/Maximum_1/y*
T0*(
_class
loc:@loss/output_loss/Mean*
_output_shapes
: 

=training/Adam/gradients/loss/output_loss/Mean_grad/floordiv_1FloorDiv7training/Adam/gradients/loss/output_loss/Mean_grad/Prod<training/Adam/gradients/loss/output_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*(
_class
loc:@loss/output_loss/Mean
ш
7training/Adam/gradients/loss/output_loss/Mean_grad/CastCast=training/Adam/gradients/loss/output_loss/Mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*(
_class
loc:@loss/output_loss/Mean*
Truncate( 

:training/Adam/gradients/loss/output_loss/Mean_grad/truedivRealDiv7training/Adam/gradients/loss/output_loss/Mean_grad/Tile7training/Adam/gradients/loss/output_loss/Mean_grad/Cast*(
_class
loc:@loss/output_loss/Mean*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
ш
:training/Adam/gradients/loss/output_loss/Square_grad/ConstConst;^training/Adam/gradients/loss/output_loss/Mean_grad/truediv*
valueB
 *   @**
_class 
loc:@loss/output_loss/Square*
dtype0*
_output_shapes
: 
ј
8training/Adam/gradients/loss/output_loss/Square_grad/MulMulloss/output_loss/sub:training/Adam/gradients/loss/output_loss/Square_grad/Const*
T0**
_class 
loc:@loss/output_loss/Square*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

:training/Adam/gradients/loss/output_loss/Square_grad/Mul_1Mul:training/Adam/gradients/loss/output_loss/Mean_grad/truediv8training/Adam/gradients/loss/output_loss/Square_grad/Mul*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0**
_class 
loc:@loss/output_loss/Square
А
7training/Adam/gradients/loss/output_loss/sub_grad/ShapeShapeoutput_1/BiasAdd*
T0*
out_type0*'
_class
loc:@loss/output_loss/sub*
_output_shapes
:
Џ
9training/Adam/gradients/loss/output_loss/sub_grad/Shape_1Shapeoutput_target*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@loss/output_loss/sub
К
Gtraining/Adam/gradients/loss/output_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs7training/Adam/gradients/loss/output_loss/sub_grad/Shape9training/Adam/gradients/loss/output_loss/sub_grad/Shape_1*
T0*'
_class
loc:@loss/output_loss/sub*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Њ
5training/Adam/gradients/loss/output_loss/sub_grad/SumSum:training/Adam/gradients/loss/output_loss/Square_grad/Mul_1Gtraining/Adam/gradients/loss/output_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@loss/output_loss/sub

9training/Adam/gradients/loss/output_loss/sub_grad/ReshapeReshape5training/Adam/gradients/loss/output_loss/sub_grad/Sum7training/Adam/gradients/loss/output_loss/sub_grad/Shape*
T0*
Tshape0*'
_class
loc:@loss/output_loss/sub*'
_output_shapes
:џџџџџџџџџ
Ў
7training/Adam/gradients/loss/output_loss/sub_grad/Sum_1Sum:training/Adam/gradients/loss/output_loss/Square_grad/Mul_1Itraining/Adam/gradients/loss/output_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@loss/output_loss/sub
С
5training/Adam/gradients/loss/output_loss/sub_grad/NegNeg7training/Adam/gradients/loss/output_loss/sub_grad/Sum_1*
T0*'
_class
loc:@loss/output_loss/sub*
_output_shapes
:
Њ
;training/Adam/gradients/loss/output_loss/sub_grad/Reshape_1Reshape5training/Adam/gradients/loss/output_loss/sub_grad/Neg9training/Adam/gradients/loss/output_loss/sub_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@loss/output_loss/sub*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ф
9training/Adam/gradients/output_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training/Adam/gradients/loss/output_loss/sub_grad/Reshape*
T0*#
_class
loc:@output_1/BiasAdd*
data_formatNHWC*
_output_shapes
:

3training/Adam/gradients/output_1/MatMul_grad/MatMulMatMul9training/Adam/gradients/loss/output_loss/sub_grad/Reshapeoutput_1/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(*
T0*"
_class
loc:@output_1/MatMul
ј
5training/Adam/gradients/output_1/MatMul_grad/MatMul_1MatMul	X4_1/Relu9training/Adam/gradients/loss/output_loss/sub_grad/Reshape*
transpose_b( *
T0*"
_class
loc:@output_1/MatMul*
_output_shapes

: *
transpose_a(
Ы
/training/Adam/gradients/X4_1/Relu_grad/ReluGradReluGrad3training/Adam/gradients/output_1/MatMul_grad/MatMul	X4_1/Relu*
T0*
_class
loc:@X4_1/Relu*'
_output_shapes
:џџџџџџџџџ 
в
5training/Adam/gradients/X4_1/BiasAdd_grad/BiasAddGradBiasAddGrad/training/Adam/gradients/X4_1/Relu_grad/ReluGrad*
T0*
_class
loc:@X4_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
є
/training/Adam/gradients/X4_1/MatMul_grad/MatMulMatMul/training/Adam/gradients/X4_1/Relu_grad/ReluGradX4_1/kernel/read*
_class
loc:@X4_1/MatMul*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(*
T0
ц
1training/Adam/gradients/X4_1/MatMul_grad/MatMul_1MatMul	X3_1/Relu/training/Adam/gradients/X4_1/Relu_grad/ReluGrad*
T0*
_class
loc:@X4_1/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( 
Ч
/training/Adam/gradients/X3_1/Relu_grad/ReluGradReluGrad/training/Adam/gradients/X4_1/MatMul_grad/MatMul	X3_1/Relu*
_class
loc:@X3_1/Relu*'
_output_shapes
:џџџџџџџџџ *
T0
в
5training/Adam/gradients/X3_1/BiasAdd_grad/BiasAddGradBiasAddGrad/training/Adam/gradients/X3_1/Relu_grad/ReluGrad*
T0*
_class
loc:@X3_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
є
/training/Adam/gradients/X3_1/MatMul_grad/MatMulMatMul/training/Adam/gradients/X3_1/Relu_grad/ReluGradX3_1/kernel/read*
T0*
_class
loc:@X3_1/MatMul*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(
ц
1training/Adam/gradients/X3_1/MatMul_grad/MatMul_1MatMul	X2_1/Relu/training/Adam/gradients/X3_1/Relu_grad/ReluGrad*
_class
loc:@X3_1/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( *
T0
Ч
/training/Adam/gradients/X2_1/Relu_grad/ReluGradReluGrad/training/Adam/gradients/X3_1/MatMul_grad/MatMul	X2_1/Relu*
T0*
_class
loc:@X2_1/Relu*'
_output_shapes
:џџџџџџџџџ 
в
5training/Adam/gradients/X2_1/BiasAdd_grad/BiasAddGradBiasAddGrad/training/Adam/gradients/X2_1/Relu_grad/ReluGrad*
T0*
_class
loc:@X2_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
є
/training/Adam/gradients/X2_1/MatMul_grad/MatMulMatMul/training/Adam/gradients/X2_1/Relu_grad/ReluGradX2_1/kernel/read*
T0*
_class
loc:@X2_1/MatMul*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(
ц
1training/Adam/gradients/X2_1/MatMul_grad/MatMul_1MatMul	X1_1/Relu/training/Adam/gradients/X2_1/Relu_grad/ReluGrad*
transpose_b( *
T0*
_class
loc:@X2_1/MatMul*
_output_shapes

:  *
transpose_a(
Ч
/training/Adam/gradients/X1_1/Relu_grad/ReluGradReluGrad/training/Adam/gradients/X2_1/MatMul_grad/MatMul	X1_1/Relu*
T0*
_class
loc:@X1_1/Relu*'
_output_shapes
:џџџџџџџџџ 
в
5training/Adam/gradients/X1_1/BiasAdd_grad/BiasAddGradBiasAddGrad/training/Adam/gradients/X1_1/Relu_grad/ReluGrad*
_class
loc:@X1_1/BiasAdd*
data_formatNHWC*
_output_shapes
: *
T0
є
/training/Adam/gradients/X1_1/MatMul_grad/MatMulMatMul/training/Adam/gradients/X1_1/Relu_grad/ReluGradX1_1/kernel/read*'
_output_shapes
:џџџџџџџџџ *
transpose_a( *
transpose_b(*
T0*
_class
loc:@X1_1/MatMul
щ
1training/Adam/gradients/X1_1/MatMul_grad/MatMul_1MatMulinput_1/Relu/training/Adam/gradients/X1_1/Relu_grad/ReluGrad*
T0*
_class
loc:@X1_1/MatMul*
_output_shapes

:  *
transpose_a(*
transpose_b( 
а
2training/Adam/gradients/input_1/Relu_grad/ReluGradReluGrad/training/Adam/gradients/X1_1/MatMul_grad/MatMulinput_1/Relu*
T0*
_class
loc:@input_1/Relu*'
_output_shapes
:џџџџџџџџџ 
л
8training/Adam/gradients/input_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/input_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@input_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 

2training/Adam/gradients/input_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/input_1/Relu_grad/ReluGradinput_1/kernel/read*
transpose_b(*
T0*!
_class
loc:@input_1/MatMul*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 
є
4training/Adam/gradients/input_1/MatMul_grad/MatMul_1MatMulinput_input_12training/Adam/gradients/input_1/Relu_grad/ReluGrad*!
_class
loc:@input_1/MatMul*
_output_shapes
:	 *
transpose_a(*
transpose_b( *
T0
_
training/Adam/AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	
Ќ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: *
use_locking( 
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
_output_shapes
: *
T0

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*
_output_shapes
:	 

training/Adam/Variable
VariableV2*
dtype0*
_output_shapes
:	 *
	container *
shape:	 *
shared_name 
в
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	 

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes
:	 
b
training/Adam/zeros_1Const*
_output_shapes
: *
valueB *    *
dtype0

training/Adam/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
е
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_1
v
%training/Adam/zeros_2/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*
_output_shapes

:  *
T0*

index_type0

training/Adam/Variable_2
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
й
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:  

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes

:  *
T0
b
training/Adam/zeros_3Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_3
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
е
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_3
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
_output_shapes

:  *
T0*

index_type0

training/Adam/Variable_4
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
й
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
_output_shapes

:  *
T0*+
_class!
loc:@training/Adam/Variable_4
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
е
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
v
%training/Adam/zeros_6/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_6Fill%training/Adam/zeros_6/shape_as_tensortraining/Adam/zeros_6/Const*
_output_shapes

:  *
T0*

index_type0

training/Adam/Variable_6
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
й
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
_output_shapes

:  *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

:  
b
training/Adam/zeros_7Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_7
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
е
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
T0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: 
v
%training/Adam/zeros_8/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes

:  

training/Adam/Variable_8
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
й
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes

:  

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes

:  
b
training/Adam/zeros_9Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_9
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
е
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: *
T0
k
training/Adam/zeros_10Const*
valueB *    *
dtype0*
_output_shapes

: 

training/Adam/Variable_10
VariableV2*
_output_shapes

: *
	container *
shape
: *
shared_name *
dtype0
н
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
_output_shapes

: *
T0*,
_class"
 loc:@training/Adam/Variable_10
c
training/Adam/zeros_11Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_11
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
й
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*

index_type0*
_output_shapes
:	 *
T0

training/Adam/Variable_12
VariableV2*
shape:	 *
shared_name *
dtype0*
_output_shapes
:	 *
	container 
о
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes
:	 

training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*
T0*,
_class"
 loc:@training/Adam/Variable_12*
_output_shapes
:	 
c
training/Adam/zeros_13Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_13
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
й
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13

training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_13
w
&training/Adam/zeros_14/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_14/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_14Fill&training/Adam/zeros_14/shape_as_tensortraining/Adam/zeros_14/Const*
T0*

index_type0*
_output_shapes

:  

training/Adam/Variable_14
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
н
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14

training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
T0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes

:  
c
training/Adam/zeros_15Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_15
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
й
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
: 
w
&training/Adam/zeros_16/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
_output_shapes

:  *
T0*

index_type0

training/Adam/Variable_16
VariableV2*
dtype0*
_output_shapes

:  *
	container *
shape
:  *
shared_name 
н
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(

training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*
_output_shapes

:  
c
training/Adam/zeros_17Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_17
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
й
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
T0*,
_class"
 loc:@training/Adam/Variable_17*
_output_shapes
: 
w
&training/Adam/zeros_18/shape_as_tensorConst*
valueB"        *
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes

:  

training/Adam/Variable_18
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
н
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  

training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes

:  
c
training/Adam/zeros_19Const*
dtype0*
_output_shapes
: *
valueB *    

training/Adam/Variable_19
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
й
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes
: 
w
&training/Adam/zeros_20/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"        
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
_output_shapes

:  *
T0*

index_type0

training/Adam/Variable_20
VariableV2*
shape
:  *
shared_name *
dtype0*
_output_shapes

:  *
	container 
н
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes

:  

training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*
_output_shapes

:  
c
training/Adam/zeros_21Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_21
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
й
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes
: 
k
training/Adam/zeros_22Const*
valueB *    *
dtype0*
_output_shapes

: 

training/Adam/Variable_22
VariableV2*
shape
: *
shared_name *
dtype0*
_output_shapes

: *
	container 
н
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(

training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes

: 
c
training/Adam/zeros_23Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_23
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:

training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes
:
p
&training/Adam/zeros_24/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_24
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24

training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*
T0*,
_class"
 loc:@training/Adam/Variable_24*
_output_shapes
:
p
&training/Adam/zeros_25/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_25/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_25Fill&training/Adam/zeros_25/shape_as_tensortraining/Adam/zeros_25/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_25
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes
:

training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes
:
p
&training/Adam/zeros_26/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_26/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_26Fill&training/Adam/zeros_26/shape_as_tensortraining/Adam/zeros_26/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_26
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
й
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes
:

training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
T0*,
_class"
 loc:@training/Adam/Variable_26*
_output_shapes
:
p
&training/Adam/zeros_27/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_27/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_27Fill&training/Adam/zeros_27/shape_as_tensortraining/Adam/zeros_27/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_27
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:

training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes
:
p
&training/Adam/zeros_28/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_28
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:

training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_28
p
&training/Adam/zeros_29/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_29/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_29Fill&training/Adam/zeros_29/shape_as_tensortraining/Adam/zeros_29/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_29
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
й
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes
:

training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes
:
p
&training/Adam/zeros_30/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_30
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
й
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(*
_output_shapes
:

training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_30
p
&training/Adam/zeros_31/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_31/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_31Fill&training/Adam/zeros_31/shape_as_tensortraining/Adam/zeros_31/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_31
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
й
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(

training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
T0*,
_class"
 loc:@training/Adam/Variable_31*
_output_shapes
:
p
&training/Adam/zeros_32/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_32/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_32Fill&training/Adam/zeros_32/shape_as_tensortraining/Adam/zeros_32/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_32
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
й
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes
:

training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes
:
p
&training/Adam/zeros_33/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_33/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_33Fill&training/Adam/zeros_33/shape_as_tensortraining/Adam/zeros_33/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_33
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
T0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes
:
p
&training/Adam/zeros_34/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_34
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
й
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(

training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
T0*,
_class"
 loc:@training/Adam/Variable_34*
_output_shapes
:
p
&training/Adam/zeros_35/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_35/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_35Fill&training/Adam/zeros_35/shape_as_tensortraining/Adam/zeros_35/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_35
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
й
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(

training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_35
s
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes
:	 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/input_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
n
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	 
v
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_12/read*
_output_shapes
:	 *
T0
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
_output_shapes
: *
T0
~
training/Adam/SquareSquare4training/Adam/gradients/input_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	 
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes
:	 *
T0
n
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes
:	 
l
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes
:	 
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*
T0*
_output_shapes
:	 

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
_output_shapes
:	 *
T0
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	 
Z
training/Adam/add_3/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
q
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes
:	 
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
_output_shapes
:	 *
T0
r
training/Adam/sub_4Subinput_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes
:	 
Щ
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
б
training/Adam/Assign_1Assigntraining/Adam/Variable_12training/Adam/add_2*
_output_shapes
:	 *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(
Л
training/Adam/Assign_2Assigninput_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@input_1/kernel*
validate_shape(*
_output_shapes
:	 
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
_output_shapes
: *
T0
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/input_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
: *
T0
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_13/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_1Square8training/Adam/gradients/input_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
: 
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
: 
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
_output_shapes
: *
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
_output_shapes
: *
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes
: *
T0
Z
training/Adam/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes
: *
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes
: *
T0
k
training/Adam/sub_7Subinput_1/bias/readtraining/Adam/truediv_2*
_output_shapes
: *
T0
Ъ
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ь
training/Adam/Assign_4Assigntraining/Adam/Variable_13training/Adam/add_5*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
: *
use_locking(
В
training/Adam/Assign_5Assigninput_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@input_1/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes

:  
Z
training/Adam/sub_8/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_81training/Adam/gradients/X1_1/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:  
v
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_14/read*
T0*
_output_shapes

:  
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
_output_shapes
: *
T0
|
training/Adam/Square_2Square1training/Adam/gradients/X1_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes

:  
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

:  
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:  
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes

:  

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

:  
Z
training/Adam/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

:  
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

:  *
T0
o
training/Adam/sub_10SubX1_1/kernel/readtraining/Adam/truediv_3*
T0*
_output_shapes

:  
Ю
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:  
а
training/Adam/Assign_7Assigntraining/Adam/Variable_14training/Adam/add_8*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:  
Е
training/Adam/Assign_8AssignX1_1/kerneltraining/Adam/sub_10*
T0*
_class
loc:@X1_1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_115training/Adam/gradients/X1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
: *
T0
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_15/read*
_output_shapes
: *
T0
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 
|
training/Adam/Square_3Square5training/Adam/gradients/X1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
: 
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
: 
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
: *
T0
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
_output_shapes
: *
T0

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
: *
T0
[
training/Adam/add_12/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
: 
i
training/Adam/sub_13SubX1_1/bias/readtraining/Adam/truediv_4*
_output_shapes
: *
T0
Ы
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(
Ю
training/Adam/Assign_10Assigntraining/Adam/Variable_15training/Adam/add_11*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(
Ў
training/Adam/Assign_11Assign	X1_1/biastraining/Adam/sub_13*
use_locking(*
T0*
_class
loc:@X1_1/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:  
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_22Multraining/Adam/sub_141training/Adam/gradients/X2_1/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:  
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_16/read*
_output_shapes

:  *
T0
[
training/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 
|
training/Adam/Square_4Square1training/Adam/gradients/X2_1/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:  
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
_output_shapes

:  *
T0
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:  *
T0
[
training/Adam/Const_10Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*
T0*
_output_shapes

:  

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes

:  *
T0
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *Пж3
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
_output_shapes

:  *
T0
o
training/Adam/sub_16SubX2_1/kernel/readtraining/Adam/truediv_5*
T0*
_output_shapes

:  
а
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:  *
use_locking(
в
training/Adam/Assign_13Assigntraining/Adam/Variable_16training/Adam/add_14*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
Ж
training/Adam/Assign_14AssignX2_1/kerneltraining/Adam/sub_16*
_class
loc:@X2_1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
_output_shapes
: *
T0
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_27Multraining/Adam/sub_175training/Adam/gradients/X2_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
: 
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_17/read*
T0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
_output_shapes
: *
T0
|
training/Adam/Square_5Square5training/Adam/gradients/X2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
: 
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
: 
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
: *
T0
[
training/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_13Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes
: 

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
_output_shapes
: *
T0
[
training/Adam/add_18/yConst*
_output_shapes
: *
valueB
 *Пж3*
dtype0
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
_output_shapes
: *
T0
i
training/Adam/sub_19SubX2_1/bias/readtraining/Adam/truediv_6*
_output_shapes
: *
T0
Ь
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
Ю
training/Adam/Assign_16Assigntraining/Adam/Variable_17training/Adam/add_17*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ў
training/Adam/Assign_17Assign	X2_1/biastraining/Adam/sub_19*
use_locking(*
T0*
_class
loc:@X2_1/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
_output_shapes

:  *
T0
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_32Multraining/Adam/sub_201training/Adam/gradients/X3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes

:  *
T0
v
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_18/read*
T0*
_output_shapes

:  
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
_output_shapes
: *
T0
|
training/Adam/Square_6Square1training/Adam/gradients/X3_1/MatMul_grad/MatMul_1*
_output_shapes

:  *
T0
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

:  
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
_output_shapes

:  *
T0
m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*
_output_shapes

:  
[
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_15Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
T0*
_output_shapes

:  

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*
_output_shapes

:  
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

:  *
T0
[
training/Adam/add_21/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes

:  *
T0
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
_output_shapes

:  *
T0
o
training/Adam/sub_22SubX3_1/kernel/readtraining/Adam/truediv_7*
T0*
_output_shapes

:  
а
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

:  
в
training/Adam/Assign_19Assigntraining/Adam/Variable_18training/Adam/add_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  
Ж
training/Adam/Assign_20AssignX3_1/kerneltraining/Adam/sub_22*
use_locking(*
T0*
_class
loc:@X3_1/kernel*
validate_shape(*
_output_shapes

:  
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_37Multraining/Adam/sub_235training/Adam/gradients/X3_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes
: 
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_19/read*
_output_shapes
: *
T0
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 
|
training/Adam/Square_7Square5training/Adam/gradients/X3_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
: 
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
: *
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes
: *
T0
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes
: 

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
: 
[
training/Adam/add_24/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
: 
i
training/Adam/sub_25SubX3_1/bias/readtraining/Adam/truediv_8*
T0*
_output_shapes
: 
Ь
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
Ю
training/Adam/Assign_22Assigntraining/Adam/Variable_19training/Adam/add_23*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
Ў
training/Adam/Assign_23Assign	X3_1/biastraining/Adam/sub_25*
use_locking(*
T0*
_class
loc:@X3_1/bias*
validate_shape(*
_output_shapes
: 
u
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*
T0*
_output_shapes

:  
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_42Multraining/Adam/sub_261training/Adam/gradients/X4_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
p
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
_output_shapes

:  *
T0
v
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_20/read*
_output_shapes

:  *
T0
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
_output_shapes
: *
T0
|
training/Adam/Square_8Square1training/Adam/gradients/X4_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:  
r
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
_output_shapes

:  *
T0
p
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*
T0*
_output_shapes

:  
m
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*
_output_shapes

:  
[
training/Adam/Const_18Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*
_output_shapes

:  

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*
_output_shapes

:  *
T0
d
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
_output_shapes

:  *
T0
[
training/Adam/add_27/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
r
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*
_output_shapes

:  
w
training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
_output_shapes

:  *
T0
o
training/Adam/sub_28SubX4_1/kernel/readtraining/Adam/truediv_9*
T0*
_output_shapes

:  
а
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes

:  
в
training/Adam/Assign_25Assigntraining/Adam/Variable_20training/Adam/add_26*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(
Ж
training/Adam/Assign_26AssignX4_1/kerneltraining/Adam/sub_28*
_output_shapes

:  *
use_locking(*
T0*
_class
loc:@X4_1/kernel*
validate_shape(
q
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes
: 
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_47Multraining/Adam/sub_295training/Adam/gradients/X4_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
T0*
_output_shapes
: 
r
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_21/read*
_output_shapes
: *
T0
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 
|
training/Adam/Square_9Square5training/Adam/gradients/X4_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
_output_shapes
: *
T0
l
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes
: 
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes
: 
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
T0*
_output_shapes
: 

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
T0*
_output_shapes
: 
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
_output_shapes
: *
T0
[
training/Adam/add_30/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
_output_shapes
: *
T0
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
_output_shapes
: *
T0
j
training/Adam/sub_31SubX4_1/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes
: 
Ь
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ю
training/Adam/Assign_28Assigntraining/Adam/Variable_21training/Adam/add_29*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes
: *
use_locking(
Ў
training/Adam/Assign_29Assign	X4_1/biastraining/Adam/sub_31*
_class
loc:@X4_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
v
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0*
_output_shapes

: 
[
training/Adam/sub_32/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_52Multraining/Adam/sub_325training/Adam/gradients/output_1/MatMul_grad/MatMul_1*
_output_shapes

: *
T0
p
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
T0*
_output_shapes

: 
v
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_22/read*
_output_shapes

: *
T0
[
training/Adam/sub_33/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_10Square5training/Adam/gradients/output_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

: 
s
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
_output_shapes

: *
T0
p
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0*
_output_shapes

: 
m
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0*
_output_shapes

: 
[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
T0*
_output_shapes

: 

training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
_output_shapes

: *
T0
f
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
_output_shapes

: *
T0
[
training/Adam/add_33/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
s
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
_output_shapes

: *
T0
x
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0*
_output_shapes

: 
t
training/Adam/sub_34Suboutput_1/kernel/readtraining/Adam/truediv_11*
T0*
_output_shapes

: 
в
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes

: 
в
training/Adam/Assign_31Assigntraining/Adam/Variable_22training/Adam/add_32*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

: 
О
training/Adam/Assign_32Assignoutput_1/kerneltraining/Adam/sub_34*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@output_1/kernel
r
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
_output_shapes
:*
T0
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_57Multraining/Adam/sub_359training/Adam/gradients/output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
_output_shapes
:*
T0
r
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_23/read*
T0*
_output_shapes
:
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_11Square9training/Adam/gradients/output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
T0*
_output_shapes
:
l
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
_output_shapes
:*
T0
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
_output_shapes
:*
T0
[
training/Adam/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_25Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
_output_shapes
:*
T0

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes
:
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
T0*
_output_shapes
:
[
training/Adam/add_36/yConst*
valueB
 *Пж3*
dtype0*
_output_shapes
: 
o
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes
:
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
_output_shapes
:*
T0
n
training/Adam/sub_37Suboutput_1/bias/readtraining/Adam/truediv_12*
T0*
_output_shapes
:
Ю
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(
Ю
training/Adam/Assign_34Assigntraining/Adam/Variable_23training/Adam/add_35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:
Ж
training/Adam/Assign_35Assignoutput_1/biastraining/Adam/sub_37*
T0* 
_class
loc:@output_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
м
training/group_depsNoOp	^loss/mul^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9


group_depsNoOp	^loss/mul

IsVariableInitializedIsVariableInitializedinput/kernel*
_class
loc:@input/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitialized
input/bias*
_class
loc:@input/bias*
dtype0*
_output_shapes
: 
~
IsVariableInitialized_2IsVariableInitialized	X1/kernel*
_class
loc:@X1/kernel*
dtype0*
_output_shapes
: 
z
IsVariableInitialized_3IsVariableInitializedX1/bias*
_class
loc:@X1/bias*
dtype0*
_output_shapes
: 
~
IsVariableInitialized_4IsVariableInitialized	X2/kernel*
_class
loc:@X2/kernel*
dtype0*
_output_shapes
: 
z
IsVariableInitialized_5IsVariableInitializedX2/bias*
dtype0*
_output_shapes
: *
_class
loc:@X2/bias
~
IsVariableInitialized_6IsVariableInitialized	X3/kernel*
_class
loc:@X3/kernel*
dtype0*
_output_shapes
: 
z
IsVariableInitialized_7IsVariableInitializedX3/bias*
_class
loc:@X3/bias*
dtype0*
_output_shapes
: 
~
IsVariableInitialized_8IsVariableInitialized	X4/kernel*
_class
loc:@X4/kernel*
dtype0*
_output_shapes
: 
z
IsVariableInitialized_9IsVariableInitializedX4/bias*
_class
loc:@X4/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedoutput/kernel* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedoutput/bias*
_output_shapes
: *
_class
loc:@output/bias*
dtype0

IsVariableInitialized_12IsVariableInitializedinput_1/kernel*!
_class
loc:@input_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedinput_1/bias*
_class
loc:@input_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedX1_1/kernel*
_class
loc:@X1_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitialized	X1_1/bias*
_class
loc:@X1_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedX2_1/kernel*
dtype0*
_output_shapes
: *
_class
loc:@X2_1/kernel

IsVariableInitialized_17IsVariableInitialized	X2_1/bias*
_class
loc:@X2_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedX3_1/kernel*
_output_shapes
: *
_class
loc:@X3_1/kernel*
dtype0

IsVariableInitialized_19IsVariableInitialized	X3_1/bias*
_class
loc:@X3_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedX4_1/kernel*
_class
loc:@X4_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitialized	X4_1/bias*
_class
loc:@X4_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedoutput_1/kernel*"
_class
loc:@output_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedoutput_1/bias* 
_class
loc:@output_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializedAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
{
IsVariableInitialized_25IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_26IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_27IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_28IsVariableInitialized
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0

IsVariableInitialized_29IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_30IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_31IsVariableInitializedtraining/Adam/Variable_2*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_2*
dtype0

IsVariableInitialized_32IsVariableInitializedtraining/Adam/Variable_3*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_3

IsVariableInitialized_33IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_34IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedtraining/Adam/Variable_6*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_6*
dtype0

IsVariableInitialized_36IsVariableInitializedtraining/Adam/Variable_7*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7*
dtype0

IsVariableInitialized_37IsVariableInitializedtraining/Adam/Variable_8*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_8

IsVariableInitialized_38IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 

IsVariableInitialized_39IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_40IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 

IsVariableInitialized_41IsVariableInitializedtraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0*
_output_shapes
: 

IsVariableInitialized_42IsVariableInitializedtraining/Adam/Variable_13*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_13*
dtype0

IsVariableInitialized_43IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 

IsVariableInitialized_44IsVariableInitializedtraining/Adam/Variable_15*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_15*
dtype0

IsVariableInitialized_45IsVariableInitializedtraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
: 

IsVariableInitialized_46IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 

IsVariableInitialized_47IsVariableInitializedtraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
: 

IsVariableInitialized_48IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 

IsVariableInitialized_49IsVariableInitializedtraining/Adam/Variable_20*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_20

IsVariableInitialized_50IsVariableInitializedtraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
: 

IsVariableInitialized_51IsVariableInitializedtraining/Adam/Variable_22*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_22

IsVariableInitialized_52IsVariableInitializedtraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
: 

IsVariableInitialized_53IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedtraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
: 

IsVariableInitialized_55IsVariableInitializedtraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*
_output_shapes
: 

IsVariableInitialized_56IsVariableInitializedtraining/Adam/Variable_27*,
_class"
 loc:@training/Adam/Variable_27*
dtype0*
_output_shapes
: 

IsVariableInitialized_57IsVariableInitializedtraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*
_output_shapes
: 

IsVariableInitialized_58IsVariableInitializedtraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0*
_output_shapes
: 

IsVariableInitialized_59IsVariableInitializedtraining/Adam/Variable_30*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_30

IsVariableInitialized_60IsVariableInitializedtraining/Adam/Variable_31*,
_class"
 loc:@training/Adam/Variable_31*
dtype0*
_output_shapes
: 

IsVariableInitialized_61IsVariableInitializedtraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0*
_output_shapes
: 

IsVariableInitialized_62IsVariableInitializedtraining/Adam/Variable_33*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_33*
dtype0

IsVariableInitialized_63IsVariableInitializedtraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0*
_output_shapes
: 

IsVariableInitialized_64IsVariableInitializedtraining/Adam/Variable_35*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_35
И
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^X1/bias/Assign^X1/kernel/Assign^X1_1/bias/Assign^X1_1/kernel/Assign^X2/bias/Assign^X2/kernel/Assign^X2_1/bias/Assign^X2_1/kernel/Assign^X3/bias/Assign^X3/kernel/Assign^X3_1/bias/Assign^X3_1/kernel/Assign^X4/bias/Assign^X4/kernel/Assign^X4_1/bias/Assign^X4_1/kernel/Assign^input/bias/Assign^input/kernel/Assign^input_1/bias/Assign^input_1/kernel/Assign^output/bias/Assign^output/kernel/Assign^output_1/bias/Assign^output_1/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2c4fcc6e60a6414c8942b3f874886bdf/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*Й

valueЏ
BЌ
ABAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBX1/biasB	X1/kernelB	X1_1/biasBX1_1/kernelBX2/biasB	X2/kernelB	X2_1/biasBX2_1/kernelBX3/biasB	X3/kernelB	X3_1/biasBX3_1/kernelBX4/biasB	X4/kernelB	X4_1/biasBX4_1/kernelB
input/biasBinput/kernelBinput_1/biasBinput_1/kernelBoutput/biasBoutput/kernelBoutput_1/biasBoutput_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:A
ї
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:A
ч
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrX1/bias	X1/kernel	X1_1/biasX1_1/kernelX2/bias	X2/kernel	X2_1/biasX2_1/kernelX3/bias	X3/kernel	X3_1/biasX3_1/kernelX4/bias	X4/kernel	X4_1/biasX4_1/kernel
input/biasinput/kernelinput_1/biasinput_1/kerneloutput/biasoutput/kerneloutput_1/biasoutput_1/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_11training/Adam/Variable_12training/Adam/Variable_13training/Adam/Variable_14training/Adam/Variable_15training/Adam/Variable_16training/Adam/Variable_17training/Adam/Variable_18training/Adam/Variable_19training/Adam/Variable_2training/Adam/Variable_20training/Adam/Variable_21training/Adam/Variable_22training/Adam/Variable_23training/Adam/Variable_24training/Adam/Variable_25training/Adam/Variable_26training/Adam/Variable_27training/Adam/Variable_28training/Adam/Variable_29training/Adam/Variable_3training/Adam/Variable_30training/Adam/Variable_31training/Adam/Variable_32training/Adam/Variable_33training/Adam/Variable_34training/Adam/Variable_35training/Adam/Variable_4training/Adam/Variable_5training/Adam/Variable_6training/Adam/Variable_7training/Adam/Variable_8training/Adam/Variable_9"/device:CPU:0*O
dtypesE
C2A	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*Й

valueЏ
BЌ
ABAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBX1/biasB	X1/kernelB	X1_1/biasBX1_1/kernelBX2/biasB	X2/kernelB	X2_1/biasBX2_1/kernelBX3/biasB	X3/kernelB	X3_1/biasBX3_1/kernelBX4/biasB	X4/kernelB	X4_1/biasBX4_1/kernelB
input/biasBinput/kernelBinput_1/biasBinput_1/kernelBoutput/biasBoutput/kernelBoutput_1/biasBoutput_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:A
њ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:A
т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*O
dtypesE
C2A	

save/AssignAssignAdam/beta_1save/RestoreV2*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
Ј
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(

save/Assign_5AssignX1/biassave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@X1/bias*
validate_shape(*
_output_shapes
: 
Є
save/Assign_6Assign	X1/kernelsave/RestoreV2:6*
_output_shapes

:  *
use_locking(*
T0*
_class
loc:@X1/kernel*
validate_shape(
 
save/Assign_7Assign	X1_1/biassave/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X1_1/bias*
validate_shape(
Ј
save/Assign_8AssignX1_1/kernelsave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@X1_1/kernel*
validate_shape(*
_output_shapes

:  

save/Assign_9AssignX2/biassave/RestoreV2:9*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X2/bias
І
save/Assign_10Assign	X2/kernelsave/RestoreV2:10*
T0*
_class
loc:@X2/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(
Ђ
save/Assign_11Assign	X2_1/biassave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@X2_1/bias*
validate_shape(*
_output_shapes
: 
Њ
save/Assign_12AssignX2_1/kernelsave/RestoreV2:12*
use_locking(*
T0*
_class
loc:@X2_1/kernel*
validate_shape(*
_output_shapes

:  

save/Assign_13AssignX3/biassave/RestoreV2:13*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X3/bias*
validate_shape(
І
save/Assign_14Assign	X3/kernelsave/RestoreV2:14*
use_locking(*
T0*
_class
loc:@X3/kernel*
validate_shape(*
_output_shapes

:  
Ђ
save/Assign_15Assign	X3_1/biassave/RestoreV2:15*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X3_1/bias*
validate_shape(
Њ
save/Assign_16AssignX3_1/kernelsave/RestoreV2:16*
_class
loc:@X3_1/kernel*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0

save/Assign_17AssignX4/biassave/RestoreV2:17*
use_locking(*
T0*
_class
loc:@X4/bias*
validate_shape(*
_output_shapes
: 
І
save/Assign_18Assign	X4/kernelsave/RestoreV2:18*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*
_class
loc:@X4/kernel
Ђ
save/Assign_19Assign	X4_1/biassave/RestoreV2:19*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@X4_1/bias*
validate_shape(
Њ
save/Assign_20AssignX4_1/kernelsave/RestoreV2:20*
use_locking(*
T0*
_class
loc:@X4_1/kernel*
validate_shape(*
_output_shapes

:  
Є
save/Assign_21Assign
input/biassave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@input/bias*
validate_shape(*
_output_shapes
: 
­
save/Assign_22Assigninput/kernelsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@input/kernel*
validate_shape(*
_output_shapes
:	 
Ј
save/Assign_23Assigninput_1/biassave/RestoreV2:23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@input_1/bias
Б
save/Assign_24Assigninput_1/kernelsave/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@input_1/kernel*
validate_shape(*
_output_shapes
:	 
І
save/Assign_25Assignoutput/biassave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
Ў
save/Assign_26Assignoutput/kernelsave/RestoreV2:26*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

: 
Њ
save/Assign_27Assignoutput_1/biassave/RestoreV2:27*
use_locking(*
T0* 
_class
loc:@output_1/bias*
validate_shape(*
_output_shapes
:
В
save/Assign_28Assignoutput_1/kernelsave/RestoreV2:28*
use_locking(*
T0*"
_class
loc:@output_1/kernel*
validate_shape(*
_output_shapes

: 
С
save/Assign_29Assigntraining/Adam/Variablesave/RestoreV2:29*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0*)
_class
loc:@training/Adam/Variable
Р
save/Assign_30Assigntraining/Adam/Variable_1save/RestoreV2:30*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ц
save/Assign_31Assigntraining/Adam/Variable_10save/RestoreV2:31*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10
Т
save/Assign_32Assigntraining/Adam/Variable_11save/RestoreV2:32*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(
Ч
save/Assign_33Assigntraining/Adam/Variable_12save/RestoreV2:33*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
Т
save/Assign_34Assigntraining/Adam/Variable_13save/RestoreV2:34*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
: 
Ц
save/Assign_35Assigntraining/Adam/Variable_14save/RestoreV2:35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes

:  
Т
save/Assign_36Assigntraining/Adam/Variable_15save/RestoreV2:36*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(
Ц
save/Assign_37Assigntraining/Adam/Variable_16save/RestoreV2:37*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16
Т
save/Assign_38Assigntraining/Adam/Variable_17save/RestoreV2:38*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ц
save/Assign_39Assigntraining/Adam/Variable_18save/RestoreV2:39*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes

:  
Т
save/Assign_40Assigntraining/Adam/Variable_19save/RestoreV2:40*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes
: 
Ф
save/Assign_41Assigntraining/Adam/Variable_2save/RestoreV2:41*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:  *
use_locking(*
T0
Ц
save/Assign_42Assigntraining/Adam/Variable_20save/RestoreV2:42*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*
_output_shapes

:  
Т
save/Assign_43Assigntraining/Adam/Variable_21save/RestoreV2:43*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(
Ц
save/Assign_44Assigntraining/Adam/Variable_22save/RestoreV2:44*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes

: 
Т
save/Assign_45Assigntraining/Adam/Variable_23save/RestoreV2:45*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes
:*
use_locking(
Т
save/Assign_46Assigntraining/Adam/Variable_24save/RestoreV2:46*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*
_output_shapes
:
Т
save/Assign_47Assigntraining/Adam/Variable_25save/RestoreV2:47*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(
Т
save/Assign_48Assigntraining/Adam/Variable_26save/RestoreV2:48*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes
:
Т
save/Assign_49Assigntraining/Adam/Variable_27save/RestoreV2:49*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Т
save/Assign_50Assigntraining/Adam/Variable_28save/RestoreV2:50*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(*
_output_shapes
:
Т
save/Assign_51Assigntraining/Adam/Variable_29save/RestoreV2:51*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Р
save/Assign_52Assigntraining/Adam/Variable_3save/RestoreV2:52*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3
Т
save/Assign_53Assigntraining/Adam/Variable_30save/RestoreV2:53*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(*
_output_shapes
:
Т
save/Assign_54Assigntraining/Adam/Variable_31save/RestoreV2:54*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes
:
Т
save/Assign_55Assigntraining/Adam/Variable_32save/RestoreV2:55*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes
:
Т
save/Assign_56Assigntraining/Adam/Variable_33save/RestoreV2:56*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Т
save/Assign_57Assigntraining/Adam/Variable_34save/RestoreV2:57*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:*
use_locking(
Т
save/Assign_58Assigntraining/Adam/Variable_35save/RestoreV2:58*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:
Ф
save/Assign_59Assigntraining/Adam/Variable_4save/RestoreV2:59*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:  
Р
save/Assign_60Assigntraining/Adam/Variable_5save/RestoreV2:60*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(
Ф
save/Assign_61Assigntraining/Adam/Variable_6save/RestoreV2:61*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

:  
Р
save/Assign_62Assigntraining/Adam/Variable_7save/RestoreV2:62*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
Ф
save/Assign_63Assigntraining/Adam/Variable_8save/RestoreV2:63*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes

:  *
use_locking(
Р
save/Assign_64Assigntraining/Adam/Variable_9save/RestoreV2:64*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
: *
use_locking(
п
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"§4
	variablesя4ь4
T
input/kernel:0input/kernel/Assigninput/kernel/read:02input/random_uniform:08
E
input/bias:0input/bias/Assigninput/bias/read:02input/Const:08
H
X1/kernel:0X1/kernel/AssignX1/kernel/read:02X1/random_uniform:08
9
	X1/bias:0X1/bias/AssignX1/bias/read:02
X1/Const:08
H
X2/kernel:0X2/kernel/AssignX2/kernel/read:02X2/random_uniform:08
9
	X2/bias:0X2/bias/AssignX2/bias/read:02
X2/Const:08
H
X3/kernel:0X3/kernel/AssignX3/kernel/read:02X3/random_uniform:08
9
	X3/bias:0X3/bias/AssignX3/bias/read:02
X3/Const:08
H
X4/kernel:0X4/kernel/AssignX4/kernel/read:02X4/random_uniform:08
9
	X4/bias:0X4/bias/AssignX4/bias/read:02
X4/Const:08
X
output/kernel:0output/kernel/Assignoutput/kernel/read:02output/random_uniform:08
I
output/bias:0output/bias/Assignoutput/bias/read:02output/Const:08
\
input_1/kernel:0input_1/kernel/Assigninput_1/kernel/read:02input_1/random_uniform:08
M
input_1/bias:0input_1/bias/Assigninput_1/bias/read:02input_1/Const:08
P
X1_1/kernel:0X1_1/kernel/AssignX1_1/kernel/read:02X1_1/random_uniform:08
A
X1_1/bias:0X1_1/bias/AssignX1_1/bias/read:02X1_1/Const:08
P
X2_1/kernel:0X2_1/kernel/AssignX2_1/kernel/read:02X2_1/random_uniform:08
A
X2_1/bias:0X2_1/bias/AssignX2_1/bias/read:02X2_1/Const:08
P
X3_1/kernel:0X3_1/kernel/AssignX3_1/kernel/read:02X3_1/random_uniform:08
A
X3_1/bias:0X3_1/bias/AssignX3_1/bias/read:02X3_1/Const:08
P
X4_1/kernel:0X4_1/kernel/AssignX4_1/kernel/read:02X4_1/random_uniform:08
A
X4_1/bias:0X4_1/bias/AssignX4_1/bias/read:02X4_1/Const:08
`
output_1/kernel:0output_1/kernel/Assignoutput_1/kernel/read:02output_1/random_uniform:08
Q
output_1/bias:0output_1/bias/Assignoutput_1/bias/read:02output_1/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08"5
trainable_variablesя4ь4
T
input/kernel:0input/kernel/Assigninput/kernel/read:02input/random_uniform:08
E
input/bias:0input/bias/Assigninput/bias/read:02input/Const:08
H
X1/kernel:0X1/kernel/AssignX1/kernel/read:02X1/random_uniform:08
9
	X1/bias:0X1/bias/AssignX1/bias/read:02
X1/Const:08
H
X2/kernel:0X2/kernel/AssignX2/kernel/read:02X2/random_uniform:08
9
	X2/bias:0X2/bias/AssignX2/bias/read:02
X2/Const:08
H
X3/kernel:0X3/kernel/AssignX3/kernel/read:02X3/random_uniform:08
9
	X3/bias:0X3/bias/AssignX3/bias/read:02
X3/Const:08
H
X4/kernel:0X4/kernel/AssignX4/kernel/read:02X4/random_uniform:08
9
	X4/bias:0X4/bias/AssignX4/bias/read:02
X4/Const:08
X
output/kernel:0output/kernel/Assignoutput/kernel/read:02output/random_uniform:08
I
output/bias:0output/bias/Assignoutput/bias/read:02output/Const:08
\
input_1/kernel:0input_1/kernel/Assigninput_1/kernel/read:02input_1/random_uniform:08
M
input_1/bias:0input_1/bias/Assigninput_1/bias/read:02input_1/Const:08
P
X1_1/kernel:0X1_1/kernel/AssignX1_1/kernel/read:02X1_1/random_uniform:08
A
X1_1/bias:0X1_1/bias/AssignX1_1/bias/read:02X1_1/Const:08
P
X2_1/kernel:0X2_1/kernel/AssignX2_1/kernel/read:02X2_1/random_uniform:08
A
X2_1/bias:0X2_1/bias/AssignX2_1/bias/read:02X2_1/Const:08
P
X3_1/kernel:0X3_1/kernel/AssignX3_1/kernel/read:02X3_1/random_uniform:08
A
X3_1/bias:0X3_1/bias/AssignX3_1/bias/read:02X3_1/Const:08
P
X4_1/kernel:0X4_1/kernel/AssignX4_1/kernel/read:02X4_1/random_uniform:08
A
X4_1/bias:0X4_1/bias/AssignX4_1/bias/read:02X4_1/Const:08
`
output_1/kernel:0output_1/kernel/Assignoutput_1/kernel/read:02output_1/random_uniform:08
Q
output_1/bias:0output_1/bias/Assignoutput_1/bias/read:02output_1/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08*
serving_default
0
input'
input_input_1:0џџџџџџџџџ3
output)
output_1/BiasAdd:0џџџџџџџџџtensorflow/serving/predict