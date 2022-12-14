??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.22v2.9.1-132-g18960c44ad38??
?
Adam/conv_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv_transpose_4/bias/v
?
0Adam/conv_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_4/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv_transpose_4/kernel/v
?
2Adam/conv_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_4/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/batchnorm_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/batchnorm_6/beta/v

+Adam/batchnorm_6/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_6/beta/v*
_output_shapes
: *
dtype0
?
Adam/batchnorm_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/batchnorm_6/gamma/v
?
,Adam/batchnorm_6/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_6/gamma/v*
_output_shapes
: *
dtype0
?
Adam/conv_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/conv_transpose_3/bias/v
?
0Adam/conv_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_3/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*/
shared_name Adam/conv_transpose_3/kernel/v
?
2Adam/conv_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_3/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/batchnorm_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_5/beta/v

+Adam/batchnorm_5/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_5/beta/v*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_5/gamma/v
?
,Adam/batchnorm_5/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_5/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv_transpose_2/bias/v
?
0Adam/conv_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv_transpose_2/kernel/v
?
2Adam/conv_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_2/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_4/beta/v

+Adam/batchnorm_4/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_4/beta/v*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_4/gamma/v
?
,Adam/batchnorm_4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_4/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv_transpose_1/bias/v
?
0Adam/conv_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv_transpose_1/kernel/v
?
2Adam/conv_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_1/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_3/beta/v

+Adam/batchnorm_3/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_3/beta/v*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_3/gamma/v
?
,Adam/batchnorm_3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_3/gamma/v*
_output_shapes
:@*
dtype0
|
Adam/conv_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv_3/bias/v
u
&Adam/conv_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameAdam/conv_3/kernel/v
?
(Adam/conv_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_3/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_2/beta/v

+Adam/batchnorm_2/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_2/beta/v*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_2/gamma/v
?
,Adam/batchnorm_2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_2/gamma/v*
_output_shapes
:@*
dtype0
|
Adam/conv_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv_2/bias/v
u
&Adam/conv_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*%
shared_nameAdam/conv_2/kernel/v
?
(Adam/conv_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_2/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/batchnorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/batchnorm_1/beta/v

+Adam/batchnorm_1/beta/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_1/beta/v*
_output_shapes
: *
dtype0
?
Adam/batchnorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/batchnorm_1/gamma/v
?
,Adam/batchnorm_1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/batchnorm_1/gamma/v*
_output_shapes
: *
dtype0
|
Adam/conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv_1/bias/v
u
&Adam/conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv_1/kernel/v
?
(Adam/conv_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_1/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv_transpose_4/bias/m
?
0Adam/conv_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv_transpose_4/kernel/m
?
2Adam/conv_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_4/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/batchnorm_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/batchnorm_6/beta/m

+Adam/batchnorm_6/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_6/beta/m*
_output_shapes
: *
dtype0
?
Adam/batchnorm_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/batchnorm_6/gamma/m
?
,Adam/batchnorm_6/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_6/gamma/m*
_output_shapes
: *
dtype0
?
Adam/conv_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/conv_transpose_3/bias/m
?
0Adam/conv_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_3/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*/
shared_name Adam/conv_transpose_3/kernel/m
?
2Adam/conv_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_3/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/batchnorm_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_5/beta/m

+Adam/batchnorm_5/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_5/beta/m*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_5/gamma/m
?
,Adam/batchnorm_5/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_5/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv_transpose_2/bias/m
?
0Adam/conv_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv_transpose_2/kernel/m
?
2Adam/conv_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_2/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_4/beta/m

+Adam/batchnorm_4/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_4/beta/m*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_4/gamma/m
?
,Adam/batchnorm_4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_4/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/conv_transpose_1/bias/m
?
0Adam/conv_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/conv_transpose_1/kernel/m
?
2Adam/conv_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_transpose_1/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_3/beta/m

+Adam/batchnorm_3/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_3/beta/m*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_3/gamma/m
?
,Adam/batchnorm_3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_3/gamma/m*
_output_shapes
:@*
dtype0
|
Adam/conv_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv_3/bias/m
u
&Adam/conv_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameAdam/conv_3/kernel/m
?
(Adam/conv_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_3/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/batchnorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/batchnorm_2/beta/m

+Adam/batchnorm_2/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_2/beta/m*
_output_shapes
:@*
dtype0
?
Adam/batchnorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/batchnorm_2/gamma/m
?
,Adam/batchnorm_2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_2/gamma/m*
_output_shapes
:@*
dtype0
|
Adam/conv_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv_2/bias/m
u
&Adam/conv_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*%
shared_nameAdam/conv_2/kernel/m
?
(Adam/conv_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_2/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/batchnorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/batchnorm_1/beta/m

+Adam/batchnorm_1/beta/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_1/beta/m*
_output_shapes
: *
dtype0
?
Adam/batchnorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/batchnorm_1/gamma/m
?
,Adam/batchnorm_1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/batchnorm_1/gamma/m*
_output_shapes
: *
dtype0
|
Adam/conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv_1/bias/m
u
&Adam/conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv_1/kernel/m
?
(Adam/conv_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_1/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
?
conv_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv_transpose_4/bias
{
)conv_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv_transpose_4/bias*
_output_shapes
:*
dtype0
?
conv_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv_transpose_4/kernel
?
+conv_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv_transpose_4/kernel*&
_output_shapes
: *
dtype0
?
batchnorm_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatchnorm_6/moving_variance
?
/batchnorm_6/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_6/moving_variance*
_output_shapes
: *
dtype0
?
batchnorm_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namebatchnorm_6/moving_mean

+batchnorm_6/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_6/moving_mean*
_output_shapes
: *
dtype0
x
batchnorm_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namebatchnorm_6/beta
q
$batchnorm_6/beta/Read/ReadVariableOpReadVariableOpbatchnorm_6/beta*
_output_shapes
: *
dtype0
z
batchnorm_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namebatchnorm_6/gamma
s
%batchnorm_6/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_6/gamma*
_output_shapes
: *
dtype0
?
conv_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameconv_transpose_3/bias
{
)conv_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv_transpose_3/bias*
_output_shapes
: *
dtype0
?
conv_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameconv_transpose_3/kernel
?
+conv_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv_transpose_3/kernel*&
_output_shapes
: @*
dtype0
?
batchnorm_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatchnorm_5/moving_variance
?
/batchnorm_5/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_5/moving_variance*
_output_shapes
:@*
dtype0
?
batchnorm_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namebatchnorm_5/moving_mean

+batchnorm_5/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_5/moving_mean*
_output_shapes
:@*
dtype0
x
batchnorm_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebatchnorm_5/beta
q
$batchnorm_5/beta/Read/ReadVariableOpReadVariableOpbatchnorm_5/beta*
_output_shapes
:@*
dtype0
z
batchnorm_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebatchnorm_5/gamma
s
%batchnorm_5/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_5/gamma*
_output_shapes
:@*
dtype0
?
conv_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameconv_transpose_2/bias
{
)conv_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv_transpose_2/bias*
_output_shapes
:@*
dtype0
?
conv_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameconv_transpose_2/kernel
?
+conv_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv_transpose_2/kernel*&
_output_shapes
:@@*
dtype0
?
batchnorm_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatchnorm_4/moving_variance
?
/batchnorm_4/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_4/moving_variance*
_output_shapes
:@*
dtype0
?
batchnorm_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namebatchnorm_4/moving_mean

+batchnorm_4/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_4/moving_mean*
_output_shapes
:@*
dtype0
x
batchnorm_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebatchnorm_4/beta
q
$batchnorm_4/beta/Read/ReadVariableOpReadVariableOpbatchnorm_4/beta*
_output_shapes
:@*
dtype0
z
batchnorm_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebatchnorm_4/gamma
s
%batchnorm_4/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_4/gamma*
_output_shapes
:@*
dtype0
?
conv_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameconv_transpose_1/bias
{
)conv_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv_transpose_1/bias*
_output_shapes
:@*
dtype0
?
conv_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameconv_transpose_1/kernel
?
+conv_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv_transpose_1/kernel*&
_output_shapes
:@@*
dtype0
?
batchnorm_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatchnorm_3/moving_variance
?
/batchnorm_3/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_3/moving_variance*
_output_shapes
:@*
dtype0
?
batchnorm_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namebatchnorm_3/moving_mean

+batchnorm_3/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_3/moving_mean*
_output_shapes
:@*
dtype0
x
batchnorm_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebatchnorm_3/beta
q
$batchnorm_3/beta/Read/ReadVariableOpReadVariableOpbatchnorm_3/beta*
_output_shapes
:@*
dtype0
z
batchnorm_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebatchnorm_3/gamma
s
%batchnorm_3/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_3/gamma*
_output_shapes
:@*
dtype0
n
conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_3/bias
g
conv_3/bias/Read/ReadVariableOpReadVariableOpconv_3/bias*
_output_shapes
:@*
dtype0
~
conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameconv_3/kernel
w
!conv_3/kernel/Read/ReadVariableOpReadVariableOpconv_3/kernel*&
_output_shapes
:@@*
dtype0
?
batchnorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatchnorm_2/moving_variance
?
/batchnorm_2/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_2/moving_variance*
_output_shapes
:@*
dtype0
?
batchnorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namebatchnorm_2/moving_mean

+batchnorm_2/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_2/moving_mean*
_output_shapes
:@*
dtype0
x
batchnorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebatchnorm_2/beta
q
$batchnorm_2/beta/Read/ReadVariableOpReadVariableOpbatchnorm_2/beta*
_output_shapes
:@*
dtype0
z
batchnorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebatchnorm_2/gamma
s
%batchnorm_2/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_2/gamma*
_output_shapes
:@*
dtype0
n
conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_2/bias
g
conv_2/bias/Read/ReadVariableOpReadVariableOpconv_2/bias*
_output_shapes
:@*
dtype0
~
conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameconv_2/kernel
w
!conv_2/kernel/Read/ReadVariableOpReadVariableOpconv_2/kernel*&
_output_shapes
: @*
dtype0
?
batchnorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatchnorm_1/moving_variance
?
/batchnorm_1/moving_variance/Read/ReadVariableOpReadVariableOpbatchnorm_1/moving_variance*
_output_shapes
: *
dtype0
?
batchnorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namebatchnorm_1/moving_mean

+batchnorm_1/moving_mean/Read/ReadVariableOpReadVariableOpbatchnorm_1/moving_mean*
_output_shapes
: *
dtype0
x
batchnorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namebatchnorm_1/beta
q
$batchnorm_1/beta/Read/ReadVariableOpReadVariableOpbatchnorm_1/beta*
_output_shapes
: *
dtype0
z
batchnorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namebatchnorm_1/gamma
s
%batchnorm_1/gamma/Read/ReadVariableOpReadVariableOpbatchnorm_1/gamma*
_output_shapes
: *
dtype0
n
conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv_1/bias
g
conv_1/bias/Read/ReadVariableOpReadVariableOpconv_1/bias*
_output_shapes
: *
dtype0
~
conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv_1/kernel
w
!conv_1/kernel/Read/ReadVariableOpReadVariableOpconv_1/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance*
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance*
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias
 Z_jit_compiled_convolution_op*
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance*
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*
?
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
$0
%1
.2
/3
04
15
>6
?7
H8
I9
J10
K11
X12
Y13
b14
c15
d16
e17
r18
s19
|20
}21
~22
23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37*
?
$0
%1
.2
/3
>4
?5
H6
I7
X8
Y9
b10
c11
r12
s13
|14
}15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate$m?%m?.m?/m?>m??m?Hm?Im?Xm?Ym?bm?cm?rm?sm?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?$v?%v?.v?/v?>v??v?Hv?Iv?Xv?Yv?bv?cv?rv?sv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?*

?serving_default* 

$0
%1*

$0
%1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEconv_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
.0
/1
02
13*

.0
/1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEbatchnorm_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatchnorm_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatchnorm_1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatchnorm_1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

>0
?1*

>0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEconv_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
H0
I1
J2
K3*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEbatchnorm_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatchnorm_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatchnorm_2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatchnorm_2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

X0
Y1*

X0
Y1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEconv_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
b0
c1
d2
e3*

b0
c1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEbatchnorm_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatchnorm_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatchnorm_3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatchnorm_3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

r0
s1*

r0
s1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ga
VARIABLE_VALUEconv_transpose_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEconv_transpose_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
|0
}1
~2
3*

|0
}1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEbatchnorm_4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatchnorm_4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatchnorm_4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatchnorm_4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ga
VARIABLE_VALUEconv_transpose_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEconv_transpose_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
`Z
VARIABLE_VALUEbatchnorm_5/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatchnorm_5/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatchnorm_5/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatchnorm_5/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
hb
VARIABLE_VALUEconv_transpose_3/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEconv_transpose_3/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
a[
VARIABLE_VALUEbatchnorm_6/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbatchnorm_6/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEbatchnorm_6/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEbatchnorm_6/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
hb
VARIABLE_VALUEconv_transpose_4/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEconv_transpose_4/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
^
00
11
J2
K3
d4
e5
~6
7
?8
?9
?10
?11*
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19*

?0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

J0
K1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

d0
e1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

~0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_4/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_4/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_2/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_2/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_5/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_5/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_3/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_3/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/batchnorm_6/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/batchnorm_6/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_4/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_4/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_4/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_4/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_2/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_2/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/batchnorm_5/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/batchnorm_5/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_3/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_3/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/batchnorm_6/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/batchnorm_6/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_4/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv_transpose_4/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_layerPlaceholder*0
_output_shapes
:?????????4?*
dtype0*%
shape:?????????4?
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerconv_1/kernelconv_1/biasbatchnorm_1/gammabatchnorm_1/betabatchnorm_1/moving_meanbatchnorm_1/moving_varianceconv_2/kernelconv_2/biasbatchnorm_2/gammabatchnorm_2/betabatchnorm_2/moving_meanbatchnorm_2/moving_varianceconv_3/kernelconv_3/biasbatchnorm_3/gammabatchnorm_3/betabatchnorm_3/moving_meanbatchnorm_3/moving_varianceconv_transpose_1/kernelconv_transpose_1/biasbatchnorm_4/gammabatchnorm_4/betabatchnorm_4/moving_meanbatchnorm_4/moving_varianceconv_transpose_2/kernelconv_transpose_2/biasbatchnorm_5/gammabatchnorm_5/betabatchnorm_5/moving_meanbatchnorm_5/moving_varianceconv_transpose_3/kernelconv_transpose_3/biasbatchnorm_6/gammabatchnorm_6/betabatchnorm_6/moving_meanbatchnorm_6/moving_varianceconv_transpose_4/kernelconv_transpose_4/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_11647031
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv_1/kernel/Read/ReadVariableOpconv_1/bias/Read/ReadVariableOp%batchnorm_1/gamma/Read/ReadVariableOp$batchnorm_1/beta/Read/ReadVariableOp+batchnorm_1/moving_mean/Read/ReadVariableOp/batchnorm_1/moving_variance/Read/ReadVariableOp!conv_2/kernel/Read/ReadVariableOpconv_2/bias/Read/ReadVariableOp%batchnorm_2/gamma/Read/ReadVariableOp$batchnorm_2/beta/Read/ReadVariableOp+batchnorm_2/moving_mean/Read/ReadVariableOp/batchnorm_2/moving_variance/Read/ReadVariableOp!conv_3/kernel/Read/ReadVariableOpconv_3/bias/Read/ReadVariableOp%batchnorm_3/gamma/Read/ReadVariableOp$batchnorm_3/beta/Read/ReadVariableOp+batchnorm_3/moving_mean/Read/ReadVariableOp/batchnorm_3/moving_variance/Read/ReadVariableOp+conv_transpose_1/kernel/Read/ReadVariableOp)conv_transpose_1/bias/Read/ReadVariableOp%batchnorm_4/gamma/Read/ReadVariableOp$batchnorm_4/beta/Read/ReadVariableOp+batchnorm_4/moving_mean/Read/ReadVariableOp/batchnorm_4/moving_variance/Read/ReadVariableOp+conv_transpose_2/kernel/Read/ReadVariableOp)conv_transpose_2/bias/Read/ReadVariableOp%batchnorm_5/gamma/Read/ReadVariableOp$batchnorm_5/beta/Read/ReadVariableOp+batchnorm_5/moving_mean/Read/ReadVariableOp/batchnorm_5/moving_variance/Read/ReadVariableOp+conv_transpose_3/kernel/Read/ReadVariableOp)conv_transpose_3/bias/Read/ReadVariableOp%batchnorm_6/gamma/Read/ReadVariableOp$batchnorm_6/beta/Read/ReadVariableOp+batchnorm_6/moving_mean/Read/ReadVariableOp/batchnorm_6/moving_variance/Read/ReadVariableOp+conv_transpose_4/kernel/Read/ReadVariableOp)conv_transpose_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv_1/kernel/m/Read/ReadVariableOp&Adam/conv_1/bias/m/Read/ReadVariableOp,Adam/batchnorm_1/gamma/m/Read/ReadVariableOp+Adam/batchnorm_1/beta/m/Read/ReadVariableOp(Adam/conv_2/kernel/m/Read/ReadVariableOp&Adam/conv_2/bias/m/Read/ReadVariableOp,Adam/batchnorm_2/gamma/m/Read/ReadVariableOp+Adam/batchnorm_2/beta/m/Read/ReadVariableOp(Adam/conv_3/kernel/m/Read/ReadVariableOp&Adam/conv_3/bias/m/Read/ReadVariableOp,Adam/batchnorm_3/gamma/m/Read/ReadVariableOp+Adam/batchnorm_3/beta/m/Read/ReadVariableOp2Adam/conv_transpose_1/kernel/m/Read/ReadVariableOp0Adam/conv_transpose_1/bias/m/Read/ReadVariableOp,Adam/batchnorm_4/gamma/m/Read/ReadVariableOp+Adam/batchnorm_4/beta/m/Read/ReadVariableOp2Adam/conv_transpose_2/kernel/m/Read/ReadVariableOp0Adam/conv_transpose_2/bias/m/Read/ReadVariableOp,Adam/batchnorm_5/gamma/m/Read/ReadVariableOp+Adam/batchnorm_5/beta/m/Read/ReadVariableOp2Adam/conv_transpose_3/kernel/m/Read/ReadVariableOp0Adam/conv_transpose_3/bias/m/Read/ReadVariableOp,Adam/batchnorm_6/gamma/m/Read/ReadVariableOp+Adam/batchnorm_6/beta/m/Read/ReadVariableOp2Adam/conv_transpose_4/kernel/m/Read/ReadVariableOp0Adam/conv_transpose_4/bias/m/Read/ReadVariableOp(Adam/conv_1/kernel/v/Read/ReadVariableOp&Adam/conv_1/bias/v/Read/ReadVariableOp,Adam/batchnorm_1/gamma/v/Read/ReadVariableOp+Adam/batchnorm_1/beta/v/Read/ReadVariableOp(Adam/conv_2/kernel/v/Read/ReadVariableOp&Adam/conv_2/bias/v/Read/ReadVariableOp,Adam/batchnorm_2/gamma/v/Read/ReadVariableOp+Adam/batchnorm_2/beta/v/Read/ReadVariableOp(Adam/conv_3/kernel/v/Read/ReadVariableOp&Adam/conv_3/bias/v/Read/ReadVariableOp,Adam/batchnorm_3/gamma/v/Read/ReadVariableOp+Adam/batchnorm_3/beta/v/Read/ReadVariableOp2Adam/conv_transpose_1/kernel/v/Read/ReadVariableOp0Adam/conv_transpose_1/bias/v/Read/ReadVariableOp,Adam/batchnorm_4/gamma/v/Read/ReadVariableOp+Adam/batchnorm_4/beta/v/Read/ReadVariableOp2Adam/conv_transpose_2/kernel/v/Read/ReadVariableOp0Adam/conv_transpose_2/bias/v/Read/ReadVariableOp,Adam/batchnorm_5/gamma/v/Read/ReadVariableOp+Adam/batchnorm_5/beta/v/Read/ReadVariableOp2Adam/conv_transpose_3/kernel/v/Read/ReadVariableOp0Adam/conv_transpose_3/bias/v/Read/ReadVariableOp,Adam/batchnorm_6/gamma/v/Read/ReadVariableOp+Adam/batchnorm_6/beta/v/Read/ReadVariableOp2Adam/conv_transpose_4/kernel/v/Read/ReadVariableOp0Adam/conv_transpose_4/bias/v/Read/ReadVariableOpConst*n
Ting
e2c	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_save_11648543
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_1/kernelconv_1/biasbatchnorm_1/gammabatchnorm_1/betabatchnorm_1/moving_meanbatchnorm_1/moving_varianceconv_2/kernelconv_2/biasbatchnorm_2/gammabatchnorm_2/betabatchnorm_2/moving_meanbatchnorm_2/moving_varianceconv_3/kernelconv_3/biasbatchnorm_3/gammabatchnorm_3/betabatchnorm_3/moving_meanbatchnorm_3/moving_varianceconv_transpose_1/kernelconv_transpose_1/biasbatchnorm_4/gammabatchnorm_4/betabatchnorm_4/moving_meanbatchnorm_4/moving_varianceconv_transpose_2/kernelconv_transpose_2/biasbatchnorm_5/gammabatchnorm_5/betabatchnorm_5/moving_meanbatchnorm_5/moving_varianceconv_transpose_3/kernelconv_transpose_3/biasbatchnorm_6/gammabatchnorm_6/betabatchnorm_6/moving_meanbatchnorm_6/moving_varianceconv_transpose_4/kernelconv_transpose_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv_1/kernel/mAdam/conv_1/bias/mAdam/batchnorm_1/gamma/mAdam/batchnorm_1/beta/mAdam/conv_2/kernel/mAdam/conv_2/bias/mAdam/batchnorm_2/gamma/mAdam/batchnorm_2/beta/mAdam/conv_3/kernel/mAdam/conv_3/bias/mAdam/batchnorm_3/gamma/mAdam/batchnorm_3/beta/mAdam/conv_transpose_1/kernel/mAdam/conv_transpose_1/bias/mAdam/batchnorm_4/gamma/mAdam/batchnorm_4/beta/mAdam/conv_transpose_2/kernel/mAdam/conv_transpose_2/bias/mAdam/batchnorm_5/gamma/mAdam/batchnorm_5/beta/mAdam/conv_transpose_3/kernel/mAdam/conv_transpose_3/bias/mAdam/batchnorm_6/gamma/mAdam/batchnorm_6/beta/mAdam/conv_transpose_4/kernel/mAdam/conv_transpose_4/bias/mAdam/conv_1/kernel/vAdam/conv_1/bias/vAdam/batchnorm_1/gamma/vAdam/batchnorm_1/beta/vAdam/conv_2/kernel/vAdam/conv_2/bias/vAdam/batchnorm_2/gamma/vAdam/batchnorm_2/beta/vAdam/conv_3/kernel/vAdam/conv_3/bias/vAdam/batchnorm_3/gamma/vAdam/batchnorm_3/beta/vAdam/conv_transpose_1/kernel/vAdam/conv_transpose_1/bias/vAdam/batchnorm_4/gamma/vAdam/batchnorm_4/beta/vAdam/conv_transpose_2/kernel/vAdam/conv_transpose_2/bias/vAdam/batchnorm_5/gamma/vAdam/batchnorm_5/beta/vAdam/conv_transpose_3/kernel/vAdam/conv_transpose_3/bias/vAdam/batchnorm_6/gamma/vAdam/batchnorm_6/beta/vAdam/conv_transpose_4/kernel/vAdam/conv_transpose_4/bias/v*m
Tinf
d2b*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference__traced_restore_11648844??
?

?
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????4? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11647844

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????I@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_4_layer_call_fn_11647912

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645813?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645813

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647834

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647634

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv_transpose_4_layer_call_fn_11648195

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
D__inference_conv_2_layer_call_and_return_conditional_losses_11647681

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645890

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?!
?
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647948

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????4? *
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647816

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????I@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
?
?	
&__inference_signature_wrapper_11647031
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_11645524x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?
f
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????I@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11645998

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11648186

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????4? *
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_2_layer_call_fn_11647748

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
??
?!
C__inference_model_layer_call_and_return_conditional_losses_11647571

inputs?
%conv_1_conv2d_readvariableop_resource: 4
&conv_1_biasadd_readvariableop_resource: 1
#batchnorm_1_readvariableop_resource: 3
%batchnorm_1_readvariableop_1_resource: B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource: D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource: ?
%conv_2_conv2d_readvariableop_resource: @4
&conv_2_biasadd_readvariableop_resource:@1
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@?
%conv_3_conv2d_readvariableop_resource:@@4
&conv_3_biasadd_readvariableop_resource:@1
#batchnorm_3_readvariableop_resource:@3
%batchnorm_3_readvariableop_1_resource:@B
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_1_conv2d_transpose_readvariableop_resource:@@>
0conv_transpose_1_biasadd_readvariableop_resource:@1
#batchnorm_4_readvariableop_resource:@3
%batchnorm_4_readvariableop_1_resource:@B
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_2_conv2d_transpose_readvariableop_resource:@@>
0conv_transpose_2_biasadd_readvariableop_resource:@1
#batchnorm_5_readvariableop_resource:@3
%batchnorm_5_readvariableop_1_resource:@B
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_3_conv2d_transpose_readvariableop_resource: @>
0conv_transpose_3_biasadd_readvariableop_resource: 1
#batchnorm_6_readvariableop_resource: 3
%batchnorm_6_readvariableop_1_resource: B
4batchnorm_6_fusedbatchnormv3_readvariableop_resource: D
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource: S
9conv_transpose_4_conv2d_transpose_readvariableop_resource: >
0conv_transpose_4_biasadd_readvariableop_resource:
identity??batchnorm_1/AssignNewValue?batchnorm_1/AssignNewValue_1?+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?batchnorm_2/AssignNewValue?batchnorm_2/AssignNewValue_1?+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?batchnorm_3/AssignNewValue?batchnorm_3/AssignNewValue_1?+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?batchnorm_4/AssignNewValue?batchnorm_4/AssignNewValue_1?+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?batchnorm_5/AssignNewValue?batchnorm_5/AssignNewValue_1?+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?batchnorm_6/AssignNewValue?batchnorm_6/AssignNewValue_1?+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?'conv_transpose_1/BiasAdd/ReadVariableOp?0conv_transpose_1/conv2d_transpose/ReadVariableOp?'conv_transpose_2/BiasAdd/ReadVariableOp?0conv_transpose_2/conv2d_transpose/ReadVariableOp?'conv_transpose_3/BiasAdd/ReadVariableOp?0conv_transpose_3/conv2d_transpose/ReadVariableOp?'conv_transpose_4/BiasAdd/ReadVariableOp?0conv_transpose_4/conv2d_transpose/ReadVariableOp?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv_1/Conv2DConv2Dinputs$conv_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? z
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
: *
dtype0~
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
: *
dtype0?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv_1/BiasAdd:output:0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_1/AssignNewValueAssignVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource)batchnorm_1/FusedBatchNormV3:batch_mean:0,^batchnorm_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_1/AssignNewValue_1AssignVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource-batchnorm_1/FusedBatchNormV3:batch_variance:0.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_1/LeakyRelu	LeakyRelu batchnorm_1/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv_2/Conv2DConv2D$leaky_relu_1/LeakyRelu:activations:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@z
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv_2/BiasAdd:output:0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_2/AssignNewValueAssignVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource)batchnorm_2/FusedBatchNormV3:batch_mean:0,^batchnorm_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_2/AssignNewValue_1AssignVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource-batchnorm_2/FusedBatchNormV3:batch_variance:0.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_2/LeakyRelu	LeakyRelu batchnorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv_3/Conv2DConv2D$leaky_relu_2/LeakyRelu:activations:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@z
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv_3/BiasAdd:output:0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_3/AssignNewValueAssignVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource)batchnorm_3/FusedBatchNormV3:batch_mean:0,^batchnorm_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_3/AssignNewValue_1AssignVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource-batchnorm_3/FusedBatchNormV3:batch_variance:0.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_3/LeakyRelu	LeakyRelu batchnorm_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>j
conv_transpose_1/ShapeShape$leaky_relu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_1/strided_sliceStridedSliceconv_transpose_1/Shape:output:0-conv_transpose_1/strided_slice/stack:output:0/conv_transpose_1/strided_slice/stack_1:output:0/conv_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :IZ
conv_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv_transpose_1/stackPack'conv_transpose_1/strided_slice:output:0!conv_transpose_1/stack/1:output:0!conv_transpose_1/stack/2:output:0!conv_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_1/strided_slice_1StridedSliceconv_transpose_1/stack:output:0/conv_transpose_1/strided_slice_1/stack:output:01conv_transpose_1/strided_slice_1/stack_1:output:01conv_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
!conv_transpose_1/conv2d_transposeConv2DBackpropInputconv_transpose_1/stack:output:08conv_transpose_1/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
'conv_transpose_1/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_transpose_1/BiasAddBiasAdd*conv_transpose_1/conv2d_transpose:output:0/conv_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@z
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3!conv_transpose_1/BiasAdd:output:0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_4/AssignNewValueAssignVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource)batchnorm_4/FusedBatchNormV3:batch_mean:0,^batchnorm_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_4/AssignNewValue_1AssignVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource-batchnorm_4/FusedBatchNormV3:batch_variance:0.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_4/LeakyRelu	LeakyRelu batchnorm_4/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>j
conv_transpose_2/ShapeShape$leaky_relu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_2/strided_sliceStridedSliceconv_transpose_2/Shape:output:0-conv_transpose_2/strided_slice/stack:output:0/conv_transpose_2/strided_slice/stack_1:output:0/conv_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :[
conv_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv_transpose_2/stackPack'conv_transpose_2/strided_slice:output:0!conv_transpose_2/stack/1:output:0!conv_transpose_2/stack/2:output:0!conv_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_2/strided_slice_1StridedSliceconv_transpose_2/stack:output:0/conv_transpose_2/strided_slice_1/stack:output:01conv_transpose_2/strided_slice_1/stack_1:output:01conv_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
!conv_transpose_2/conv2d_transposeConv2DBackpropInputconv_transpose_2/stack:output:08conv_transpose_2/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
'conv_transpose_2/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_transpose_2/BiasAddBiasAdd*conv_transpose_2/conv2d_transpose:output:0/conv_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@z
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3!conv_transpose_2/BiasAdd:output:0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_5/AssignNewValueAssignVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource)batchnorm_5/FusedBatchNormV3:batch_mean:0,^batchnorm_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_5/AssignNewValue_1AssignVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource-batchnorm_5/FusedBatchNormV3:batch_variance:0.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_5/LeakyRelu	LeakyRelu batchnorm_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>j
conv_transpose_3/ShapeShape$leaky_relu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_3/strided_sliceStridedSliceconv_transpose_3/Shape:output:0-conv_transpose_3/strided_slice/stack:output:0/conv_transpose_3/strided_slice/stack_1:output:0/conv_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4[
conv_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv_transpose_3/stackPack'conv_transpose_3/strided_slice:output:0!conv_transpose_3/stack/1:output:0!conv_transpose_3/stack/2:output:0!conv_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_3/strided_slice_1StridedSliceconv_transpose_3/stack:output:0/conv_transpose_3/strided_slice_1/stack:output:01conv_transpose_3/strided_slice_1/stack_1:output:01conv_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
!conv_transpose_3/conv2d_transposeConv2DBackpropInputconv_transpose_3/stack:output:08conv_transpose_3/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
'conv_transpose_3/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv_transpose_3/BiasAddBiasAdd*conv_transpose_3/conv2d_transpose:output:0/conv_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? z
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes
: *
dtype0~
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3!conv_transpose_3/BiasAdd:output:0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
batchnorm_6/AssignNewValueAssignVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource)batchnorm_6/FusedBatchNormV3:batch_mean:0,^batchnorm_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
batchnorm_6/AssignNewValue_1AssignVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource-batchnorm_6/FusedBatchNormV3:batch_variance:0.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(?
leaky_relu_6/LeakyRelu	LeakyRelu batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>j
conv_transpose_4/ShapeShape$leaky_relu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_4/strided_sliceStridedSliceconv_transpose_4/Shape:output:0-conv_transpose_4/strided_slice/stack:output:0/conv_transpose_4/strided_slice/stack_1:output:0/conv_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4[
conv_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv_transpose_4/stackPack'conv_transpose_4/strided_slice:output:0!conv_transpose_4/stack/1:output:0!conv_transpose_4/stack/2:output:0!conv_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_4/strided_slice_1StridedSliceconv_transpose_4/stack:output:0/conv_transpose_4/strided_slice_1/stack:output:01conv_transpose_4/strided_slice_1/stack_1:output:01conv_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
!conv_transpose_4/conv2d_transposeConv2DBackpropInputconv_transpose_4/stack:output:08conv_transpose_4/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_6/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4?*
paddingSAME*
strides
?
'conv_transpose_4/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_transpose_4/BiasAddBiasAdd*conv_transpose_4/conv2d_transpose:output:0/conv_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4??
conv_transpose_4/SigmoidSigmoid!conv_transpose_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????4?t
IdentityIdentityconv_transpose_4/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp^batchnorm_1/AssignNewValue^batchnorm_1/AssignNewValue_1,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1^batchnorm_2/AssignNewValue^batchnorm_2/AssignNewValue_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1^batchnorm_3/AssignNewValue^batchnorm_3/AssignNewValue_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1^batchnorm_4/AssignNewValue^batchnorm_4/AssignNewValue_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1^batchnorm_5/AssignNewValue^batchnorm_5/AssignNewValue_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1^batchnorm_6/AssignNewValue^batchnorm_6/AssignNewValue_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp(^conv_transpose_1/BiasAdd/ReadVariableOp1^conv_transpose_1/conv2d_transpose/ReadVariableOp(^conv_transpose_2/BiasAdd/ReadVariableOp1^conv_transpose_2/conv2d_transpose/ReadVariableOp(^conv_transpose_3/BiasAdd/ReadVariableOp1^conv_transpose_3/conv2d_transpose/ReadVariableOp(^conv_transpose_4/BiasAdd/ReadVariableOp1^conv_transpose_4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 28
batchnorm_1/AssignNewValuebatchnorm_1/AssignNewValue2<
batchnorm_1/AssignNewValue_1batchnorm_1/AssignNewValue_12Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_128
batchnorm_2/AssignNewValuebatchnorm_2/AssignNewValue2<
batchnorm_2/AssignNewValue_1batchnorm_2/AssignNewValue_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_128
batchnorm_3/AssignNewValuebatchnorm_3/AssignNewValue2<
batchnorm_3/AssignNewValue_1batchnorm_3/AssignNewValue_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_128
batchnorm_4/AssignNewValuebatchnorm_4/AssignNewValue2<
batchnorm_4/AssignNewValue_1batchnorm_4/AssignNewValue_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_128
batchnorm_5/AssignNewValuebatchnorm_5/AssignNewValue2<
batchnorm_5/AssignNewValue_1batchnorm_5/AssignNewValue_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_128
batchnorm_6/AssignNewValuebatchnorm_6/AssignNewValue2<
batchnorm_6/AssignNewValue_1batchnorm_6/AssignNewValue_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_12>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2R
'conv_transpose_1/BiasAdd/ReadVariableOp'conv_transpose_1/BiasAdd/ReadVariableOp2d
0conv_transpose_1/conv2d_transpose/ReadVariableOp0conv_transpose_1/conv2d_transpose/ReadVariableOp2R
'conv_transpose_2/BiasAdd/ReadVariableOp'conv_transpose_2/BiasAdd/ReadVariableOp2d
0conv_transpose_2/conv2d_transpose/ReadVariableOp0conv_transpose_2/conv2d_transpose/ReadVariableOp2R
'conv_transpose_3/BiasAdd/ReadVariableOp'conv_transpose_3/BiasAdd/ReadVariableOp2d
0conv_transpose_3/conv2d_transpose/ReadVariableOp0conv_transpose_3/conv2d_transpose/ReadVariableOp2R
'conv_transpose_4/BiasAdd/ReadVariableOp'conv_transpose_4/BiasAdd/ReadVariableOp2d
0conv_transpose_4/conv2d_transpose/ReadVariableOp0conv_transpose_4/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
?	
(__inference_model_layer_call_fn_11647193

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_11646584x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645577

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv_transpose_2_layer_call_fn_11647967

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11647753

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????@*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_2_layer_call_fn_11647707

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645641?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_3_layer_call_fn_11647785

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645674?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_4_layer_call_fn_11647899

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645782?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????@*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?_
?
C__inference_model_layer_call_and_return_conditional_losses_11646843
input_layer)
conv_1_11646747: 
conv_1_11646749: "
batchnorm_1_11646752: "
batchnorm_1_11646754: "
batchnorm_1_11646756: "
batchnorm_1_11646758: )
conv_2_11646762: @
conv_2_11646764:@"
batchnorm_2_11646767:@"
batchnorm_2_11646769:@"
batchnorm_2_11646771:@"
batchnorm_2_11646773:@)
conv_3_11646777:@@
conv_3_11646779:@"
batchnorm_3_11646782:@"
batchnorm_3_11646784:@"
batchnorm_3_11646786:@"
batchnorm_3_11646788:@3
conv_transpose_1_11646792:@@'
conv_transpose_1_11646794:@"
batchnorm_4_11646797:@"
batchnorm_4_11646799:@"
batchnorm_4_11646801:@"
batchnorm_4_11646803:@3
conv_transpose_2_11646807:@@'
conv_transpose_2_11646809:@"
batchnorm_5_11646812:@"
batchnorm_5_11646814:@"
batchnorm_5_11646816:@"
batchnorm_5_11646818:@3
conv_transpose_3_11646822: @'
conv_transpose_3_11646824: "
batchnorm_6_11646827: "
batchnorm_6_11646829: "
batchnorm_6_11646831: "
batchnorm_6_11646833: 3
conv_transpose_4_11646837: '
conv_transpose_4_11646839:
identity??#batchnorm_1/StatefulPartitionedCall?#batchnorm_2/StatefulPartitionedCall?#batchnorm_3/StatefulPartitionedCall?#batchnorm_4/StatefulPartitionedCall?#batchnorm_5/StatefulPartitionedCall?#batchnorm_6/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?(conv_transpose_1/StatefulPartitionedCall?(conv_transpose_2/StatefulPartitionedCall?(conv_transpose_3/StatefulPartitionedCall?(conv_transpose_4/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_1_11646747conv_1_11646749*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102?
#batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batchnorm_1_11646752batchnorm_1_11646754batchnorm_1_11646756batchnorm_1_11646758*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645546?
leaky_relu_1/PartitionedCallPartitionedCall,batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122?
conv_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_1/PartitionedCall:output:0conv_2_11646762conv_2_11646764*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134?
#batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0batchnorm_2_11646767batchnorm_2_11646769batchnorm_2_11646771batchnorm_2_11646773*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645610?
leaky_relu_2/PartitionedCallPartitionedCall,batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154?
conv_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_2/PartitionedCall:output:0conv_3_11646777conv_3_11646779*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166?
#batchnorm_3/StatefulPartitionedCallStatefulPartitionedCall'conv_3/StatefulPartitionedCall:output:0batchnorm_3_11646782batchnorm_3_11646784batchnorm_3_11646786batchnorm_3_11646788*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645674?
leaky_relu_3/PartitionedCallPartitionedCall,batchnorm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186?
(conv_transpose_1/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_3/PartitionedCall:output:0conv_transpose_1_11646792conv_transpose_1_11646794*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753?
#batchnorm_4/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_1/StatefulPartitionedCall:output:0batchnorm_4_11646797batchnorm_4_11646799batchnorm_4_11646801batchnorm_4_11646803*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645782?
leaky_relu_4/PartitionedCallPartitionedCall,batchnorm_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207?
(conv_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_4/PartitionedCall:output:0conv_transpose_2_11646807conv_transpose_2_11646809*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861?
#batchnorm_5/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_2/StatefulPartitionedCall:output:0batchnorm_5_11646812batchnorm_5_11646814batchnorm_5_11646816batchnorm_5_11646818*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645890?
leaky_relu_5/PartitionedCallPartitionedCall,batchnorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228?
(conv_transpose_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_5/PartitionedCall:output:0conv_transpose_3_11646822conv_transpose_3_11646824*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969?
#batchnorm_6/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_3/StatefulPartitionedCall:output:0batchnorm_6_11646827batchnorm_6_11646829batchnorm_6_11646831batchnorm_6_11646833*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11645998?
leaky_relu_6/PartitionedCallPartitionedCall,batchnorm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249?
(conv_transpose_4/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_6/PartitionedCall:output:0conv_transpose_4_11646837conv_transpose_4_11646839*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078?
IdentityIdentity1conv_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp$^batchnorm_1/StatefulPartitionedCall$^batchnorm_2/StatefulPartitionedCall$^batchnorm_3/StatefulPartitionedCall$^batchnorm_4/StatefulPartitionedCall$^batchnorm_5/StatefulPartitionedCall$^batchnorm_6/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall)^conv_transpose_1/StatefulPartitionedCall)^conv_transpose_2/StatefulPartitionedCall)^conv_transpose_3/StatefulPartitionedCall)^conv_transpose_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batchnorm_1/StatefulPartitionedCall#batchnorm_1/StatefulPartitionedCall2J
#batchnorm_2/StatefulPartitionedCall#batchnorm_2/StatefulPartitionedCall2J
#batchnorm_3/StatefulPartitionedCall#batchnorm_3/StatefulPartitionedCall2J
#batchnorm_4/StatefulPartitionedCall#batchnorm_4/StatefulPartitionedCall2J
#batchnorm_5/StatefulPartitionedCall#batchnorm_5/StatefulPartitionedCall2J
#batchnorm_6/StatefulPartitionedCall#batchnorm_6/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2T
(conv_transpose_1/StatefulPartitionedCall(conv_transpose_1/StatefulPartitionedCall2T
(conv_transpose_2/StatefulPartitionedCall(conv_transpose_2/StatefulPartitionedCall2T
(conv_transpose_3/StatefulPartitionedCall(conv_transpose_3/StatefulPartitionedCall2T
(conv_transpose_4/StatefulPartitionedCall(conv_transpose_4/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?
?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645641

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
3__inference_conv_transpose_3_layer_call_fn_11648081

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_1_layer_call_fn_11647603

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645546?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645610

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645705

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647652

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_5_layer_call_fn_11648013

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645890?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648158

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?_
?
C__inference_model_layer_call_and_return_conditional_losses_11646257

inputs)
conv_1_11646103: 
conv_1_11646105: "
batchnorm_1_11646108: "
batchnorm_1_11646110: "
batchnorm_1_11646112: "
batchnorm_1_11646114: )
conv_2_11646135: @
conv_2_11646137:@"
batchnorm_2_11646140:@"
batchnorm_2_11646142:@"
batchnorm_2_11646144:@"
batchnorm_2_11646146:@)
conv_3_11646167:@@
conv_3_11646169:@"
batchnorm_3_11646172:@"
batchnorm_3_11646174:@"
batchnorm_3_11646176:@"
batchnorm_3_11646178:@3
conv_transpose_1_11646188:@@'
conv_transpose_1_11646190:@"
batchnorm_4_11646193:@"
batchnorm_4_11646195:@"
batchnorm_4_11646197:@"
batchnorm_4_11646199:@3
conv_transpose_2_11646209:@@'
conv_transpose_2_11646211:@"
batchnorm_5_11646214:@"
batchnorm_5_11646216:@"
batchnorm_5_11646218:@"
batchnorm_5_11646220:@3
conv_transpose_3_11646230: @'
conv_transpose_3_11646232: "
batchnorm_6_11646235: "
batchnorm_6_11646237: "
batchnorm_6_11646239: "
batchnorm_6_11646241: 3
conv_transpose_4_11646251: '
conv_transpose_4_11646253:
identity??#batchnorm_1/StatefulPartitionedCall?#batchnorm_2/StatefulPartitionedCall?#batchnorm_3/StatefulPartitionedCall?#batchnorm_4/StatefulPartitionedCall?#batchnorm_5/StatefulPartitionedCall?#batchnorm_6/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?(conv_transpose_1/StatefulPartitionedCall?(conv_transpose_2/StatefulPartitionedCall?(conv_transpose_3/StatefulPartitionedCall?(conv_transpose_4/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_11646103conv_1_11646105*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102?
#batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batchnorm_1_11646108batchnorm_1_11646110batchnorm_1_11646112batchnorm_1_11646114*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645546?
leaky_relu_1/PartitionedCallPartitionedCall,batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122?
conv_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_1/PartitionedCall:output:0conv_2_11646135conv_2_11646137*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134?
#batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0batchnorm_2_11646140batchnorm_2_11646142batchnorm_2_11646144batchnorm_2_11646146*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645610?
leaky_relu_2/PartitionedCallPartitionedCall,batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154?
conv_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_2/PartitionedCall:output:0conv_3_11646167conv_3_11646169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166?
#batchnorm_3/StatefulPartitionedCallStatefulPartitionedCall'conv_3/StatefulPartitionedCall:output:0batchnorm_3_11646172batchnorm_3_11646174batchnorm_3_11646176batchnorm_3_11646178*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645674?
leaky_relu_3/PartitionedCallPartitionedCall,batchnorm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186?
(conv_transpose_1/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_3/PartitionedCall:output:0conv_transpose_1_11646188conv_transpose_1_11646190*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753?
#batchnorm_4/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_1/StatefulPartitionedCall:output:0batchnorm_4_11646193batchnorm_4_11646195batchnorm_4_11646197batchnorm_4_11646199*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645782?
leaky_relu_4/PartitionedCallPartitionedCall,batchnorm_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207?
(conv_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_4/PartitionedCall:output:0conv_transpose_2_11646209conv_transpose_2_11646211*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861?
#batchnorm_5/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_2/StatefulPartitionedCall:output:0batchnorm_5_11646214batchnorm_5_11646216batchnorm_5_11646218batchnorm_5_11646220*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645890?
leaky_relu_5/PartitionedCallPartitionedCall,batchnorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228?
(conv_transpose_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_5/PartitionedCall:output:0conv_transpose_3_11646230conv_transpose_3_11646232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969?
#batchnorm_6/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_3/StatefulPartitionedCall:output:0batchnorm_6_11646235batchnorm_6_11646237batchnorm_6_11646239batchnorm_6_11646241*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11645998?
leaky_relu_6/PartitionedCallPartitionedCall,batchnorm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249?
(conv_transpose_4/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_6/PartitionedCall:output:0conv_transpose_4_11646251conv_transpose_4_11646253*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078?
IdentityIdentity1conv_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp$^batchnorm_1/StatefulPartitionedCall$^batchnorm_2/StatefulPartitionedCall$^batchnorm_3/StatefulPartitionedCall$^batchnorm_4/StatefulPartitionedCall$^batchnorm_5/StatefulPartitionedCall$^batchnorm_6/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall)^conv_transpose_1/StatefulPartitionedCall)^conv_transpose_2/StatefulPartitionedCall)^conv_transpose_3/StatefulPartitionedCall)^conv_transpose_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batchnorm_1/StatefulPartitionedCall#batchnorm_1/StatefulPartitionedCall2J
#batchnorm_2/StatefulPartitionedCall#batchnorm_2/StatefulPartitionedCall2J
#batchnorm_3/StatefulPartitionedCall#batchnorm_3/StatefulPartitionedCall2J
#batchnorm_4/StatefulPartitionedCall#batchnorm_4/StatefulPartitionedCall2J
#batchnorm_5/StatefulPartitionedCall#batchnorm_5/StatefulPartitionedCall2J
#batchnorm_6/StatefulPartitionedCall#batchnorm_6/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2T
(conv_transpose_1/StatefulPartitionedCall(conv_transpose_1/StatefulPartitionedCall2T
(conv_transpose_2/StatefulPartitionedCall(conv_transpose_2/StatefulPartitionedCall2T
(conv_transpose_3/StatefulPartitionedCall(conv_transpose_3/StatefulPartitionedCall2T
(conv_transpose_4/StatefulPartitionedCall(conv_transpose_4/StatefulPartitionedCall:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645921

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_conv_1_layer_call_fn_11647580

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_1_layer_call_fn_11647657

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_5_layer_call_fn_11648026

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645921?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
3__inference_conv_transpose_1_layer_call_fn_11647853

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?	
(__inference_model_layer_call_fn_11646336
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_11646257x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?

?
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????I@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645674

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645546

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????@*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
??
?*
!__inference__traced_save_11648543
file_prefix,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop0
,savev2_batchnorm_1_gamma_read_readvariableop/
+savev2_batchnorm_1_beta_read_readvariableop6
2savev2_batchnorm_1_moving_mean_read_readvariableop:
6savev2_batchnorm_1_moving_variance_read_readvariableop,
(savev2_conv_2_kernel_read_readvariableop*
&savev2_conv_2_bias_read_readvariableop0
,savev2_batchnorm_2_gamma_read_readvariableop/
+savev2_batchnorm_2_beta_read_readvariableop6
2savev2_batchnorm_2_moving_mean_read_readvariableop:
6savev2_batchnorm_2_moving_variance_read_readvariableop,
(savev2_conv_3_kernel_read_readvariableop*
&savev2_conv_3_bias_read_readvariableop0
,savev2_batchnorm_3_gamma_read_readvariableop/
+savev2_batchnorm_3_beta_read_readvariableop6
2savev2_batchnorm_3_moving_mean_read_readvariableop:
6savev2_batchnorm_3_moving_variance_read_readvariableop6
2savev2_conv_transpose_1_kernel_read_readvariableop4
0savev2_conv_transpose_1_bias_read_readvariableop0
,savev2_batchnorm_4_gamma_read_readvariableop/
+savev2_batchnorm_4_beta_read_readvariableop6
2savev2_batchnorm_4_moving_mean_read_readvariableop:
6savev2_batchnorm_4_moving_variance_read_readvariableop6
2savev2_conv_transpose_2_kernel_read_readvariableop4
0savev2_conv_transpose_2_bias_read_readvariableop0
,savev2_batchnorm_5_gamma_read_readvariableop/
+savev2_batchnorm_5_beta_read_readvariableop6
2savev2_batchnorm_5_moving_mean_read_readvariableop:
6savev2_batchnorm_5_moving_variance_read_readvariableop6
2savev2_conv_transpose_3_kernel_read_readvariableop4
0savev2_conv_transpose_3_bias_read_readvariableop0
,savev2_batchnorm_6_gamma_read_readvariableop/
+savev2_batchnorm_6_beta_read_readvariableop6
2savev2_batchnorm_6_moving_mean_read_readvariableop:
6savev2_batchnorm_6_moving_variance_read_readvariableop6
2savev2_conv_transpose_4_kernel_read_readvariableop4
0savev2_conv_transpose_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv_1_kernel_m_read_readvariableop1
-savev2_adam_conv_1_bias_m_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_1_beta_m_read_readvariableop3
/savev2_adam_conv_2_kernel_m_read_readvariableop1
-savev2_adam_conv_2_bias_m_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_2_beta_m_read_readvariableop3
/savev2_adam_conv_3_kernel_m_read_readvariableop1
-savev2_adam_conv_3_bias_m_read_readvariableop7
3savev2_adam_batchnorm_3_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_3_beta_m_read_readvariableop=
9savev2_adam_conv_transpose_1_kernel_m_read_readvariableop;
7savev2_adam_conv_transpose_1_bias_m_read_readvariableop7
3savev2_adam_batchnorm_4_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_4_beta_m_read_readvariableop=
9savev2_adam_conv_transpose_2_kernel_m_read_readvariableop;
7savev2_adam_conv_transpose_2_bias_m_read_readvariableop7
3savev2_adam_batchnorm_5_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_5_beta_m_read_readvariableop=
9savev2_adam_conv_transpose_3_kernel_m_read_readvariableop;
7savev2_adam_conv_transpose_3_bias_m_read_readvariableop7
3savev2_adam_batchnorm_6_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_6_beta_m_read_readvariableop=
9savev2_adam_conv_transpose_4_kernel_m_read_readvariableop;
7savev2_adam_conv_transpose_4_bias_m_read_readvariableop3
/savev2_adam_conv_1_kernel_v_read_readvariableop1
-savev2_adam_conv_1_bias_v_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_1_beta_v_read_readvariableop3
/savev2_adam_conv_2_kernel_v_read_readvariableop1
-savev2_adam_conv_2_bias_v_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_2_beta_v_read_readvariableop3
/savev2_adam_conv_3_kernel_v_read_readvariableop1
-savev2_adam_conv_3_bias_v_read_readvariableop7
3savev2_adam_batchnorm_3_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_3_beta_v_read_readvariableop=
9savev2_adam_conv_transpose_1_kernel_v_read_readvariableop;
7savev2_adam_conv_transpose_1_bias_v_read_readvariableop7
3savev2_adam_batchnorm_4_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_4_beta_v_read_readvariableop=
9savev2_adam_conv_transpose_2_kernel_v_read_readvariableop;
7savev2_adam_conv_transpose_2_bias_v_read_readvariableop7
3savev2_adam_batchnorm_5_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_5_beta_v_read_readvariableop=
9savev2_adam_conv_transpose_3_kernel_v_read_readvariableop;
7savev2_adam_conv_transpose_3_bias_v_read_readvariableop7
3savev2_adam_batchnorm_6_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_6_beta_v_read_readvariableop=
9savev2_adam_conv_transpose_4_kernel_v_read_readvariableop;
7savev2_adam_conv_transpose_4_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?6
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*?5
value?5B?5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*?
value?B?bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop,savev2_batchnorm_1_gamma_read_readvariableop+savev2_batchnorm_1_beta_read_readvariableop2savev2_batchnorm_1_moving_mean_read_readvariableop6savev2_batchnorm_1_moving_variance_read_readvariableop(savev2_conv_2_kernel_read_readvariableop&savev2_conv_2_bias_read_readvariableop,savev2_batchnorm_2_gamma_read_readvariableop+savev2_batchnorm_2_beta_read_readvariableop2savev2_batchnorm_2_moving_mean_read_readvariableop6savev2_batchnorm_2_moving_variance_read_readvariableop(savev2_conv_3_kernel_read_readvariableop&savev2_conv_3_bias_read_readvariableop,savev2_batchnorm_3_gamma_read_readvariableop+savev2_batchnorm_3_beta_read_readvariableop2savev2_batchnorm_3_moving_mean_read_readvariableop6savev2_batchnorm_3_moving_variance_read_readvariableop2savev2_conv_transpose_1_kernel_read_readvariableop0savev2_conv_transpose_1_bias_read_readvariableop,savev2_batchnorm_4_gamma_read_readvariableop+savev2_batchnorm_4_beta_read_readvariableop2savev2_batchnorm_4_moving_mean_read_readvariableop6savev2_batchnorm_4_moving_variance_read_readvariableop2savev2_conv_transpose_2_kernel_read_readvariableop0savev2_conv_transpose_2_bias_read_readvariableop,savev2_batchnorm_5_gamma_read_readvariableop+savev2_batchnorm_5_beta_read_readvariableop2savev2_batchnorm_5_moving_mean_read_readvariableop6savev2_batchnorm_5_moving_variance_read_readvariableop2savev2_conv_transpose_3_kernel_read_readvariableop0savev2_conv_transpose_3_bias_read_readvariableop,savev2_batchnorm_6_gamma_read_readvariableop+savev2_batchnorm_6_beta_read_readvariableop2savev2_batchnorm_6_moving_mean_read_readvariableop6savev2_batchnorm_6_moving_variance_read_readvariableop2savev2_conv_transpose_4_kernel_read_readvariableop0savev2_conv_transpose_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv_1_kernel_m_read_readvariableop-savev2_adam_conv_1_bias_m_read_readvariableop3savev2_adam_batchnorm_1_gamma_m_read_readvariableop2savev2_adam_batchnorm_1_beta_m_read_readvariableop/savev2_adam_conv_2_kernel_m_read_readvariableop-savev2_adam_conv_2_bias_m_read_readvariableop3savev2_adam_batchnorm_2_gamma_m_read_readvariableop2savev2_adam_batchnorm_2_beta_m_read_readvariableop/savev2_adam_conv_3_kernel_m_read_readvariableop-savev2_adam_conv_3_bias_m_read_readvariableop3savev2_adam_batchnorm_3_gamma_m_read_readvariableop2savev2_adam_batchnorm_3_beta_m_read_readvariableop9savev2_adam_conv_transpose_1_kernel_m_read_readvariableop7savev2_adam_conv_transpose_1_bias_m_read_readvariableop3savev2_adam_batchnorm_4_gamma_m_read_readvariableop2savev2_adam_batchnorm_4_beta_m_read_readvariableop9savev2_adam_conv_transpose_2_kernel_m_read_readvariableop7savev2_adam_conv_transpose_2_bias_m_read_readvariableop3savev2_adam_batchnorm_5_gamma_m_read_readvariableop2savev2_adam_batchnorm_5_beta_m_read_readvariableop9savev2_adam_conv_transpose_3_kernel_m_read_readvariableop7savev2_adam_conv_transpose_3_bias_m_read_readvariableop3savev2_adam_batchnorm_6_gamma_m_read_readvariableop2savev2_adam_batchnorm_6_beta_m_read_readvariableop9savev2_adam_conv_transpose_4_kernel_m_read_readvariableop7savev2_adam_conv_transpose_4_bias_m_read_readvariableop/savev2_adam_conv_1_kernel_v_read_readvariableop-savev2_adam_conv_1_bias_v_read_readvariableop3savev2_adam_batchnorm_1_gamma_v_read_readvariableop2savev2_adam_batchnorm_1_beta_v_read_readvariableop/savev2_adam_conv_2_kernel_v_read_readvariableop-savev2_adam_conv_2_bias_v_read_readvariableop3savev2_adam_batchnorm_2_gamma_v_read_readvariableop2savev2_adam_batchnorm_2_beta_v_read_readvariableop/savev2_adam_conv_3_kernel_v_read_readvariableop-savev2_adam_conv_3_bias_v_read_readvariableop3savev2_adam_batchnorm_3_gamma_v_read_readvariableop2savev2_adam_batchnorm_3_beta_v_read_readvariableop9savev2_adam_conv_transpose_1_kernel_v_read_readvariableop7savev2_adam_conv_transpose_1_bias_v_read_readvariableop3savev2_adam_batchnorm_4_gamma_v_read_readvariableop2savev2_adam_batchnorm_4_beta_v_read_readvariableop9savev2_adam_conv_transpose_2_kernel_v_read_readvariableop7savev2_adam_conv_transpose_2_bias_v_read_readvariableop3savev2_adam_batchnorm_5_gamma_v_read_readvariableop2savev2_adam_batchnorm_5_beta_v_read_readvariableop9savev2_adam_conv_transpose_3_kernel_v_read_readvariableop7savev2_adam_conv_transpose_3_bias_v_read_readvariableop3savev2_adam_batchnorm_6_gamma_v_read_readvariableop2savev2_adam_batchnorm_6_beta_v_read_readvariableop9savev2_adam_conv_transpose_4_kernel_v_read_readvariableop7savev2_adam_conv_transpose_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *p
dtypesf
d2b	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@: @: : : : : : :: : : : : : : : : : : : @:@:@:@:@@:@:@:@:@@:@:@:@:@@:@:@:@: @: : : : :: : : : : @:@:@:@:@@:@:@:@:@@:@:@:@:@@:@:@:@: @: : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: @:  

_output_shapes
: : !

_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: : &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :,.(
&
_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: @: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@: 8

_output_shapes
:@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@@: ;

_output_shapes
:@: <

_output_shapes
:@: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@: @

_output_shapes
:@: A

_output_shapes
:@:,B(
&
_output_shapes
: @: C

_output_shapes
: : D

_output_shapes
: : E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::,H(
&
_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
: @: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:,P(
&
_output_shapes
:@@: Q

_output_shapes
:@: R

_output_shapes
:@: S

_output_shapes
:@:,T(
&
_output_shapes
:@@: U

_output_shapes
:@: V

_output_shapes
:@: W

_output_shapes
:@:,X(
&
_output_shapes
:@@: Y

_output_shapes
:@: Z

_output_shapes
:@: [

_output_shapes
:@:,\(
&
_output_shapes
: @: ]

_output_shapes
: : ^

_output_shapes
: : _

_output_shapes
: :,`(
&
_output_shapes
: : a

_output_shapes
::b

_output_shapes
: 
?	
?
.__inference_batchnorm_1_layer_call_fn_11647616

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645577?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
C__inference_model_layer_call_and_return_conditional_losses_11647382

inputs?
%conv_1_conv2d_readvariableop_resource: 4
&conv_1_biasadd_readvariableop_resource: 1
#batchnorm_1_readvariableop_resource: 3
%batchnorm_1_readvariableop_1_resource: B
4batchnorm_1_fusedbatchnormv3_readvariableop_resource: D
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource: ?
%conv_2_conv2d_readvariableop_resource: @4
&conv_2_biasadd_readvariableop_resource:@1
#batchnorm_2_readvariableop_resource:@3
%batchnorm_2_readvariableop_1_resource:@B
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@?
%conv_3_conv2d_readvariableop_resource:@@4
&conv_3_biasadd_readvariableop_resource:@1
#batchnorm_3_readvariableop_resource:@3
%batchnorm_3_readvariableop_1_resource:@B
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_1_conv2d_transpose_readvariableop_resource:@@>
0conv_transpose_1_biasadd_readvariableop_resource:@1
#batchnorm_4_readvariableop_resource:@3
%batchnorm_4_readvariableop_1_resource:@B
4batchnorm_4_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_2_conv2d_transpose_readvariableop_resource:@@>
0conv_transpose_2_biasadd_readvariableop_resource:@1
#batchnorm_5_readvariableop_resource:@3
%batchnorm_5_readvariableop_1_resource:@B
4batchnorm_5_fusedbatchnormv3_readvariableop_resource:@D
6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:@S
9conv_transpose_3_conv2d_transpose_readvariableop_resource: @>
0conv_transpose_3_biasadd_readvariableop_resource: 1
#batchnorm_6_readvariableop_resource: 3
%batchnorm_6_readvariableop_1_resource: B
4batchnorm_6_fusedbatchnormv3_readvariableop_resource: D
6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource: S
9conv_transpose_4_conv2d_transpose_readvariableop_resource: >
0conv_transpose_4_biasadd_readvariableop_resource:
identity??+batchnorm_1/FusedBatchNormV3/ReadVariableOp?-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1?batchnorm_1/ReadVariableOp?batchnorm_1/ReadVariableOp_1?+batchnorm_2/FusedBatchNormV3/ReadVariableOp?-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1?batchnorm_2/ReadVariableOp?batchnorm_2/ReadVariableOp_1?+batchnorm_3/FusedBatchNormV3/ReadVariableOp?-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1?batchnorm_3/ReadVariableOp?batchnorm_3/ReadVariableOp_1?+batchnorm_4/FusedBatchNormV3/ReadVariableOp?-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1?batchnorm_4/ReadVariableOp?batchnorm_4/ReadVariableOp_1?+batchnorm_5/FusedBatchNormV3/ReadVariableOp?-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1?batchnorm_5/ReadVariableOp?batchnorm_5/ReadVariableOp_1?+batchnorm_6/FusedBatchNormV3/ReadVariableOp?-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1?batchnorm_6/ReadVariableOp?batchnorm_6/ReadVariableOp_1?conv_1/BiasAdd/ReadVariableOp?conv_1/Conv2D/ReadVariableOp?conv_2/BiasAdd/ReadVariableOp?conv_2/Conv2D/ReadVariableOp?conv_3/BiasAdd/ReadVariableOp?conv_3/Conv2D/ReadVariableOp?'conv_transpose_1/BiasAdd/ReadVariableOp?0conv_transpose_1/conv2d_transpose/ReadVariableOp?'conv_transpose_2/BiasAdd/ReadVariableOp?0conv_transpose_2/conv2d_transpose/ReadVariableOp?'conv_transpose_3/BiasAdd/ReadVariableOp?0conv_transpose_3/conv2d_transpose/ReadVariableOp?'conv_transpose_4/BiasAdd/ReadVariableOp?0conv_transpose_4/conv2d_transpose/ReadVariableOp?
conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv_1/Conv2DConv2Dinputs$conv_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv_1/BiasAddBiasAddconv_1/Conv2D:output:0%conv_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? z
batchnorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
: *
dtype0~
batchnorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
: *
dtype0?
+batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
batchnorm_1/FusedBatchNormV3FusedBatchNormV3conv_1/BiasAdd:output:0"batchnorm_1/ReadVariableOp:value:0$batchnorm_1/ReadVariableOp_1:value:03batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
is_training( ?
leaky_relu_1/LeakyRelu	LeakyRelu batchnorm_1/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>?
conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv_2/Conv2DConv2D$leaky_relu_1/LeakyRelu:activations:0$conv_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_2/BiasAddBiasAddconv_2/Conv2D:output:0%conv_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@z
batchnorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_2/FusedBatchNormV3FusedBatchNormV3conv_2/BiasAdd:output:0"batchnorm_2/ReadVariableOp:value:0$batchnorm_2/ReadVariableOp_1:value:03batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
leaky_relu_2/LeakyRelu	LeakyRelu batchnorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>?
conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv_3/Conv2DConv2D$leaky_relu_2/LeakyRelu:activations:0$conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_3/BiasAddBiasAddconv_3/Conv2D:output:0%conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@z
batchnorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_3/FusedBatchNormV3FusedBatchNormV3conv_3/BiasAdd:output:0"batchnorm_3/ReadVariableOp:value:0$batchnorm_3/ReadVariableOp_1:value:03batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
is_training( ?
leaky_relu_3/LeakyRelu	LeakyRelu batchnorm_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>j
conv_transpose_1/ShapeShape$leaky_relu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_1/strided_sliceStridedSliceconv_transpose_1/Shape:output:0-conv_transpose_1/strided_slice/stack:output:0/conv_transpose_1/strided_slice/stack_1:output:0/conv_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :IZ
conv_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv_transpose_1/stackPack'conv_transpose_1/strided_slice:output:0!conv_transpose_1/stack/1:output:0!conv_transpose_1/stack/2:output:0!conv_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_1/strided_slice_1StridedSliceconv_transpose_1/stack:output:0/conv_transpose_1/strided_slice_1/stack:output:01conv_transpose_1/strided_slice_1/stack_1:output:01conv_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
!conv_transpose_1/conv2d_transposeConv2DBackpropInputconv_transpose_1/stack:output:08conv_transpose_1/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
'conv_transpose_1/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_transpose_1/BiasAddBiasAdd*conv_transpose_1/conv2d_transpose:output:0/conv_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@z
batchnorm_4/ReadVariableOpReadVariableOp#batchnorm_4_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_4/ReadVariableOp_1ReadVariableOp%batchnorm_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_4/FusedBatchNormV3FusedBatchNormV3!conv_transpose_1/BiasAdd:output:0"batchnorm_4/ReadVariableOp:value:0$batchnorm_4/ReadVariableOp_1:value:03batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
is_training( ?
leaky_relu_4/LeakyRelu	LeakyRelu batchnorm_4/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>j
conv_transpose_2/ShapeShape$leaky_relu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_2/strided_sliceStridedSliceconv_transpose_2/Shape:output:0-conv_transpose_2/strided_slice/stack:output:0/conv_transpose_2/strided_slice/stack_1:output:0/conv_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :[
conv_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv_transpose_2/stackPack'conv_transpose_2/strided_slice:output:0!conv_transpose_2/stack/1:output:0!conv_transpose_2/stack/2:output:0!conv_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_2/strided_slice_1StridedSliceconv_transpose_2/stack:output:0/conv_transpose_2/strided_slice_1/stack:output:01conv_transpose_2/strided_slice_1/stack_1:output:01conv_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
!conv_transpose_2/conv2d_transposeConv2DBackpropInputconv_transpose_2/stack:output:08conv_transpose_2/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
'conv_transpose_2/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv_transpose_2/BiasAddBiasAdd*conv_transpose_2/conv2d_transpose:output:0/conv_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@z
batchnorm_5/ReadVariableOpReadVariableOp#batchnorm_5_readvariableop_resource*
_output_shapes
:@*
dtype0~
batchnorm_5/ReadVariableOp_1ReadVariableOp%batchnorm_5_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
+batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
batchnorm_5/FusedBatchNormV3FusedBatchNormV3!conv_transpose_2/BiasAdd:output:0"batchnorm_5/ReadVariableOp:value:0$batchnorm_5/ReadVariableOp_1:value:03batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
leaky_relu_5/LeakyRelu	LeakyRelu batchnorm_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>j
conv_transpose_3/ShapeShape$leaky_relu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_3/strided_sliceStridedSliceconv_transpose_3/Shape:output:0-conv_transpose_3/strided_slice/stack:output:0/conv_transpose_3/strided_slice/stack_1:output:0/conv_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4[
conv_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv_transpose_3/stackPack'conv_transpose_3/strided_slice:output:0!conv_transpose_3/stack/1:output:0!conv_transpose_3/stack/2:output:0!conv_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_3/strided_slice_1StridedSliceconv_transpose_3/stack:output:0/conv_transpose_3/strided_slice_1/stack:output:01conv_transpose_3/strided_slice_1/stack_1:output:01conv_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
!conv_transpose_3/conv2d_transposeConv2DBackpropInputconv_transpose_3/stack:output:08conv_transpose_3/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
'conv_transpose_3/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv_transpose_3/BiasAddBiasAdd*conv_transpose_3/conv2d_transpose:output:0/conv_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? z
batchnorm_6/ReadVariableOpReadVariableOp#batchnorm_6_readvariableop_resource*
_output_shapes
: *
dtype0~
batchnorm_6/ReadVariableOp_1ReadVariableOp%batchnorm_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
+batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
batchnorm_6/FusedBatchNormV3FusedBatchNormV3!conv_transpose_3/BiasAdd:output:0"batchnorm_6/ReadVariableOp:value:0$batchnorm_6/ReadVariableOp_1:value:03batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:05batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
is_training( ?
leaky_relu_6/LeakyRelu	LeakyRelu batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>j
conv_transpose_4/ShapeShape$leaky_relu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv_transpose_4/strided_sliceStridedSliceconv_transpose_4/Shape:output:0-conv_transpose_4/strided_slice/stack:output:0/conv_transpose_4/strided_slice/stack_1:output:0/conv_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4[
conv_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?Z
conv_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv_transpose_4/stackPack'conv_transpose_4/strided_slice:output:0!conv_transpose_4/stack/1:output:0!conv_transpose_4/stack/2:output:0!conv_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv_transpose_4/strided_slice_1StridedSliceconv_transpose_4/stack:output:0/conv_transpose_4/strided_slice_1/stack:output:01conv_transpose_4/strided_slice_1/stack_1:output:01conv_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp9conv_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
!conv_transpose_4/conv2d_transposeConv2DBackpropInputconv_transpose_4/stack:output:08conv_transpose_4/conv2d_transpose/ReadVariableOp:value:0$leaky_relu_6/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4?*
paddingSAME*
strides
?
'conv_transpose_4/BiasAdd/ReadVariableOpReadVariableOp0conv_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_transpose_4/BiasAddBiasAdd*conv_transpose_4/conv2d_transpose:output:0/conv_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4??
conv_transpose_4/SigmoidSigmoid!conv_transpose_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????4?t
IdentityIdentityconv_transpose_4/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp,^batchnorm_1/FusedBatchNormV3/ReadVariableOp.^batchnorm_1/FusedBatchNormV3/ReadVariableOp_1^batchnorm_1/ReadVariableOp^batchnorm_1/ReadVariableOp_1,^batchnorm_2/FusedBatchNormV3/ReadVariableOp.^batchnorm_2/FusedBatchNormV3/ReadVariableOp_1^batchnorm_2/ReadVariableOp^batchnorm_2/ReadVariableOp_1,^batchnorm_3/FusedBatchNormV3/ReadVariableOp.^batchnorm_3/FusedBatchNormV3/ReadVariableOp_1^batchnorm_3/ReadVariableOp^batchnorm_3/ReadVariableOp_1,^batchnorm_4/FusedBatchNormV3/ReadVariableOp.^batchnorm_4/FusedBatchNormV3/ReadVariableOp_1^batchnorm_4/ReadVariableOp^batchnorm_4/ReadVariableOp_1,^batchnorm_5/FusedBatchNormV3/ReadVariableOp.^batchnorm_5/FusedBatchNormV3/ReadVariableOp_1^batchnorm_5/ReadVariableOp^batchnorm_5/ReadVariableOp_1,^batchnorm_6/FusedBatchNormV3/ReadVariableOp.^batchnorm_6/FusedBatchNormV3/ReadVariableOp_1^batchnorm_6/ReadVariableOp^batchnorm_6/ReadVariableOp_1^conv_1/BiasAdd/ReadVariableOp^conv_1/Conv2D/ReadVariableOp^conv_2/BiasAdd/ReadVariableOp^conv_2/Conv2D/ReadVariableOp^conv_3/BiasAdd/ReadVariableOp^conv_3/Conv2D/ReadVariableOp(^conv_transpose_1/BiasAdd/ReadVariableOp1^conv_transpose_1/conv2d_transpose/ReadVariableOp(^conv_transpose_2/BiasAdd/ReadVariableOp1^conv_transpose_2/conv2d_transpose/ReadVariableOp(^conv_transpose_3/BiasAdd/ReadVariableOp1^conv_transpose_3/conv2d_transpose/ReadVariableOp(^conv_transpose_4/BiasAdd/ReadVariableOp1^conv_transpose_4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batchnorm_1/FusedBatchNormV3/ReadVariableOp+batchnorm_1/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_1/FusedBatchNormV3/ReadVariableOp_1-batchnorm_1/FusedBatchNormV3/ReadVariableOp_128
batchnorm_1/ReadVariableOpbatchnorm_1/ReadVariableOp2<
batchnorm_1/ReadVariableOp_1batchnorm_1/ReadVariableOp_12Z
+batchnorm_2/FusedBatchNormV3/ReadVariableOp+batchnorm_2/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_2/FusedBatchNormV3/ReadVariableOp_1-batchnorm_2/FusedBatchNormV3/ReadVariableOp_128
batchnorm_2/ReadVariableOpbatchnorm_2/ReadVariableOp2<
batchnorm_2/ReadVariableOp_1batchnorm_2/ReadVariableOp_12Z
+batchnorm_3/FusedBatchNormV3/ReadVariableOp+batchnorm_3/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_3/FusedBatchNormV3/ReadVariableOp_1-batchnorm_3/FusedBatchNormV3/ReadVariableOp_128
batchnorm_3/ReadVariableOpbatchnorm_3/ReadVariableOp2<
batchnorm_3/ReadVariableOp_1batchnorm_3/ReadVariableOp_12Z
+batchnorm_4/FusedBatchNormV3/ReadVariableOp+batchnorm_4/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_4/FusedBatchNormV3/ReadVariableOp_1-batchnorm_4/FusedBatchNormV3/ReadVariableOp_128
batchnorm_4/ReadVariableOpbatchnorm_4/ReadVariableOp2<
batchnorm_4/ReadVariableOp_1batchnorm_4/ReadVariableOp_12Z
+batchnorm_5/FusedBatchNormV3/ReadVariableOp+batchnorm_5/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_5/FusedBatchNormV3/ReadVariableOp_1-batchnorm_5/FusedBatchNormV3/ReadVariableOp_128
batchnorm_5/ReadVariableOpbatchnorm_5/ReadVariableOp2<
batchnorm_5/ReadVariableOp_1batchnorm_5/ReadVariableOp_12Z
+batchnorm_6/FusedBatchNormV3/ReadVariableOp+batchnorm_6/FusedBatchNormV3/ReadVariableOp2^
-batchnorm_6/FusedBatchNormV3/ReadVariableOp_1-batchnorm_6/FusedBatchNormV3/ReadVariableOp_128
batchnorm_6/ReadVariableOpbatchnorm_6/ReadVariableOp2<
batchnorm_6/ReadVariableOp_1batchnorm_6/ReadVariableOp_12>
conv_1/BiasAdd/ReadVariableOpconv_1/BiasAdd/ReadVariableOp2<
conv_1/Conv2D/ReadVariableOpconv_1/Conv2D/ReadVariableOp2>
conv_2/BiasAdd/ReadVariableOpconv_2/BiasAdd/ReadVariableOp2<
conv_2/Conv2D/ReadVariableOpconv_2/Conv2D/ReadVariableOp2>
conv_3/BiasAdd/ReadVariableOpconv_3/BiasAdd/ReadVariableOp2<
conv_3/Conv2D/ReadVariableOpconv_3/Conv2D/ReadVariableOp2R
'conv_transpose_1/BiasAdd/ReadVariableOp'conv_transpose_1/BiasAdd/ReadVariableOp2d
0conv_transpose_1/conv2d_transpose/ReadVariableOp0conv_transpose_1/conv2d_transpose/ReadVariableOp2R
'conv_transpose_2/BiasAdd/ReadVariableOp'conv_transpose_2/BiasAdd/ReadVariableOp2d
0conv_transpose_2/conv2d_transpose/ReadVariableOp0conv_transpose_2/conv2d_transpose/ReadVariableOp2R
'conv_transpose_3/BiasAdd/ReadVariableOp'conv_transpose_3/BiasAdd/ReadVariableOp2d
0conv_transpose_3/conv2d_transpose/ReadVariableOp0conv_transpose_3/conv2d_transpose/ReadVariableOp2R
'conv_transpose_4/BiasAdd/ReadVariableOp'conv_transpose_4/BiasAdd/ReadVariableOp2d
0conv_transpose_4/conv2d_transpose/ReadVariableOp0conv_transpose_4/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_3_layer_call_fn_11647798

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645705?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
D__inference_conv_1_layer_call_and_return_conditional_losses_11647590

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:?????????4? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?

?
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?_
?
C__inference_model_layer_call_and_return_conditional_losses_11646942
input_layer)
conv_1_11646846: 
conv_1_11646848: "
batchnorm_1_11646851: "
batchnorm_1_11646853: "
batchnorm_1_11646855: "
batchnorm_1_11646857: )
conv_2_11646861: @
conv_2_11646863:@"
batchnorm_2_11646866:@"
batchnorm_2_11646868:@"
batchnorm_2_11646870:@"
batchnorm_2_11646872:@)
conv_3_11646876:@@
conv_3_11646878:@"
batchnorm_3_11646881:@"
batchnorm_3_11646883:@"
batchnorm_3_11646885:@"
batchnorm_3_11646887:@3
conv_transpose_1_11646891:@@'
conv_transpose_1_11646893:@"
batchnorm_4_11646896:@"
batchnorm_4_11646898:@"
batchnorm_4_11646900:@"
batchnorm_4_11646902:@3
conv_transpose_2_11646906:@@'
conv_transpose_2_11646908:@"
batchnorm_5_11646911:@"
batchnorm_5_11646913:@"
batchnorm_5_11646915:@"
batchnorm_5_11646917:@3
conv_transpose_3_11646921: @'
conv_transpose_3_11646923: "
batchnorm_6_11646926: "
batchnorm_6_11646928: "
batchnorm_6_11646930: "
batchnorm_6_11646932: 3
conv_transpose_4_11646936: '
conv_transpose_4_11646938:
identity??#batchnorm_1/StatefulPartitionedCall?#batchnorm_2/StatefulPartitionedCall?#batchnorm_3/StatefulPartitionedCall?#batchnorm_4/StatefulPartitionedCall?#batchnorm_5/StatefulPartitionedCall?#batchnorm_6/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?(conv_transpose_1/StatefulPartitionedCall?(conv_transpose_2/StatefulPartitionedCall?(conv_transpose_3/StatefulPartitionedCall?(conv_transpose_4/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_1_11646846conv_1_11646848*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102?
#batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batchnorm_1_11646851batchnorm_1_11646853batchnorm_1_11646855batchnorm_1_11646857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645577?
leaky_relu_1/PartitionedCallPartitionedCall,batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122?
conv_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_1/PartitionedCall:output:0conv_2_11646861conv_2_11646863*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134?
#batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0batchnorm_2_11646866batchnorm_2_11646868batchnorm_2_11646870batchnorm_2_11646872*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645641?
leaky_relu_2/PartitionedCallPartitionedCall,batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154?
conv_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_2/PartitionedCall:output:0conv_3_11646876conv_3_11646878*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166?
#batchnorm_3/StatefulPartitionedCallStatefulPartitionedCall'conv_3/StatefulPartitionedCall:output:0batchnorm_3_11646881batchnorm_3_11646883batchnorm_3_11646885batchnorm_3_11646887*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645705?
leaky_relu_3/PartitionedCallPartitionedCall,batchnorm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186?
(conv_transpose_1/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_3/PartitionedCall:output:0conv_transpose_1_11646891conv_transpose_1_11646893*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753?
#batchnorm_4/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_1/StatefulPartitionedCall:output:0batchnorm_4_11646896batchnorm_4_11646898batchnorm_4_11646900batchnorm_4_11646902*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645813?
leaky_relu_4/PartitionedCallPartitionedCall,batchnorm_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207?
(conv_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_4/PartitionedCall:output:0conv_transpose_2_11646906conv_transpose_2_11646908*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861?
#batchnorm_5/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_2/StatefulPartitionedCall:output:0batchnorm_5_11646911batchnorm_5_11646913batchnorm_5_11646915batchnorm_5_11646917*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645921?
leaky_relu_5/PartitionedCallPartitionedCall,batchnorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228?
(conv_transpose_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_5/PartitionedCall:output:0conv_transpose_3_11646921conv_transpose_3_11646923*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969?
#batchnorm_6/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_3/StatefulPartitionedCall:output:0batchnorm_6_11646926batchnorm_6_11646928batchnorm_6_11646930batchnorm_6_11646932*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11646029?
leaky_relu_6/PartitionedCallPartitionedCall,batchnorm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249?
(conv_transpose_4/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_6/PartitionedCall:output:0conv_transpose_4_11646936conv_transpose_4_11646938*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078?
IdentityIdentity1conv_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp$^batchnorm_1/StatefulPartitionedCall$^batchnorm_2/StatefulPartitionedCall$^batchnorm_3/StatefulPartitionedCall$^batchnorm_4/StatefulPartitionedCall$^batchnorm_5/StatefulPartitionedCall$^batchnorm_6/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall)^conv_transpose_1/StatefulPartitionedCall)^conv_transpose_2/StatefulPartitionedCall)^conv_transpose_3/StatefulPartitionedCall)^conv_transpose_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batchnorm_1/StatefulPartitionedCall#batchnorm_1/StatefulPartitionedCall2J
#batchnorm_2/StatefulPartitionedCall#batchnorm_2/StatefulPartitionedCall2J
#batchnorm_3/StatefulPartitionedCall#batchnorm_3/StatefulPartitionedCall2J
#batchnorm_4/StatefulPartitionedCall#batchnorm_4/StatefulPartitionedCall2J
#batchnorm_5/StatefulPartitionedCall#batchnorm_5/StatefulPartitionedCall2J
#batchnorm_6/StatefulPartitionedCall#batchnorm_6/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2T
(conv_transpose_1/StatefulPartitionedCall(conv_transpose_1/StatefulPartitionedCall2T
(conv_transpose_2/StatefulPartitionedCall(conv_transpose_2/StatefulPartitionedCall2T
(conv_transpose_3/StatefulPartitionedCall(conv_transpose_3/StatefulPartitionedCall2T
(conv_transpose_4/StatefulPartitionedCall(conv_transpose_4/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?
?
)__inference_conv_3_layer_call_fn_11647762

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????I@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647930

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647725

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_3_layer_call_fn_11647839

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648062

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11648000

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11648072

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????@*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11647886

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_5_layer_call_fn_11648067

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11648114

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_6_layer_call_fn_11648127

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11645998?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?"
#__inference__wrapped_model_11645524
input_layerE
+model_conv_1_conv2d_readvariableop_resource: :
,model_conv_1_biasadd_readvariableop_resource: 7
)model_batchnorm_1_readvariableop_resource: 9
+model_batchnorm_1_readvariableop_1_resource: H
:model_batchnorm_1_fusedbatchnormv3_readvariableop_resource: J
<model_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource: E
+model_conv_2_conv2d_readvariableop_resource: @:
,model_conv_2_biasadd_readvariableop_resource:@7
)model_batchnorm_2_readvariableop_resource:@9
+model_batchnorm_2_readvariableop_1_resource:@H
:model_batchnorm_2_fusedbatchnormv3_readvariableop_resource:@J
<model_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource:@E
+model_conv_3_conv2d_readvariableop_resource:@@:
,model_conv_3_biasadd_readvariableop_resource:@7
)model_batchnorm_3_readvariableop_resource:@9
+model_batchnorm_3_readvariableop_1_resource:@H
:model_batchnorm_3_fusedbatchnormv3_readvariableop_resource:@J
<model_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource:@Y
?model_conv_transpose_1_conv2d_transpose_readvariableop_resource:@@D
6model_conv_transpose_1_biasadd_readvariableop_resource:@7
)model_batchnorm_4_readvariableop_resource:@9
+model_batchnorm_4_readvariableop_1_resource:@H
:model_batchnorm_4_fusedbatchnormv3_readvariableop_resource:@J
<model_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource:@Y
?model_conv_transpose_2_conv2d_transpose_readvariableop_resource:@@D
6model_conv_transpose_2_biasadd_readvariableop_resource:@7
)model_batchnorm_5_readvariableop_resource:@9
+model_batchnorm_5_readvariableop_1_resource:@H
:model_batchnorm_5_fusedbatchnormv3_readvariableop_resource:@J
<model_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource:@Y
?model_conv_transpose_3_conv2d_transpose_readvariableop_resource: @D
6model_conv_transpose_3_biasadd_readvariableop_resource: 7
)model_batchnorm_6_readvariableop_resource: 9
+model_batchnorm_6_readvariableop_1_resource: H
:model_batchnorm_6_fusedbatchnormv3_readvariableop_resource: J
<model_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource: Y
?model_conv_transpose_4_conv2d_transpose_readvariableop_resource: D
6model_conv_transpose_4_biasadd_readvariableop_resource:
identity??1model/batchnorm_1/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_1/ReadVariableOp?"model/batchnorm_1/ReadVariableOp_1?1model/batchnorm_2/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_2/ReadVariableOp?"model/batchnorm_2/ReadVariableOp_1?1model/batchnorm_3/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_3/ReadVariableOp?"model/batchnorm_3/ReadVariableOp_1?1model/batchnorm_4/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_4/ReadVariableOp?"model/batchnorm_4/ReadVariableOp_1?1model/batchnorm_5/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_5/ReadVariableOp?"model/batchnorm_5/ReadVariableOp_1?1model/batchnorm_6/FusedBatchNormV3/ReadVariableOp?3model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1? model/batchnorm_6/ReadVariableOp?"model/batchnorm_6/ReadVariableOp_1?#model/conv_1/BiasAdd/ReadVariableOp?"model/conv_1/Conv2D/ReadVariableOp?#model/conv_2/BiasAdd/ReadVariableOp?"model/conv_2/Conv2D/ReadVariableOp?#model/conv_3/BiasAdd/ReadVariableOp?"model/conv_3/Conv2D/ReadVariableOp?-model/conv_transpose_1/BiasAdd/ReadVariableOp?6model/conv_transpose_1/conv2d_transpose/ReadVariableOp?-model/conv_transpose_2/BiasAdd/ReadVariableOp?6model/conv_transpose_2/conv2d_transpose/ReadVariableOp?-model/conv_transpose_3/BiasAdd/ReadVariableOp?6model/conv_transpose_3/conv2d_transpose/ReadVariableOp?-model/conv_transpose_4/BiasAdd/ReadVariableOp?6model/conv_transpose_4/conv2d_transpose/ReadVariableOp?
"model/conv_1/Conv2D/ReadVariableOpReadVariableOp+model_conv_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model/conv_1/Conv2DConv2Dinput_layer*model/conv_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
#model/conv_1/BiasAdd/ReadVariableOpReadVariableOp,model_conv_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model/conv_1/BiasAddBiasAddmodel/conv_1/Conv2D:output:0+model/conv_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? ?
 model/batchnorm_1/ReadVariableOpReadVariableOp)model_batchnorm_1_readvariableop_resource*
_output_shapes
: *
dtype0?
"model/batchnorm_1/ReadVariableOp_1ReadVariableOp+model_batchnorm_1_readvariableop_1_resource*
_output_shapes
: *
dtype0?
1model/batchnorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
3model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
"model/batchnorm_1/FusedBatchNormV3FusedBatchNormV3model/conv_1/BiasAdd:output:0(model/batchnorm_1/ReadVariableOp:value:0*model/batchnorm_1/ReadVariableOp_1:value:09model/batchnorm_1/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
is_training( ?
model/leaky_relu_1/LeakyRelu	LeakyRelu&model/batchnorm_1/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>?
"model/conv_2/Conv2D/ReadVariableOpReadVariableOp+model_conv_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model/conv_2/Conv2DConv2D*model/leaky_relu_1/LeakyRelu:activations:0*model/conv_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
#model/conv_2/BiasAdd/ReadVariableOpReadVariableOp,model_conv_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/conv_2/BiasAddBiasAddmodel/conv_2/Conv2D:output:0+model/conv_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@?
 model/batchnorm_2/ReadVariableOpReadVariableOp)model_batchnorm_2_readvariableop_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_2/ReadVariableOp_1ReadVariableOp+model_batchnorm_2_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1model/batchnorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
3model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_2/FusedBatchNormV3FusedBatchNormV3model/conv_2/BiasAdd:output:0(model/batchnorm_2/ReadVariableOp:value:0*model/batchnorm_2/ReadVariableOp_1:value:09model/batchnorm_2/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
model/leaky_relu_2/LeakyRelu	LeakyRelu&model/batchnorm_2/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>?
"model/conv_3/Conv2D/ReadVariableOpReadVariableOp+model_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model/conv_3/Conv2DConv2D*model/leaky_relu_2/LeakyRelu:activations:0*model/conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
#model/conv_3/BiasAdd/ReadVariableOpReadVariableOp,model_conv_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/conv_3/BiasAddBiasAddmodel/conv_3/Conv2D:output:0+model/conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@?
 model/batchnorm_3/ReadVariableOpReadVariableOp)model_batchnorm_3_readvariableop_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_3/ReadVariableOp_1ReadVariableOp+model_batchnorm_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1model/batchnorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
3model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_3/FusedBatchNormV3FusedBatchNormV3model/conv_3/BiasAdd:output:0(model/batchnorm_3/ReadVariableOp:value:0*model/batchnorm_3/ReadVariableOp_1:value:09model/batchnorm_3/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
is_training( ?
model/leaky_relu_3/LeakyRelu	LeakyRelu&model/batchnorm_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>v
model/conv_transpose_1/ShapeShape*model/leaky_relu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*model/conv_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model/conv_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model/conv_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$model/conv_transpose_1/strided_sliceStridedSlice%model/conv_transpose_1/Shape:output:03model/conv_transpose_1/strided_slice/stack:output:05model/conv_transpose_1/strided_slice/stack_1:output:05model/conv_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model/conv_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :`
model/conv_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :I`
model/conv_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
model/conv_transpose_1/stackPack-model/conv_transpose_1/strided_slice:output:0'model/conv_transpose_1/stack/1:output:0'model/conv_transpose_1/stack/2:output:0'model/conv_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:v
,model/conv_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model/conv_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/conv_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model/conv_transpose_1/strided_slice_1StridedSlice%model/conv_transpose_1/stack:output:05model/conv_transpose_1/strided_slice_1/stack:output:07model/conv_transpose_1/strided_slice_1/stack_1:output:07model/conv_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
6model/conv_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp?model_conv_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
'model/conv_transpose_1/conv2d_transposeConv2DBackpropInput%model/conv_transpose_1/stack:output:0>model/conv_transpose_1/conv2d_transpose/ReadVariableOp:value:0*model/leaky_relu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
?
-model/conv_transpose_1/BiasAdd/ReadVariableOpReadVariableOp6model_conv_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/conv_transpose_1/BiasAddBiasAdd0model/conv_transpose_1/conv2d_transpose:output:05model/conv_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@?
 model/batchnorm_4/ReadVariableOpReadVariableOp)model_batchnorm_4_readvariableop_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_4/ReadVariableOp_1ReadVariableOp+model_batchnorm_4_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1model/batchnorm_4/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
3model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_4/FusedBatchNormV3FusedBatchNormV3'model/conv_transpose_1/BiasAdd:output:0(model/batchnorm_4/ReadVariableOp:value:0*model/batchnorm_4/ReadVariableOp_1:value:09model/batchnorm_4/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????I@:@:@:@:@:*
epsilon%o?:*
is_training( ?
model/leaky_relu_4/LeakyRelu	LeakyRelu&model/batchnorm_4/FusedBatchNormV3:y:0*/
_output_shapes
:?????????I@*
alpha%???>v
model/conv_transpose_2/ShapeShape*model/leaky_relu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*model/conv_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model/conv_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model/conv_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$model/conv_transpose_2/strided_sliceStridedSlice%model/conv_transpose_2/Shape:output:03model/conv_transpose_2/strided_slice/stack:output:05model/conv_transpose_2/strided_slice/stack_1:output:05model/conv_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model/conv_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :a
model/conv_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?`
model/conv_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
model/conv_transpose_2/stackPack-model/conv_transpose_2/strided_slice:output:0'model/conv_transpose_2/stack/1:output:0'model/conv_transpose_2/stack/2:output:0'model/conv_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:v
,model/conv_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model/conv_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/conv_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model/conv_transpose_2/strided_slice_1StridedSlice%model/conv_transpose_2/stack:output:05model/conv_transpose_2/strided_slice_1/stack:output:07model/conv_transpose_2/strided_slice_1/stack_1:output:07model/conv_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
6model/conv_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp?model_conv_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
'model/conv_transpose_2/conv2d_transposeConv2DBackpropInput%model/conv_transpose_2/stack:output:0>model/conv_transpose_2/conv2d_transpose/ReadVariableOp:value:0*model/leaky_relu_4/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????@*
paddingSAME*
strides
?
-model/conv_transpose_2/BiasAdd/ReadVariableOpReadVariableOp6model_conv_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/conv_transpose_2/BiasAddBiasAdd0model/conv_transpose_2/conv2d_transpose:output:05model/conv_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@?
 model/batchnorm_5/ReadVariableOpReadVariableOp)model_batchnorm_5_readvariableop_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_5/ReadVariableOp_1ReadVariableOp+model_batchnorm_5_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
1model/batchnorm_5/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
3model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
"model/batchnorm_5/FusedBatchNormV3FusedBatchNormV3'model/conv_transpose_2/BiasAdd:output:0(model/batchnorm_5/ReadVariableOp:value:0*model/batchnorm_5/ReadVariableOp_1:value:09model/batchnorm_5/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
model/leaky_relu_5/LeakyRelu	LeakyRelu&model/batchnorm_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????@*
alpha%???>v
model/conv_transpose_3/ShapeShape*model/leaky_relu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*model/conv_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model/conv_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model/conv_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$model/conv_transpose_3/strided_sliceStridedSlice%model/conv_transpose_3/Shape:output:03model/conv_transpose_3/strided_slice/stack:output:05model/conv_transpose_3/strided_slice/stack_1:output:05model/conv_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model/conv_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4a
model/conv_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?`
model/conv_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
model/conv_transpose_3/stackPack-model/conv_transpose_3/strided_slice:output:0'model/conv_transpose_3/stack/1:output:0'model/conv_transpose_3/stack/2:output:0'model/conv_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:v
,model/conv_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model/conv_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/conv_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model/conv_transpose_3/strided_slice_1StridedSlice%model/conv_transpose_3/stack:output:05model/conv_transpose_3/strided_slice_1/stack:output:07model/conv_transpose_3/strided_slice_1/stack_1:output:07model/conv_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
6model/conv_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp?model_conv_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
'model/conv_transpose_3/conv2d_transposeConv2DBackpropInput%model/conv_transpose_3/stack:output:0>model/conv_transpose_3/conv2d_transpose/ReadVariableOp:value:0*model/leaky_relu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? *
paddingSAME*
strides
?
-model/conv_transpose_3/BiasAdd/ReadVariableOpReadVariableOp6model_conv_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model/conv_transpose_3/BiasAddBiasAdd0model/conv_transpose_3/conv2d_transpose:output:05model/conv_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4? ?
 model/batchnorm_6/ReadVariableOpReadVariableOp)model_batchnorm_6_readvariableop_resource*
_output_shapes
: *
dtype0?
"model/batchnorm_6/ReadVariableOp_1ReadVariableOp+model_batchnorm_6_readvariableop_1_resource*
_output_shapes
: *
dtype0?
1model/batchnorm_6/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_batchnorm_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
3model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_batchnorm_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
"model/batchnorm_6/FusedBatchNormV3FusedBatchNormV3'model/conv_transpose_3/BiasAdd:output:0(model/batchnorm_6/ReadVariableOp:value:0*model/batchnorm_6/ReadVariableOp_1:value:09model/batchnorm_6/FusedBatchNormV3/ReadVariableOp:value:0;model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????4? : : : : :*
epsilon%o?:*
is_training( ?
model/leaky_relu_6/LeakyRelu	LeakyRelu&model/batchnorm_6/FusedBatchNormV3:y:0*0
_output_shapes
:?????????4? *
alpha%???>v
model/conv_transpose_4/ShapeShape*model/leaky_relu_6/LeakyRelu:activations:0*
T0*
_output_shapes
:t
*model/conv_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,model/conv_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,model/conv_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$model/conv_transpose_4/strided_sliceStridedSlice%model/conv_transpose_4/Shape:output:03model/conv_transpose_4/strided_slice/stack:output:05model/conv_transpose_4/strided_slice/stack_1:output:05model/conv_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model/conv_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B :4a
model/conv_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?`
model/conv_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
model/conv_transpose_4/stackPack-model/conv_transpose_4/strided_slice:output:0'model/conv_transpose_4/stack/1:output:0'model/conv_transpose_4/stack/2:output:0'model/conv_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:v
,model/conv_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model/conv_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model/conv_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&model/conv_transpose_4/strided_slice_1StridedSlice%model/conv_transpose_4/stack:output:05model/conv_transpose_4/strided_slice_1/stack:output:07model/conv_transpose_4/strided_slice_1/stack_1:output:07model/conv_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
6model/conv_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp?model_conv_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
'model/conv_transpose_4/conv2d_transposeConv2DBackpropInput%model/conv_transpose_4/stack:output:0>model/conv_transpose_4/conv2d_transpose/ReadVariableOp:value:0*model/leaky_relu_6/LeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4?*
paddingSAME*
strides
?
-model/conv_transpose_4/BiasAdd/ReadVariableOpReadVariableOp6model_conv_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/conv_transpose_4/BiasAddBiasAdd0model/conv_transpose_4/conv2d_transpose:output:05model/conv_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????4??
model/conv_transpose_4/SigmoidSigmoid'model/conv_transpose_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????4?z
IdentityIdentity"model/conv_transpose_4/Sigmoid:y:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp2^model/batchnorm_1/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_1/ReadVariableOp#^model/batchnorm_1/ReadVariableOp_12^model/batchnorm_2/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_2/ReadVariableOp#^model/batchnorm_2/ReadVariableOp_12^model/batchnorm_3/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_3/ReadVariableOp#^model/batchnorm_3/ReadVariableOp_12^model/batchnorm_4/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_4/ReadVariableOp#^model/batchnorm_4/ReadVariableOp_12^model/batchnorm_5/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_5/ReadVariableOp#^model/batchnorm_5/ReadVariableOp_12^model/batchnorm_6/FusedBatchNormV3/ReadVariableOp4^model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_1!^model/batchnorm_6/ReadVariableOp#^model/batchnorm_6/ReadVariableOp_1$^model/conv_1/BiasAdd/ReadVariableOp#^model/conv_1/Conv2D/ReadVariableOp$^model/conv_2/BiasAdd/ReadVariableOp#^model/conv_2/Conv2D/ReadVariableOp$^model/conv_3/BiasAdd/ReadVariableOp#^model/conv_3/Conv2D/ReadVariableOp.^model/conv_transpose_1/BiasAdd/ReadVariableOp7^model/conv_transpose_1/conv2d_transpose/ReadVariableOp.^model/conv_transpose_2/BiasAdd/ReadVariableOp7^model/conv_transpose_2/conv2d_transpose/ReadVariableOp.^model/conv_transpose_3/BiasAdd/ReadVariableOp7^model/conv_transpose_3/conv2d_transpose/ReadVariableOp.^model/conv_transpose_4/BiasAdd/ReadVariableOp7^model/conv_transpose_4/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1model/batchnorm_1/FusedBatchNormV3/ReadVariableOp1model/batchnorm_1/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_1/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_1/ReadVariableOp model/batchnorm_1/ReadVariableOp2H
"model/batchnorm_1/ReadVariableOp_1"model/batchnorm_1/ReadVariableOp_12f
1model/batchnorm_2/FusedBatchNormV3/ReadVariableOp1model/batchnorm_2/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_2/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_2/ReadVariableOp model/batchnorm_2/ReadVariableOp2H
"model/batchnorm_2/ReadVariableOp_1"model/batchnorm_2/ReadVariableOp_12f
1model/batchnorm_3/FusedBatchNormV3/ReadVariableOp1model/batchnorm_3/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_3/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_3/ReadVariableOp model/batchnorm_3/ReadVariableOp2H
"model/batchnorm_3/ReadVariableOp_1"model/batchnorm_3/ReadVariableOp_12f
1model/batchnorm_4/FusedBatchNormV3/ReadVariableOp1model/batchnorm_4/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_4/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_4/ReadVariableOp model/batchnorm_4/ReadVariableOp2H
"model/batchnorm_4/ReadVariableOp_1"model/batchnorm_4/ReadVariableOp_12f
1model/batchnorm_5/FusedBatchNormV3/ReadVariableOp1model/batchnorm_5/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_5/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_5/ReadVariableOp model/batchnorm_5/ReadVariableOp2H
"model/batchnorm_5/ReadVariableOp_1"model/batchnorm_5/ReadVariableOp_12f
1model/batchnorm_6/FusedBatchNormV3/ReadVariableOp1model/batchnorm_6/FusedBatchNormV3/ReadVariableOp2j
3model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_13model/batchnorm_6/FusedBatchNormV3/ReadVariableOp_12D
 model/batchnorm_6/ReadVariableOp model/batchnorm_6/ReadVariableOp2H
"model/batchnorm_6/ReadVariableOp_1"model/batchnorm_6/ReadVariableOp_12J
#model/conv_1/BiasAdd/ReadVariableOp#model/conv_1/BiasAdd/ReadVariableOp2H
"model/conv_1/Conv2D/ReadVariableOp"model/conv_1/Conv2D/ReadVariableOp2J
#model/conv_2/BiasAdd/ReadVariableOp#model/conv_2/BiasAdd/ReadVariableOp2H
"model/conv_2/Conv2D/ReadVariableOp"model/conv_2/Conv2D/ReadVariableOp2J
#model/conv_3/BiasAdd/ReadVariableOp#model/conv_3/BiasAdd/ReadVariableOp2H
"model/conv_3/Conv2D/ReadVariableOp"model/conv_3/Conv2D/ReadVariableOp2^
-model/conv_transpose_1/BiasAdd/ReadVariableOp-model/conv_transpose_1/BiasAdd/ReadVariableOp2p
6model/conv_transpose_1/conv2d_transpose/ReadVariableOp6model/conv_transpose_1/conv2d_transpose/ReadVariableOp2^
-model/conv_transpose_2/BiasAdd/ReadVariableOp-model/conv_transpose_2/BiasAdd/ReadVariableOp2p
6model/conv_transpose_2/conv2d_transpose/ReadVariableOp6model/conv_transpose_2/conv2d_transpose/ReadVariableOp2^
-model/conv_transpose_3/BiasAdd/ReadVariableOp-model/conv_transpose_3/BiasAdd/ReadVariableOp2p
6model/conv_transpose_3/conv2d_transpose/ReadVariableOp6model/conv_transpose_3/conv2d_transpose/ReadVariableOp2^
-model/conv_transpose_4/BiasAdd/ReadVariableOp-model/conv_transpose_4/BiasAdd/ReadVariableOp2p
6model/conv_transpose_4/conv2d_transpose/ReadVariableOp6model/conv_transpose_4/conv2d_transpose/ReadVariableOp:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?

?
D__inference_conv_3_layer_call_and_return_conditional_losses_11647772

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????I@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????I@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?	
(__inference_model_layer_call_fn_11647112

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_11646257x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_4_layer_call_fn_11647953

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
?_
?
C__inference_model_layer_call_and_return_conditional_losses_11646584

inputs)
conv_1_11646488: 
conv_1_11646490: "
batchnorm_1_11646493: "
batchnorm_1_11646495: "
batchnorm_1_11646497: "
batchnorm_1_11646499: )
conv_2_11646503: @
conv_2_11646505:@"
batchnorm_2_11646508:@"
batchnorm_2_11646510:@"
batchnorm_2_11646512:@"
batchnorm_2_11646514:@)
conv_3_11646518:@@
conv_3_11646520:@"
batchnorm_3_11646523:@"
batchnorm_3_11646525:@"
batchnorm_3_11646527:@"
batchnorm_3_11646529:@3
conv_transpose_1_11646533:@@'
conv_transpose_1_11646535:@"
batchnorm_4_11646538:@"
batchnorm_4_11646540:@"
batchnorm_4_11646542:@"
batchnorm_4_11646544:@3
conv_transpose_2_11646548:@@'
conv_transpose_2_11646550:@"
batchnorm_5_11646553:@"
batchnorm_5_11646555:@"
batchnorm_5_11646557:@"
batchnorm_5_11646559:@3
conv_transpose_3_11646563: @'
conv_transpose_3_11646565: "
batchnorm_6_11646568: "
batchnorm_6_11646570: "
batchnorm_6_11646572: "
batchnorm_6_11646574: 3
conv_transpose_4_11646578: '
conv_transpose_4_11646580:
identity??#batchnorm_1/StatefulPartitionedCall?#batchnorm_2/StatefulPartitionedCall?#batchnorm_3/StatefulPartitionedCall?#batchnorm_4/StatefulPartitionedCall?#batchnorm_5/StatefulPartitionedCall?#batchnorm_6/StatefulPartitionedCall?conv_1/StatefulPartitionedCall?conv_2/StatefulPartitionedCall?conv_3/StatefulPartitionedCall?(conv_transpose_1/StatefulPartitionedCall?(conv_transpose_2/StatefulPartitionedCall?(conv_transpose_3/StatefulPartitionedCall?(conv_transpose_4/StatefulPartitionedCall?
conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_11646488conv_1_11646490*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_1_layer_call_and_return_conditional_losses_11646102?
#batchnorm_1/StatefulPartitionedCallStatefulPartitionedCall'conv_1/StatefulPartitionedCall:output:0batchnorm_1_11646493batchnorm_1_11646495batchnorm_1_11646497batchnorm_1_11646499*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11645577?
leaky_relu_1/PartitionedCallPartitionedCall,batchnorm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11646122?
conv_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_1/PartitionedCall:output:0conv_2_11646503conv_2_11646505*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134?
#batchnorm_2/StatefulPartitionedCallStatefulPartitionedCall'conv_2/StatefulPartitionedCall:output:0batchnorm_2_11646508batchnorm_2_11646510batchnorm_2_11646512batchnorm_2_11646514*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645641?
leaky_relu_2/PartitionedCallPartitionedCall,batchnorm_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11646154?
conv_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_2/PartitionedCall:output:0conv_3_11646518conv_3_11646520*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_3_layer_call_and_return_conditional_losses_11646166?
#batchnorm_3/StatefulPartitionedCallStatefulPartitionedCall'conv_3/StatefulPartitionedCall:output:0batchnorm_3_11646523batchnorm_3_11646525batchnorm_3_11646527batchnorm_3_11646529*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11645705?
leaky_relu_3/PartitionedCallPartitionedCall,batchnorm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11646186?
(conv_transpose_1/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_3/PartitionedCall:output:0conv_transpose_1_11646533conv_transpose_1_11646535*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753?
#batchnorm_4/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_1/StatefulPartitionedCall:output:0batchnorm_4_11646538batchnorm_4_11646540batchnorm_4_11646542batchnorm_4_11646544*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645813?
leaky_relu_4/PartitionedCallPartitionedCall,batchnorm_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????I@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11646207?
(conv_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_4/PartitionedCall:output:0conv_transpose_2_11646548conv_transpose_2_11646550*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11645861?
#batchnorm_5/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_2/StatefulPartitionedCall:output:0batchnorm_5_11646553batchnorm_5_11646555batchnorm_5_11646557batchnorm_5_11646559*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11645921?
leaky_relu_5/PartitionedCallPartitionedCall,batchnorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11646228?
(conv_transpose_3/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_5/PartitionedCall:output:0conv_transpose_3_11646563conv_transpose_3_11646565*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969?
#batchnorm_6/StatefulPartitionedCallStatefulPartitionedCall1conv_transpose_3/StatefulPartitionedCall:output:0batchnorm_6_11646568batchnorm_6_11646570batchnorm_6_11646572batchnorm_6_11646574*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11646029?
leaky_relu_6/PartitionedCallPartitionedCall,batchnorm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249?
(conv_transpose_4/StatefulPartitionedCallStatefulPartitionedCall%leaky_relu_6/PartitionedCall:output:0conv_transpose_4_11646578conv_transpose_4_11646580*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11646078?
IdentityIdentity1conv_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4??
NoOpNoOp$^batchnorm_1/StatefulPartitionedCall$^batchnorm_2/StatefulPartitionedCall$^batchnorm_3/StatefulPartitionedCall$^batchnorm_4/StatefulPartitionedCall$^batchnorm_5/StatefulPartitionedCall$^batchnorm_6/StatefulPartitionedCall^conv_1/StatefulPartitionedCall^conv_2/StatefulPartitionedCall^conv_3/StatefulPartitionedCall)^conv_transpose_1/StatefulPartitionedCall)^conv_transpose_2/StatefulPartitionedCall)^conv_transpose_3/StatefulPartitionedCall)^conv_transpose_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#batchnorm_1/StatefulPartitionedCall#batchnorm_1/StatefulPartitionedCall2J
#batchnorm_2/StatefulPartitionedCall#batchnorm_2/StatefulPartitionedCall2J
#batchnorm_3/StatefulPartitionedCall#batchnorm_3/StatefulPartitionedCall2J
#batchnorm_4/StatefulPartitionedCall#batchnorm_4/StatefulPartitionedCall2J
#batchnorm_5/StatefulPartitionedCall#batchnorm_5/StatefulPartitionedCall2J
#batchnorm_6/StatefulPartitionedCall#batchnorm_6/StatefulPartitionedCall2@
conv_1/StatefulPartitionedCallconv_1/StatefulPartitionedCall2@
conv_2/StatefulPartitionedCallconv_2/StatefulPartitionedCall2@
conv_3/StatefulPartitionedCallconv_3/StatefulPartitionedCall2T
(conv_transpose_1/StatefulPartitionedCall(conv_transpose_1/StatefulPartitionedCall2T
(conv_transpose_2/StatefulPartitionedCall(conv_transpose_2/StatefulPartitionedCall2T
(conv_transpose_3/StatefulPartitionedCall(conv_transpose_3/StatefulPartitionedCall2T
(conv_transpose_4/StatefulPartitionedCall(conv_transpose_4/StatefulPartitionedCall:X T
0
_output_shapes
:?????????4?
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648176

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11645753

inputsB
(conv2d_transpose_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_2_layer_call_fn_11647694

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11645610?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?	
(__inference_model_layer_call_fn_11646744
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29: @

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4?*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_11646584x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????4?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:?????????4?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????4?
%
_user_specified_nameinput_layer
?
?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647743

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?	
?
.__inference_batchnorm_6_layer_call_fn_11648140

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11646029?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648044

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11647958

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????I@*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????I@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????I@:W S
/
_output_shapes
:?????????I@
 
_user_specified_nameinputs
??
?>
$__inference__traced_restore_11648844
file_prefix8
assignvariableop_conv_1_kernel: ,
assignvariableop_1_conv_1_bias: 2
$assignvariableop_2_batchnorm_1_gamma: 1
#assignvariableop_3_batchnorm_1_beta: 8
*assignvariableop_4_batchnorm_1_moving_mean: <
.assignvariableop_5_batchnorm_1_moving_variance: :
 assignvariableop_6_conv_2_kernel: @,
assignvariableop_7_conv_2_bias:@2
$assignvariableop_8_batchnorm_2_gamma:@1
#assignvariableop_9_batchnorm_2_beta:@9
+assignvariableop_10_batchnorm_2_moving_mean:@=
/assignvariableop_11_batchnorm_2_moving_variance:@;
!assignvariableop_12_conv_3_kernel:@@-
assignvariableop_13_conv_3_bias:@3
%assignvariableop_14_batchnorm_3_gamma:@2
$assignvariableop_15_batchnorm_3_beta:@9
+assignvariableop_16_batchnorm_3_moving_mean:@=
/assignvariableop_17_batchnorm_3_moving_variance:@E
+assignvariableop_18_conv_transpose_1_kernel:@@7
)assignvariableop_19_conv_transpose_1_bias:@3
%assignvariableop_20_batchnorm_4_gamma:@2
$assignvariableop_21_batchnorm_4_beta:@9
+assignvariableop_22_batchnorm_4_moving_mean:@=
/assignvariableop_23_batchnorm_4_moving_variance:@E
+assignvariableop_24_conv_transpose_2_kernel:@@7
)assignvariableop_25_conv_transpose_2_bias:@3
%assignvariableop_26_batchnorm_5_gamma:@2
$assignvariableop_27_batchnorm_5_beta:@9
+assignvariableop_28_batchnorm_5_moving_mean:@=
/assignvariableop_29_batchnorm_5_moving_variance:@E
+assignvariableop_30_conv_transpose_3_kernel: @7
)assignvariableop_31_conv_transpose_3_bias: 3
%assignvariableop_32_batchnorm_6_gamma: 2
$assignvariableop_33_batchnorm_6_beta: 9
+assignvariableop_34_batchnorm_6_moving_mean: =
/assignvariableop_35_batchnorm_6_moving_variance: E
+assignvariableop_36_conv_transpose_4_kernel: 7
)assignvariableop_37_conv_transpose_4_bias:'
assignvariableop_38_adam_iter:	 )
assignvariableop_39_adam_beta_1: )
assignvariableop_40_adam_beta_2: (
assignvariableop_41_adam_decay: 0
&assignvariableop_42_adam_learning_rate: #
assignvariableop_43_total: #
assignvariableop_44_count: B
(assignvariableop_45_adam_conv_1_kernel_m: 4
&assignvariableop_46_adam_conv_1_bias_m: :
,assignvariableop_47_adam_batchnorm_1_gamma_m: 9
+assignvariableop_48_adam_batchnorm_1_beta_m: B
(assignvariableop_49_adam_conv_2_kernel_m: @4
&assignvariableop_50_adam_conv_2_bias_m:@:
,assignvariableop_51_adam_batchnorm_2_gamma_m:@9
+assignvariableop_52_adam_batchnorm_2_beta_m:@B
(assignvariableop_53_adam_conv_3_kernel_m:@@4
&assignvariableop_54_adam_conv_3_bias_m:@:
,assignvariableop_55_adam_batchnorm_3_gamma_m:@9
+assignvariableop_56_adam_batchnorm_3_beta_m:@L
2assignvariableop_57_adam_conv_transpose_1_kernel_m:@@>
0assignvariableop_58_adam_conv_transpose_1_bias_m:@:
,assignvariableop_59_adam_batchnorm_4_gamma_m:@9
+assignvariableop_60_adam_batchnorm_4_beta_m:@L
2assignvariableop_61_adam_conv_transpose_2_kernel_m:@@>
0assignvariableop_62_adam_conv_transpose_2_bias_m:@:
,assignvariableop_63_adam_batchnorm_5_gamma_m:@9
+assignvariableop_64_adam_batchnorm_5_beta_m:@L
2assignvariableop_65_adam_conv_transpose_3_kernel_m: @>
0assignvariableop_66_adam_conv_transpose_3_bias_m: :
,assignvariableop_67_adam_batchnorm_6_gamma_m: 9
+assignvariableop_68_adam_batchnorm_6_beta_m: L
2assignvariableop_69_adam_conv_transpose_4_kernel_m: >
0assignvariableop_70_adam_conv_transpose_4_bias_m:B
(assignvariableop_71_adam_conv_1_kernel_v: 4
&assignvariableop_72_adam_conv_1_bias_v: :
,assignvariableop_73_adam_batchnorm_1_gamma_v: 9
+assignvariableop_74_adam_batchnorm_1_beta_v: B
(assignvariableop_75_adam_conv_2_kernel_v: @4
&assignvariableop_76_adam_conv_2_bias_v:@:
,assignvariableop_77_adam_batchnorm_2_gamma_v:@9
+assignvariableop_78_adam_batchnorm_2_beta_v:@B
(assignvariableop_79_adam_conv_3_kernel_v:@@4
&assignvariableop_80_adam_conv_3_bias_v:@:
,assignvariableop_81_adam_batchnorm_3_gamma_v:@9
+assignvariableop_82_adam_batchnorm_3_beta_v:@L
2assignvariableop_83_adam_conv_transpose_1_kernel_v:@@>
0assignvariableop_84_adam_conv_transpose_1_bias_v:@:
,assignvariableop_85_adam_batchnorm_4_gamma_v:@9
+assignvariableop_86_adam_batchnorm_4_beta_v:@L
2assignvariableop_87_adam_conv_transpose_2_kernel_v:@@>
0assignvariableop_88_adam_conv_transpose_2_bias_v:@:
,assignvariableop_89_adam_batchnorm_5_gamma_v:@9
+assignvariableop_90_adam_batchnorm_5_beta_v:@L
2assignvariableop_91_adam_conv_transpose_3_kernel_v: @>
0assignvariableop_92_adam_conv_transpose_3_bias_v: :
,assignvariableop_93_adam_batchnorm_6_gamma_v: 9
+assignvariableop_94_adam_batchnorm_6_beta_v: L
2assignvariableop_95_adam_conv_transpose_4_kernel_v: >
0assignvariableop_96_adam_conv_transpose_4_bias_v:
identity_98??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*?5
value?5B?5bB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:b*
dtype0*?
value?B?bB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*p
dtypesf
d2b	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batchnorm_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batchnorm_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batchnorm_1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batchnorm_1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_batchnorm_2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_batchnorm_2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_batchnorm_2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batchnorm_2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_batchnorm_3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp$assignvariableop_15_batchnorm_3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_batchnorm_3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batchnorm_3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_conv_transpose_1_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_conv_transpose_1_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_batchnorm_4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_batchnorm_4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_batchnorm_4_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batchnorm_4_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_conv_transpose_2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_conv_transpose_2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_batchnorm_5_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp$assignvariableop_27_batchnorm_5_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_batchnorm_5_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp/assignvariableop_29_batchnorm_5_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_conv_transpose_3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_conv_transpose_3_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_batchnorm_6_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp$assignvariableop_33_batchnorm_6_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_batchnorm_6_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp/assignvariableop_35_batchnorm_6_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_conv_transpose_4_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_conv_transpose_4_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpassignvariableop_43_totalIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpassignvariableop_44_countIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv_1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_conv_1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_batchnorm_1_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_batchnorm_1_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv_2_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv_2_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_batchnorm_2_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_batchnorm_2_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_conv_3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_conv_3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_batchnorm_3_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_batchnorm_3_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp2assignvariableop_57_adam_conv_transpose_1_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp0assignvariableop_58_adam_conv_transpose_1_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_batchnorm_4_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_batchnorm_4_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_conv_transpose_2_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_conv_transpose_2_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_batchnorm_5_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_batchnorm_5_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp2assignvariableop_65_adam_conv_transpose_3_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp0assignvariableop_66_adam_conv_transpose_3_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_batchnorm_6_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_batchnorm_6_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp2assignvariableop_69_adam_conv_transpose_4_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp0assignvariableop_70_adam_conv_transpose_4_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_conv_1_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_conv_1_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_batchnorm_1_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp+assignvariableop_74_adam_batchnorm_1_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOp(assignvariableop_75_adam_conv_2_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOp&assignvariableop_76_adam_conv_2_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_batchnorm_2_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adam_batchnorm_2_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp(assignvariableop_79_adam_conv_3_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp&assignvariableop_80_adam_conv_3_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_batchnorm_3_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_batchnorm_3_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp2assignvariableop_83_adam_conv_transpose_1_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp0assignvariableop_84_adam_conv_transpose_1_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_batchnorm_4_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adam_batchnorm_4_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp2assignvariableop_87_adam_conv_transpose_2_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp0assignvariableop_88_adam_conv_transpose_2_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_batchnorm_5_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp+assignvariableop_90_adam_batchnorm_5_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp2assignvariableop_91_adam_conv_transpose_3_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp0assignvariableop_92_adam_conv_transpose_3_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_batchnorm_6_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp+assignvariableop_94_adam_batchnorm_6_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp2assignvariableop_95_adam_conv_transpose_4_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp0assignvariableop_96_adam_conv_transpose_4_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_97Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_98IdentityIdentity_97:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96*"
_acd_function_control_output(*
_output_shapes
 "#
identity_98Identity_98:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_96:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11646029

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
? 
?
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11645969

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11647662

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????4? *
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?
f
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:?????????4? *
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?
K
/__inference_leaky_relu_6_layer_call_fn_11648181

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????4? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11646249i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????4? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????4? :X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs
?!
?
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11648229

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11645782

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_conv_2_layer_call_fn_11647671

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv_2_layer_call_and_return_conditional_losses_11646134x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????4? : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????4? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
L
input_layer=
serving_default_input_layer:0?????????4?M
conv_transpose_49
StatefulPartitionedCall:0?????????4?tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer_with_weights-12
layer-19
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance"
_tf_keras_layer
?
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias
 Z_jit_compiled_convolution_op"
_tf_keras_layer
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance"
_tf_keras_layer
?
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op"
_tf_keras_layer
?
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
$0
%1
.2
/3
04
15
>6
?7
H8
I9
J10
K11
X12
Y13
b14
c15
d16
e17
r18
s19
|20
}21
~22
23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37"
trackable_list_wrapper
?
$0
%1
.2
/3
>4
?5
H6
I7
X8
Y9
b10
c11
r12
s13
|14
}15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
(__inference_model_layer_call_fn_11646336
(__inference_model_layer_call_fn_11647112
(__inference_model_layer_call_fn_11647193
(__inference_model_layer_call_fn_11646744?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
C__inference_model_layer_call_and_return_conditional_losses_11647382
C__inference_model_layer_call_and_return_conditional_losses_11647571
C__inference_model_layer_call_and_return_conditional_losses_11646843
C__inference_model_layer_call_and_return_conditional_losses_11646942?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
#__inference__wrapped_model_11645524input_layer"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate$m?%m?.m?/m?>m??m?Hm?Im?Xm?Ym?bm?cm?rm?sm?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?$v?%v?.v?/v?>v??v?Hv?Iv?Xv?Yv?bv?cv?rv?sv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv_1_layer_call_fn_11647580?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv_1_layer_call_and_return_conditional_losses_11647590?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
':% 2conv_1/kernel
: 2conv_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_1_layer_call_fn_11647603
.__inference_batchnorm_1_layer_call_fn_11647616?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647634
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647652?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
: 2batchnorm_1/gamma
: 2batchnorm_1/beta
':%  (2batchnorm_1/moving_mean
+:)  (2batchnorm_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_1_layer_call_fn_11647657?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11647662?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv_2_layer_call_fn_11647671?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv_2_layer_call_and_return_conditional_losses_11647681?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
':% @2conv_2/kernel
:@2conv_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
H0
I1
J2
K3"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_2_layer_call_fn_11647694
.__inference_batchnorm_2_layer_call_fn_11647707?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647725
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647743?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
:@2batchnorm_2/gamma
:@2batchnorm_2/beta
':%@ (2batchnorm_2/moving_mean
+:)@ (2batchnorm_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_2_layer_call_fn_11647748?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11647753?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_conv_3_layer_call_fn_11647762?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_conv_3_layer_call_and_return_conditional_losses_11647772?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
':%@@2conv_3/kernel
:@2conv_3/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
b0
c1
d2
e3"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_3_layer_call_fn_11647785
.__inference_batchnorm_3_layer_call_fn_11647798?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647816
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647834?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
:@2batchnorm_3/gamma
:@2batchnorm_3/beta
':%@ (2batchnorm_3/moving_mean
+:)@ (2batchnorm_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_3_layer_call_fn_11647839?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11647844?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv_transpose_1_layer_call_fn_11647853?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11647886?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
1:/@@2conv_transpose_1/kernel
#:!@2conv_transpose_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
|0
}1
~2
3"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_4_layer_call_fn_11647899
.__inference_batchnorm_4_layer_call_fn_11647912?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647930
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647948?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
:@2batchnorm_4/gamma
:@2batchnorm_4/beta
':%@ (2batchnorm_4/moving_mean
+:)@ (2batchnorm_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_4_layer_call_fn_11647953?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11647958?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv_transpose_2_layer_call_fn_11647967?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11648000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
1:/@@2conv_transpose_2/kernel
#:!@2conv_transpose_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_5_layer_call_fn_11648013
.__inference_batchnorm_5_layer_call_fn_11648026?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648044
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648062?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
:@2batchnorm_5/gamma
:@2batchnorm_5/beta
':%@ (2batchnorm_5/moving_mean
+:)@ (2batchnorm_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_5_layer_call_fn_11648067?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11648072?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv_transpose_3_layer_call_fn_11648081?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11648114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
1:/ @2conv_transpose_3/kernel
#:! 2conv_transpose_3/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
.__inference_batchnorm_6_layer_call_fn_11648127
.__inference_batchnorm_6_layer_call_fn_11648140?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648158
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648176?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
: 2batchnorm_6/gamma
: 2batchnorm_6/beta
':%  (2batchnorm_6/moving_mean
+:)  (2batchnorm_6/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_leaky_relu_6_layer_call_fn_11648181?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11648186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
3__inference_conv_transpose_4_layer_call_fn_11648195?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11648229?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
1:/ 2conv_transpose_4/kernel
#:!2conv_transpose_4/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
z
00
11
J2
K3
d4
e5
~6
7
?8
?9
?10
?11"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_model_layer_call_fn_11646336input_layer"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_layer_call_fn_11647112inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_layer_call_fn_11647193inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_model_layer_call_fn_11646744input_layer"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_layer_call_and_return_conditional_losses_11647382inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_layer_call_and_return_conditional_losses_11647571inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_layer_call_and_return_conditional_losses_11646843input_layer"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_model_layer_call_and_return_conditional_losses_11646942input_layer"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
&__inference_signature_wrapper_11647031input_layer"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv_1_layer_call_fn_11647580inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv_1_layer_call_and_return_conditional_losses_11647590inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_1_layer_call_fn_11647603inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_1_layer_call_fn_11647616inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647634inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647652inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_1_layer_call_fn_11647657inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11647662inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv_2_layer_call_fn_11647671inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv_2_layer_call_and_return_conditional_losses_11647681inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_2_layer_call_fn_11647694inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_2_layer_call_fn_11647707inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647725inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647743inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_2_layer_call_fn_11647748inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11647753inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_conv_3_layer_call_fn_11647762inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_conv_3_layer_call_and_return_conditional_losses_11647772inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_3_layer_call_fn_11647785inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_3_layer_call_fn_11647798inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647816inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647834inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_3_layer_call_fn_11647839inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11647844inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv_transpose_1_layer_call_fn_11647853inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11647886inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_4_layer_call_fn_11647899inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_4_layer_call_fn_11647912inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647930inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647948inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_4_layer_call_fn_11647953inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11647958inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv_transpose_2_layer_call_fn_11647967inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11648000inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_5_layer_call_fn_11648013inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_5_layer_call_fn_11648026inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648044inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648062inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_5_layer_call_fn_11648067inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11648072inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv_transpose_3_layer_call_fn_11648081inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11648114inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_batchnorm_6_layer_call_fn_11648127inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
.__inference_batchnorm_6_layer_call_fn_11648140inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648158inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648176inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
/__inference_leaky_relu_6_layer_call_fn_11648181inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11648186inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
3__inference_conv_transpose_4_layer_call_fn_11648195inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11648229inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
,:* 2Adam/conv_1/kernel/m
: 2Adam/conv_1/bias/m
$:" 2Adam/batchnorm_1/gamma/m
#:! 2Adam/batchnorm_1/beta/m
,:* @2Adam/conv_2/kernel/m
:@2Adam/conv_2/bias/m
$:"@2Adam/batchnorm_2/gamma/m
#:!@2Adam/batchnorm_2/beta/m
,:*@@2Adam/conv_3/kernel/m
:@2Adam/conv_3/bias/m
$:"@2Adam/batchnorm_3/gamma/m
#:!@2Adam/batchnorm_3/beta/m
6:4@@2Adam/conv_transpose_1/kernel/m
(:&@2Adam/conv_transpose_1/bias/m
$:"@2Adam/batchnorm_4/gamma/m
#:!@2Adam/batchnorm_4/beta/m
6:4@@2Adam/conv_transpose_2/kernel/m
(:&@2Adam/conv_transpose_2/bias/m
$:"@2Adam/batchnorm_5/gamma/m
#:!@2Adam/batchnorm_5/beta/m
6:4 @2Adam/conv_transpose_3/kernel/m
(:& 2Adam/conv_transpose_3/bias/m
$:" 2Adam/batchnorm_6/gamma/m
#:! 2Adam/batchnorm_6/beta/m
6:4 2Adam/conv_transpose_4/kernel/m
(:&2Adam/conv_transpose_4/bias/m
,:* 2Adam/conv_1/kernel/v
: 2Adam/conv_1/bias/v
$:" 2Adam/batchnorm_1/gamma/v
#:! 2Adam/batchnorm_1/beta/v
,:* @2Adam/conv_2/kernel/v
:@2Adam/conv_2/bias/v
$:"@2Adam/batchnorm_2/gamma/v
#:!@2Adam/batchnorm_2/beta/v
,:*@@2Adam/conv_3/kernel/v
:@2Adam/conv_3/bias/v
$:"@2Adam/batchnorm_3/gamma/v
#:!@2Adam/batchnorm_3/beta/v
6:4@@2Adam/conv_transpose_1/kernel/v
(:&@2Adam/conv_transpose_1/bias/v
$:"@2Adam/batchnorm_4/gamma/v
#:!@2Adam/batchnorm_4/beta/v
6:4@@2Adam/conv_transpose_2/kernel/v
(:&@2Adam/conv_transpose_2/bias/v
$:"@2Adam/batchnorm_5/gamma/v
#:!@2Adam/batchnorm_5/beta/v
6:4 @2Adam/conv_transpose_3/kernel/v
(:& 2Adam/conv_transpose_3/bias/v
$:" 2Adam/batchnorm_6/gamma/v
#:! 2Adam/batchnorm_6/beta/v
6:4 2Adam/conv_transpose_4/kernel/v
(:&2Adam/conv_transpose_4/bias/v?
#__inference__wrapped_model_11645524?4$%./01>?HIJKXYbcders|}~??????????????=?:
3?0
.?+
input_layer?????????4?
? "L?I
G
conv_transpose_43?0
conv_transpose_4?????????4??
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647634?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
I__inference_batchnorm_1_layer_call_and_return_conditional_losses_11647652?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
.__inference_batchnorm_1_layer_call_fn_11647603?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
.__inference_batchnorm_1_layer_call_fn_11647616?./01M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647725?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
I__inference_batchnorm_2_layer_call_and_return_conditional_losses_11647743?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
.__inference_batchnorm_2_layer_call_fn_11647694?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
.__inference_batchnorm_2_layer_call_fn_11647707?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647816?bcdeM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
I__inference_batchnorm_3_layer_call_and_return_conditional_losses_11647834?bcdeM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
.__inference_batchnorm_3_layer_call_fn_11647785?bcdeM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
.__inference_batchnorm_3_layer_call_fn_11647798?bcdeM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647930?|}~M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
I__inference_batchnorm_4_layer_call_and_return_conditional_losses_11647948?|}~M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
.__inference_batchnorm_4_layer_call_fn_11647899?|}~M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
.__inference_batchnorm_4_layer_call_fn_11647912?|}~M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648044?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
I__inference_batchnorm_5_layer_call_and_return_conditional_losses_11648062?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
.__inference_batchnorm_5_layer_call_fn_11648013?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
.__inference_batchnorm_5_layer_call_fn_11648026?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648158?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
I__inference_batchnorm_6_layer_call_and_return_conditional_losses_11648176?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
.__inference_batchnorm_6_layer_call_fn_11648127?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
.__inference_batchnorm_6_layer_call_fn_11648140?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
D__inference_conv_1_layer_call_and_return_conditional_losses_11647590n$%8?5
.?+
)?&
inputs?????????4?
? ".?+
$?!
0?????????4? 
? ?
)__inference_conv_1_layer_call_fn_11647580a$%8?5
.?+
)?&
inputs?????????4?
? "!??????????4? ?
D__inference_conv_2_layer_call_and_return_conditional_losses_11647681n>?8?5
.?+
)?&
inputs?????????4? 
? ".?+
$?!
0??????????@
? ?
)__inference_conv_2_layer_call_fn_11647671a>?8?5
.?+
)?&
inputs?????????4? 
? "!???????????@?
D__inference_conv_3_layer_call_and_return_conditional_losses_11647772mXY8?5
.?+
)?&
inputs??????????@
? "-?*
#? 
0?????????I@
? ?
)__inference_conv_3_layer_call_fn_11647762`XY8?5
.?+
)?&
inputs??????????@
? " ??????????I@?
N__inference_conv_transpose_1_layer_call_and_return_conditional_losses_11647886?rsI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_conv_transpose_1_layer_call_fn_11647853?rsI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
N__inference_conv_transpose_2_layer_call_and_return_conditional_losses_11648000???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_conv_transpose_2_layer_call_fn_11647967???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
N__inference_conv_transpose_3_layer_call_and_return_conditional_losses_11648114???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
3__inference_conv_transpose_3_layer_call_fn_11648081???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
N__inference_conv_transpose_4_layer_call_and_return_conditional_losses_11648229???I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
3__inference_conv_transpose_4_layer_call_fn_11648195???I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
J__inference_leaky_relu_1_layer_call_and_return_conditional_losses_11647662j8?5
.?+
)?&
inputs?????????4? 
? ".?+
$?!
0?????????4? 
? ?
/__inference_leaky_relu_1_layer_call_fn_11647657]8?5
.?+
)?&
inputs?????????4? 
? "!??????????4? ?
J__inference_leaky_relu_2_layer_call_and_return_conditional_losses_11647753j8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
/__inference_leaky_relu_2_layer_call_fn_11647748]8?5
.?+
)?&
inputs??????????@
? "!???????????@?
J__inference_leaky_relu_3_layer_call_and_return_conditional_losses_11647844h7?4
-?*
(?%
inputs?????????I@
? "-?*
#? 
0?????????I@
? ?
/__inference_leaky_relu_3_layer_call_fn_11647839[7?4
-?*
(?%
inputs?????????I@
? " ??????????I@?
J__inference_leaky_relu_4_layer_call_and_return_conditional_losses_11647958h7?4
-?*
(?%
inputs?????????I@
? "-?*
#? 
0?????????I@
? ?
/__inference_leaky_relu_4_layer_call_fn_11647953[7?4
-?*
(?%
inputs?????????I@
? " ??????????I@?
J__inference_leaky_relu_5_layer_call_and_return_conditional_losses_11648072j8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
/__inference_leaky_relu_5_layer_call_fn_11648067]8?5
.?+
)?&
inputs??????????@
? "!???????????@?
J__inference_leaky_relu_6_layer_call_and_return_conditional_losses_11648186j8?5
.?+
)?&
inputs?????????4? 
? ".?+
$?!
0?????????4? 
? ?
/__inference_leaky_relu_6_layer_call_fn_11648181]8?5
.?+
)?&
inputs?????????4? 
? "!??????????4? ?
C__inference_model_layer_call_and_return_conditional_losses_11646843?4$%./01>?HIJKXYbcders|}~??????????????E?B
;?8
.?+
input_layer?????????4?
p 

 
? ".?+
$?!
0?????????4?
? ?
C__inference_model_layer_call_and_return_conditional_losses_11646942?4$%./01>?HIJKXYbcders|}~??????????????E?B
;?8
.?+
input_layer?????????4?
p

 
? ".?+
$?!
0?????????4?
? ?
C__inference_model_layer_call_and_return_conditional_losses_11647382?4$%./01>?HIJKXYbcders|}~??????????????@?=
6?3
)?&
inputs?????????4?
p 

 
? ".?+
$?!
0?????????4?
? ?
C__inference_model_layer_call_and_return_conditional_losses_11647571?4$%./01>?HIJKXYbcders|}~??????????????@?=
6?3
)?&
inputs?????????4?
p

 
? ".?+
$?!
0?????????4?
? ?
(__inference_model_layer_call_fn_11646336?4$%./01>?HIJKXYbcders|}~??????????????E?B
;?8
.?+
input_layer?????????4?
p 

 
? "!??????????4??
(__inference_model_layer_call_fn_11646744?4$%./01>?HIJKXYbcders|}~??????????????E?B
;?8
.?+
input_layer?????????4?
p

 
? "!??????????4??
(__inference_model_layer_call_fn_11647112?4$%./01>?HIJKXYbcders|}~??????????????@?=
6?3
)?&
inputs?????????4?
p 

 
? "!??????????4??
(__inference_model_layer_call_fn_11647193?4$%./01>?HIJKXYbcders|}~??????????????@?=
6?3
)?&
inputs?????????4?
p

 
? "!??????????4??
&__inference_signature_wrapper_11647031?4$%./01>?HIJKXYbcders|}~??????????????L?I
? 
B??
=
input_layer.?+
input_layer?????????4?"L?I
G
conv_transpose_43?0
conv_transpose_4?????????4?