��*
�'�'
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��%

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	�*
dtype0
�
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_namegru/gru_cell/recurrent_kernel
�
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?�*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	?�*
dtype0
�
dense_3/p_re_lu_3/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4**(
shared_namedense_3/p_re_lu_3/alpha
�
+dense_3/p_re_lu_3/alpha/Read/ReadVariableOpReadVariableOpdense_3/p_re_lu_3/alpha*
_output_shapes

:4**
dtype0
�
dense_2/p_re_lu_2/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T*(
shared_namedense_2/p_re_lu_2/alpha
�
+dense_2/p_re_lu_2/alpha/Read/ReadVariableOpReadVariableOpdense_2/p_re_lu_2/alpha*
_output_shapes

:T*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:*
dtype0
x
processed_x/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameprocessed_x/bias
q
$processed_x/bias/Read/ReadVariableOpReadVariableOpprocessed_x/bias*
_output_shapes
:*
dtype0
�
processed_x/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameprocessed_x/kernel
~
&processed_x/kernel/Read/ReadVariableOpReadVariableOpprocessed_x/kernel*#
_output_shapes
:�*
dtype0
�
decoder_x_embed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namedecoder_x_embed/bias
y
(decoder_x_embed/bias/Read/ReadVariableOpReadVariableOpdecoder_x_embed/bias*
_output_shapes
:*
dtype0
�
decoder_x_embed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namedecoder_x_embed/kernel
�
*decoder_x_embed/kernel/Read/ReadVariableOpReadVariableOpdecoder_x_embed/kernel*"
_output_shapes
:*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�	*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:�	*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��	*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
��	*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:**
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:***
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:***
dtype0
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:**6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:**
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:**2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:**
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:**
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:**
dtype0
�
conv1d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T**
shared_nameconv1d_transpose_1/kernel
�
-conv1d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_transpose_1/kernel*"
_output_shapes
:*T*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:T*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:TT*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:TT*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:T*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:T*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:T*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:T*
dtype0
�
conv1d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:T�*(
shared_nameconv1d_transpose/kernel
�
+conv1d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv1d_transpose/kernel*#
_output_shapes
:T�*
dtype0
}
upsampler_mlp/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameupsampler_mlp/bias
v
&upsampler_mlp/bias/Read/ReadVariableOpReadVariableOpupsampler_mlp/bias*
_output_shapes	
:�*
dtype0
�
upsampler_mlp/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_nameupsampler_mlp/kernel
~
(upsampler_mlp/kernel/Read/ReadVariableOpReadVariableOpupsampler_mlp/kernel*
_output_shapes
:	�*
dtype0

serving_default_latent_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
serving_default_protein_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_latent_inputserving_default_protein_inputupsampler_mlp/kernelupsampler_mlp/biasconv1d_transpose/kernel%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betadense_2/kerneldense_2/biasdense_2/p_re_lu_2/alphaconv1d_transpose_1/kernel%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense_3/kerneldense_3/biasdense_3/p_re_lu_3/alphadense_4/kerneldense_4/biasdecoder_x_embed/kerneldecoder_x_embed/biasgru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelprocessed_x/kernelprocessed_x/biasdense_5/kerneldense_5/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*?
_read_only_resource_inputs!
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_10449

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ӊ
valueȊBĊ B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
 3_jit_compiled_convolution_op*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance*
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E
activation

Fkernel
Gbias*
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
 O_jit_compiled_convolution_op*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance*
* 
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a
activation

bkernel
cbias*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias*
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
$0
%1
22
;3
<4
=5
>6
F7
G8
�9
N10
W11
X12
Y13
Z14
b15
c16
�17
|18
}19
�20
�21
�22
�23
�24
�25
�26
�27
�28*
�
$0
%1
22
;3
<4
F5
G6
�7
N8
W9
X10
b11
c12
�13
|14
}15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 

�serving_default* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEupsampler_mlp/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEupsampler_mlp/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

20*

20*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ga
VARIABLE_VALUEconv1d_transpose/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
;0
<1
=2
>3*

;0
<1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1
�2*

F0
G1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�alpha*
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0*

N0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ic
VARIABLE_VALUEconv1d_transpose_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
W0
X1
Y2
Z3*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1
�2*

b0
c1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�alpha*
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

|0
}1*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
f`
VARIABLE_VALUEdecoder_x_embed/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEdecoder_x_embed/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1
�2*

�0
�1
�2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�kernel
�recurrent_kernel
	�bias*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
c]
VARIABLE_VALUEprocessed_x/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEprocessed_x/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEdense_2/p_re_lu_2/alpha&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEdense_3/p_re_lu_3/alpha'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEgru/gru_cell/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEgru/gru_cell/recurrent_kernel'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEgru/gru_cell/bias'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
 
=0
>1
Y2
Z3*
�
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
19
20*
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
=0
>1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

E0*
* 
* 
* 
* 
* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 
* 

Y0
Z1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

a0*
* 
* 
* 
* 
* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
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

�0*
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

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(upsampler_mlp/kernel/Read/ReadVariableOp&upsampler_mlp/bias/Read/ReadVariableOp+conv1d_transpose/kernel/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp-conv1d_transpose_1/kernel/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp*decoder_x_embed/kernel/Read/ReadVariableOp(decoder_x_embed/bias/Read/ReadVariableOp&processed_x/kernel/Read/ReadVariableOp$processed_x/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp+dense_2/p_re_lu_2/alpha/Read/ReadVariableOp+dense_3/p_re_lu_3/alpha/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOpConst**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_12835
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameupsampler_mlp/kernelupsampler_mlp/biasconv1d_transpose/kernelbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_2/kerneldense_2/biasconv1d_transpose_1/kernelbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdecoder_x_embed/kerneldecoder_x_embed/biasprocessed_x/kernelprocessed_x/biasdense_5/kerneldense_5/biasdense_2/p_re_lu_2/alphadense_3/p_re_lu_3/alphagru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/bias*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_12932��#
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_11812

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������"!

identity_1Identity_1:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_10927
inputs_0
inputs_1K
8upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel:	�F
7upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias:	�l
Uconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel:T�b
Tbatch_normalization_2_batchnorm_readvariableop_batch_normalization_2_moving_variance:T\
Nbatch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma:T`
Rbatch_normalization_2_batchnorm_readvariableop_1_batch_normalization_2_moving_mean:TY
Kbatch_normalization_2_batchnorm_readvariableop_2_batch_normalization_2_beta:TA
/dense_2_tensordot_readvariableop_dense_2_kernel:TT9
+dense_2_biasadd_readvariableop_dense_2_bias:TJ
8dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha:To
Yconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:*Tb
Tbatch_normalization_3_batchnorm_readvariableop_batch_normalization_3_moving_variance:*\
Nbatch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma:*`
Rbatch_normalization_3_batchnorm_readvariableop_1_batch_normalization_3_moving_mean:*Y
Kbatch_normalization_3_batchnorm_readvariableop_2_batch_normalization_3_beta:*A
/dense_3_tensordot_readvariableop_dense_3_kernel:**9
+dense_3_biasadd_readvariableop_dense_3_bias:*J
8dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha:4*@
,dense_4_matmul_readvariableop_dense_4_kernel:
��	:
+dense_4_biasadd_readvariableop_dense_4_bias:	�	_
Idecoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel:I
;decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias:@
-gru_gru_cell_readvariableop_gru_gru_cell_bias:	�I
6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�V
Bgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��X
Aprocessed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel:�A
3processed_x_biasadd_readvariableop_processed_x_bias:A
/dense_5_tensordot_readvariableop_dense_5_kernel:9
+dense_5_biasadd_readvariableop_dense_5_bias:
identity��.batch_normalization_2/batchnorm/ReadVariableOp�0batch_normalization_2/batchnorm/ReadVariableOp_1�0batch_normalization_2/batchnorm/ReadVariableOp_2�2batch_normalization_2/batchnorm/mul/ReadVariableOp�.batch_normalization_3/batchnorm/ReadVariableOp�0batch_normalization_3/batchnorm/ReadVariableOp_1�0batch_normalization_3/batchnorm/ReadVariableOp_2�2batch_normalization_3/batchnorm/mul/ReadVariableOp�=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp�?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp�&decoder_x_embed/BiasAdd/ReadVariableOp�2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp� dense_2/p_re_lu_2/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp� dense_3/p_re_lu_3/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�"gru/gru_cell/MatMul/ReadVariableOp�$gru/gru_cell/MatMul_1/ReadVariableOp�gru/gru_cell/ReadVariableOp�	gru/while�"processed_x/BiasAdd/ReadVariableOp�.processed_x/Conv1D/ExpandDims_1/ReadVariableOp�$upsampler_mlp/BiasAdd/ReadVariableOp�#upsampler_mlp/MatMul/ReadVariableOp�
#upsampler_mlp/MatMul/ReadVariableOpReadVariableOp8upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel*
_output_shapes
:	�*
dtype0�
upsampler_mlp/MatMulMatMulinputs_0+upsampler_mlp/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$upsampler_mlp/BiasAdd/ReadVariableOpReadVariableOp7upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias*
_output_shapes	
:�*
dtype0�
upsampler_mlp/BiasAddBiasAddupsampler_mlp/MatMul:product:0,upsampler_mlp/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
reshape/ShapeShapeupsampler_mlp/BiasAdd:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapeupsampler_mlp/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������^
conv1d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :T�
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDimsreshape/Reshape:output:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpUconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*#
_output_shapes
:T�*
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:T�
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������T*
paddingSAME*
strides
�
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������T*
squeeze_dims
�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpTbatch_normalization_2_batchnorm_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:T|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:T�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpNbatch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T�
%batch_normalization_2/batchnorm/mul_1Mul2conv1d_transpose/conv1d_transpose/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������T�
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpRbatch_normalization_2_batchnorm_readvariableop_1_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0�
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:T�
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpKbatch_normalization_2_batchnorm_readvariableop_2_batch_normalization_2_beta*
_output_shapes
:T*
dtype0�
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������T�
 dense_2/Tensordot/ReadVariableOpReadVariableOp/dense_2_tensordot_readvariableop_dense_2_kernel*
_output_shapes

:TT*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)batch_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transpose)batch_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������T�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Tc
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ta
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������T�
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:T*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Tn
dense_2/p_re_lu_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������T�
 dense_2/p_re_lu_2/ReadVariableOpReadVariableOp8dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0o
dense_2/p_re_lu_2/NegNeg(dense_2/p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes

:Tn
dense_2/p_re_lu_2/Neg_1Negdense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������Ts
dense_2/p_re_lu_2/Relu_1Reludense_2/p_re_lu_2/Neg_1:y:0*
T0*+
_output_shapes
:���������T�
dense_2/p_re_lu_2/mulMuldense_2/p_re_lu_2/Neg:y:0&dense_2/p_re_lu_2/Relu_1:activations:0*
T0*+
_output_shapes
:���������T�
dense_2/p_re_lu_2/addAddV2$dense_2/p_re_lu_2/Relu:activations:0dense_2/p_re_lu_2/mul:z:0*
T0*+
_output_shapes
:���������Ta
conv1d_transpose_1/ShapeShapedense_2/p_re_lu_2/add:z:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :*�
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/mul:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDimsdense_2/p_re_lu_2/add:z:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������T�
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpYconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*T*
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:*T�
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������4**
paddingSAME*
strides
�
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������4**
squeeze_dims
�
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpTbatch_normalization_3_batchnorm_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:*|
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:*�
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpNbatch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0�
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*�
%batch_normalization_3/batchnorm/mul_1Mul4conv1d_transpose_1/conv1d_transpose/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������4*�
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpRbatch_normalization_3_batchnorm_readvariableop_1_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0�
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:*�
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpKbatch_normalization_3_batchnorm_readvariableop_2_batch_normalization_3_beta*
_output_shapes
:**
dtype0�
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:*�
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������4*�
zero_padding1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       
zero_padding1d/PadPadinputs_1$zero_padding1d/Pad/paddings:output:0*
T0*+
_output_shapes
:����������
 dense_3/Tensordot/ReadVariableOpReadVariableOp/dense_3_tensordot_readvariableop_dense_3_kernel*
_output_shapes

:***
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)batch_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)batch_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������4*�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:*a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������4*�
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:**
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������4*n
dense_3/p_re_lu_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
 dense_3/p_re_lu_3/ReadVariableOpReadVariableOp8dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0o
dense_3/p_re_lu_3/NegNeg(dense_3/p_re_lu_3/ReadVariableOp:value:0*
T0*
_output_shapes

:4*n
dense_3/p_re_lu_3/Neg_1Negdense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*s
dense_3/p_re_lu_3/Relu_1Reludense_3/p_re_lu_3/Neg_1:y:0*
T0*+
_output_shapes
:���������4*�
dense_3/p_re_lu_3/mulMuldense_3/p_re_lu_3/Neg:y:0&dense_3/p_re_lu_3/Relu_1:activations:0*
T0*+
_output_shapes
:���������4*�
dense_3/p_re_lu_3/addAddV2$dense_3/p_re_lu_3/Relu:activations:0dense_3/p_re_lu_3/mul:z:0*
T0*+
_output_shapes
:���������4*q
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_1/strided_sliceStridedSlicezero_padding1d/Pad:output:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshapedense_3/p_re_lu_3/add:z:0flatten/Const:output:0*
T0*(
_output_shapes
:����������s
dropout/IdentityIdentitylambda_1/strided_slice:output:0*
T0*+
_output_shapes
:����������
dense_4/MatMul/ReadVariableOpReadVariableOp,dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
��	*
dtype0�
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	�
dense_4/BiasAdd/ReadVariableOpReadVariableOp+dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:�	*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	`
Reshaped_upsampled/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:p
&Reshaped_upsampled/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Reshaped_upsampled/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Reshaped_upsampled/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 Reshaped_upsampled/strided_sliceStridedSlice!Reshaped_upsampled/Shape:output:0/Reshaped_upsampled/strided_slice/stack:output:01Reshaped_upsampled/strided_slice/stack_1:output:01Reshaped_upsampled/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Reshaped_upsampled/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"Reshaped_upsampled/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :*�
 Reshaped_upsampled/Reshape/shapePack)Reshaped_upsampled/strided_slice:output:0+Reshaped_upsampled/Reshape/shape/1:output:0+Reshaped_upsampled/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
Reshaped_upsampled/ReshapeReshapedense_4/BiasAdd:output:0)Reshaped_upsampled/Reshape/shape:output:0*
T0*+
_output_shapes
:���������*p
%decoder_x_embed/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
!decoder_x_embed/Conv1D/ExpandDims
ExpandDimsdropout/Identity:output:0.decoder_x_embed/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIdecoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel*"
_output_shapes
:*
dtype0i
'decoder_x_embed/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
#decoder_x_embed/Conv1D/ExpandDims_1
ExpandDims:decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp:value:00decoder_x_embed/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
decoder_x_embed/Conv1DConv2D*decoder_x_embed/Conv1D/ExpandDims:output:0,decoder_x_embed/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
decoder_x_embed/Conv1D/SqueezeSqueezedecoder_x_embed/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
&decoder_x_embed/BiasAdd/ReadVariableOpReadVariableOp;decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias*
_output_shapes
:*
dtype0�
decoder_x_embed/BiasAddBiasAdd'decoder_x_embed/Conv1D/Squeeze:output:0.decoder_x_embed/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z
concatinated/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatinated/concatConcatV2#Reshaped_upsampled/Reshape:output:0 decoder_x_embed/BiasAdd:output:0!concatinated/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������?U
	gru/ShapeShapeconcatinated/concat:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:����������g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gru/transpose	Transposeconcatinated/concat:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:���������?L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru/gru_cell/ReadVariableOpReadVariableOp-gru_gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOpBgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������h
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������l
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������d
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������z
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:����������W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������y
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0-gru_gru_cell_readvariableop_gru_gru_cell_bias6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernelBgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( * 
bodyR
gru_while_body_10800* 
condR
gru_while_cond_10799*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
!processed_x/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
processed_x/Conv1D/ExpandDims
ExpandDimsgru/transpose_1:y:0*processed_x/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
.processed_x/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAprocessed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel*#
_output_shapes
:�*
dtype0e
#processed_x/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
processed_x/Conv1D/ExpandDims_1
ExpandDims6processed_x/Conv1D/ExpandDims_1/ReadVariableOp:value:0,processed_x/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
processed_x/Conv1DConv2D&processed_x/Conv1D/ExpandDims:output:0(processed_x/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
processed_x/Conv1D/SqueezeSqueezeprocessed_x/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
"processed_x/BiasAdd/ReadVariableOpReadVariableOp3processed_x_biasadd_readvariableop_processed_x_bias*
_output_shapes
:*
dtype0�
processed_x/BiasAddBiasAdd#processed_x/Conv1D/Squeeze:output:0*processed_x/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
 dense_5/Tensordot/ReadVariableOpReadVariableOp/dense_5_tensordot_readvariableop_dense_5_kernel*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_5/Tensordot/ShapeShapeprocessed_x/BiasAdd:output:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposeprocessed_x/BiasAdd:output:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp+dense_5_biasadd_readvariableop_dense_5_bias*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������j
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*+
_output_shapes
:���������l
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:����������

NoOpNoOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp'^decoder_x_embed/BiasAdd/ReadVariableOp3^decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp!^dense_2/p_re_lu_2/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp!^dense_3/p_re_lu_3/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while#^processed_x/BiasAdd/ReadVariableOp/^processed_x/Conv1D/ExpandDims_1/ReadVariableOp%^upsampler_mlp/BiasAdd/ReadVariableOp$^upsampler_mlp/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2�
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2P
&decoder_x_embed/BiasAdd/ReadVariableOp&decoder_x_embed/BiasAdd/ReadVariableOp2h
2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2D
 dense_2/p_re_lu_2/ReadVariableOp dense_2/p_re_lu_2/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2D
 dense_3/p_re_lu_3/ReadVariableOp dense_3/p_re_lu_3/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while2H
"processed_x/BiasAdd/ReadVariableOp"processed_x/BiasAdd/ReadVariableOp2`
.processed_x/Conv1D/ExpandDims_1/ReadVariableOp.processed_x/Conv1D/ExpandDims_1/ReadVariableOp2L
$upsampler_mlp/BiasAdd/ReadVariableOp$upsampler_mlp/BiasAdd/ReadVariableOp2J
#upsampler_mlp/MatMul/ReadVariableOp#upsampler_mlp/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
'__inference_dense_3_layer_call_fn_11694

inputs 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_kerneldense_3_biasdense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_8868s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������4*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������4*: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
�
�

#__inference_signature_wrapper_10449
latent_input
protein_input'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�.
conv1d_transpose_kernel:T�3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T/
!batch_normalization_2_moving_mean:T(
batch_normalization_2_beta:T 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T/
conv1d_transpose_1_kernel:*T3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*/
!batch_normalization_3_moving_mean:*(
batch_normalization_3_beta:* 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*"
dense_4_kernel:
��	
dense_4_bias:	�	,
decoder_x_embed_kernel:"
decoder_x_embed_bias:$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��)
processed_x_kernel:�
processed_x_bias: 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllatent_inputprotein_inputupsampler_mlp_kernelupsampler_mlp_biasconv1d_transpose_kernel%batch_normalization_2_moving_variancebatch_normalization_2_gamma!batch_normalization_2_moving_meanbatch_normalization_2_betadense_2_kerneldense_2_biasdense_2_p_re_lu_2_alphaconv1d_transpose_1_kernel%batch_normalization_3_moving_variancebatch_normalization_3_gamma!batch_normalization_3_moving_meanbatch_normalization_3_betadense_3_kerneldense_3_biasdense_3_p_re_lu_3_alphadense_4_kerneldense_4_biasdecoder_x_embed_kerneldecoder_x_embed_biasgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernelprocessed_x_kernelprocessed_x_biasdense_5_kerneldense_5_bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*?
_read_only_resource_inputs!
	
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_7649s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�
s
G__inference_concatinated_layer_call_and_return_conditional_losses_11884
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :{
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*+
_output_shapes
:���������?[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:���������?"
identityIdentity:output:0*A
_input_shapes0
.:���������*:���������:U Q
+
_output_shapes
:���������*
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�
while_cond_8472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_8472___redundant_placeholder02
.while_while_cond_8472___redundant_placeholder12
.while_while_cond_8472___redundant_placeholder22
.while_while_cond_8472___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_9892

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_gru_cell_layer_call_and_return_conditional_losses_8349

inputs

states3
 readvariableop_gru_gru_cell_bias:	�<
)matmul_readvariableop_gru_gru_cell_kernel:	?�I
5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpp
ReadVariableOpReadVariableOp readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
MatMul/ReadVariableOpReadVariableOp)matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
MatMul_1/ReadVariableOpReadVariableOp5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:����������c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:����������R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:����������Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:����������J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:����������T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:����������W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�
�
B__inference_gru_cell_layer_call_and_return_conditional_losses_8218

inputs

states3
 readvariableop_gru_gru_cell_bias:	�<
)matmul_readvariableop_gru_gru_cell_kernel:	?�I
5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpp
ReadVariableOpReadVariableOp readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
MatMul/ReadVariableOpReadVariableOp)matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
MatMul_1/ReadVariableOpReadVariableOp5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:����������c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:����������R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:����������Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:����������J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:����������T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:����������W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�4
�
=__inference_gru_layer_call_and_return_conditional_losses_8534

inputs-
gru_cell_gru_gru_cell_bias:	�/
gru_cell_gru_gru_cell_kernel:	?�:
&gru_cell_gru_gru_cell_recurrent_kernel:
��
identity�� gru_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_gru_gru_cell_biasgru_cell_gru_gru_cell_kernel&gru_cell_gru_gru_cell_recurrent_kernel*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8349n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_gru_gru_cell_biasgru_cell_gru_gru_cell_kernel&gru_cell_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8473*
condR
while_cond_8472*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_2_layer_call_fn_11472

inputs/
!batch_normalization_2_moving_mean:T3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T(
batch_normalization_2_beta:T
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs!batch_normalization_2_moving_mean%batch_normalization_2_moving_variancebatch_normalization_2_gammabatch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7796|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������T: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�
�
C__inference_gru_cell_layer_call_and_return_conditional_losses_12724

inputs
states_03
 readvariableop_gru_gru_cell_bias:	�<
)matmul_readvariableop_gru_gru_cell_kernel:	?�I
5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpp
ReadVariableOpReadVariableOp readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
MatMul/ReadVariableOpReadVariableOp)matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
MatMul_1/ReadVariableOpReadVariableOp5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:����������c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:����������R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:����������Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:����������J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:����������V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:����������W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:���������?:����������: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0
�~
�
!__inference__traced_restore_12932
file_prefix8
%assignvariableop_upsampler_mlp_kernel:	�4
%assignvariableop_1_upsampler_mlp_bias:	�A
*assignvariableop_2_conv1d_transpose_kernel:T�<
.assignvariableop_3_batch_normalization_2_gamma:T;
-assignvariableop_4_batch_normalization_2_beta:TB
4assignvariableop_5_batch_normalization_2_moving_mean:TF
8assignvariableop_6_batch_normalization_2_moving_variance:T3
!assignvariableop_7_dense_2_kernel:TT-
assignvariableop_8_dense_2_bias:TB
,assignvariableop_9_conv1d_transpose_1_kernel:*T=
/assignvariableop_10_batch_normalization_3_gamma:*<
.assignvariableop_11_batch_normalization_3_beta:*C
5assignvariableop_12_batch_normalization_3_moving_mean:*G
9assignvariableop_13_batch_normalization_3_moving_variance:*4
"assignvariableop_14_dense_3_kernel:**.
 assignvariableop_15_dense_3_bias:*6
"assignvariableop_16_dense_4_kernel:
��	/
 assignvariableop_17_dense_4_bias:	�	@
*assignvariableop_18_decoder_x_embed_kernel:6
(assignvariableop_19_decoder_x_embed_bias:=
&assignvariableop_20_processed_x_kernel:�2
$assignvariableop_21_processed_x_bias:4
"assignvariableop_22_dense_5_kernel:.
 assignvariableop_23_dense_5_bias:=
+assignvariableop_24_dense_2_p_re_lu_2_alpha:T=
+assignvariableop_25_dense_3_p_re_lu_3_alpha:4*:
'assignvariableop_26_gru_gru_cell_kernel:	?�E
1assignvariableop_27_gru_gru_cell_recurrent_kernel:
��8
%assignvariableop_28_gru_gru_cell_bias:	�
identity_30��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_upsampler_mlp_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp%assignvariableop_1_upsampler_mlp_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp*assignvariableop_2_conv1d_transpose_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_2_gammaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_2_betaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_2_moving_meanIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp8assignvariableop_6_batch_normalization_2_moving_varianceIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_2_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_2_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_conv1d_transpose_1_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_3_gammaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_batch_normalization_3_betaIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp5assignvariableop_12_batch_normalization_3_moving_meanIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp9assignvariableop_13_batch_normalization_3_moving_varianceIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_3_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_4_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_4_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_decoder_x_embed_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_decoder_x_embed_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_processed_x_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp$assignvariableop_21_processed_x_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_5_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_5_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_dense_2_p_re_lu_2_alphaIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp+assignvariableop_25_dense_3_p_re_lu_3_alphaIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_gru_gru_cell_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp1assignvariableop_27_gru_gru_cell_recurrent_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp%assignvariableop_28_gru_gru_cell_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�@
�
__inference__traced_save_12835
file_prefix3
/savev2_upsampler_mlp_kernel_read_readvariableop1
-savev2_upsampler_mlp_bias_read_readvariableop6
2savev2_conv1d_transpose_kernel_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop8
4savev2_conv1d_transpose_1_kernel_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop5
1savev2_decoder_x_embed_kernel_read_readvariableop3
/savev2_decoder_x_embed_bias_read_readvariableop1
-savev2_processed_x_kernel_read_readvariableop/
+savev2_processed_x_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop6
2savev2_dense_2_p_re_lu_2_alpha_read_readvariableop6
2savev2_dense_3_p_re_lu_3_alpha_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_upsampler_mlp_kernel_read_readvariableop-savev2_upsampler_mlp_bias_read_readvariableop2savev2_conv1d_transpose_kernel_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop4savev2_conv1d_transpose_1_kernel_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop1savev2_decoder_x_embed_kernel_read_readvariableop/savev2_decoder_x_embed_bias_read_readvariableop-savev2_processed_x_kernel_read_readvariableop+savev2_processed_x_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop2savev2_dense_2_p_re_lu_2_alpha_read_readvariableop2savev2_dense_3_p_re_lu_3_alpha_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *,
dtypes"
 2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:�:T�:T:T:T:T:TT:T:*T:*:*:*:*:**:*:
��	:�	:::�::::T:4*:	?�:
��:	�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:)%
#
_output_shapes
:T�: 

_output_shapes
:T: 

_output_shapes
:T: 

_output_shapes
:T: 

_output_shapes
:T:$ 

_output_shapes

:TT: 	

_output_shapes
:T:(
$
"
_output_shapes
:*T: 

_output_shapes
:*: 

_output_shapes
:*: 

_output_shapes
:*: 

_output_shapes
:*:$ 

_output_shapes

:**: 

_output_shapes
:*:&"
 
_output_shapes
:
��	:!

_output_shapes	
:�	:($
"
_output_shapes
:: 

_output_shapes
::)%
#
_output_shapes
:�: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:T:$ 

_output_shapes

:4*:%!

_output_shapes
:	?�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	�:

_output_shapes
: 
�
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_11780

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
(__inference_gru_cell_layer_call_fn_12635

inputs
states_0$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0gru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8218p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:���������?:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0
�
D
(__inference_lambda_1_layer_call_fn_11759

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_8881d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_12285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12285___redundant_placeholder03
/while_while_cond_12285___redundant_placeholder13
/while_while_cond_12285___redundant_placeholder23
/while_while_cond_12285___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�<
�
while_body_12133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�<
�
while_body_9335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
C
'__inference_dropout_layer_call_fn_11802

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8896d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�L
�
=__inference_gru_layer_call_and_return_conditional_losses_9424

inputs<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9335*
condR
while_cond_9334*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
C__inference_gru_cell_layer_call_and_return_conditional_losses_12685

inputs
states_03
 readvariableop_gru_gru_cell_bias:	�<
)matmul_readvariableop_gru_gru_cell_kernel:	?�I
5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpp
ReadVariableOpReadVariableOp readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
MatMul/ReadVariableOpReadVariableOp)matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
MatMul_1/ReadVariableOpReadVariableOp5matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:����������N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:����������c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:����������R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:����������^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:����������Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:����������J
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:����������V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:����������R
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:����������W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:���������?:����������: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0
�

�
C__inference_p_re_lu_3_layer_call_and_return_conditional_losses_8113

inputs8
&readvariableop_dense_3_p_re_lu_3_alpha:4*
identity��ReadVariableOp\
ReluReluinputs*
T0*=
_output_shapes+
):'���������������������������u
ReadVariableOpReadVariableOp&readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0K
NegNegReadVariableOp:value:0*
T0*
_output_shapes

:4*\
Neg_1Neginputs*
T0*=
_output_shapes+
):'���������������������������a
Relu_1Relu	Neg_1:y:0*
T0*=
_output_shapes+
):'���������������������������_
mulMulNeg:y:0Relu_1:activations:0*
T0*+
_output_shapes
:���������4*_
addAddV2Relu:activations:0mul:z:0*
T0*+
_output_shapes
:���������4*Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:���������4*W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:'���������������������������: 2 
ReadVariableOpReadVariableOp:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
X
,__inference_concatinated_layer_call_fn_11877
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatinated_layer_call_and_return_conditional_losses_8953d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������?"
identityIdentity:output:0*A
_input_shapes0
.:���������*:���������:U Q
+
_output_shapes
:���������*
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�

�
C__inference_p_re_lu_2_layer_call_and_return_conditional_losses_7873

inputs8
&readvariableop_dense_2_p_re_lu_2_alpha:T
identity��ReadVariableOp\
ReluReluinputs*
T0*=
_output_shapes+
):'���������������������������u
ReadVariableOpReadVariableOp&readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0K
NegNegReadVariableOp:value:0*
T0*
_output_shapes

:T\
Neg_1Neginputs*
T0*=
_output_shapes+
):'���������������������������a
Relu_1Relu	Neg_1:y:0*
T0*=
_output_shapes+
):'���������������������������_
mulMulNeg:y:0Relu_1:activations:0*
T0*+
_output_shapes
:���������T_
addAddV2Relu:activations:0mul:z:0*
T0*+
_output_shapes
:���������TZ
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:���������TW
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:'���������������������������: 2 
ReadVariableOpReadVariableOp:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�'
�
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_11614

inputs\
Fconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:*T
identity��,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
stack/2Const*
_output_shapes
: *
dtype0*
value	B :*n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������T�
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*T*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:*Tn
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"������������������**
paddingSAME*
strides
�
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :������������������**
squeeze_dims
}
IdentityIdentity!conv1d_transpose/Squeeze:output:0^NoOp*
T0*4
_output_shapes"
 :������������������*u
NoOpNoOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*5
_input_shapes$
":������������������T: 2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�'
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11686

inputsN
@assignmovingavg_readvariableop_batch_normalization_3_moving_mean:*T
Fassignmovingavg_1_readvariableop_batch_normalization_3_moving_variance:*F
8batchnorm_mul_readvariableop_batch_normalization_3_gamma:*A
3batchnorm_readvariableop_batch_normalization_3_beta:*
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:*�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������*s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:**
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:**
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp@assignmovingavg_readvariableop_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:*x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:*�
AssignMovingAvgAssignSubVariableOp@assignmovingavg_readvariableop_batch_normalization_3_moving_meanAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpFassignmovingavg_1_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:*~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:*�
AssignMovingAvg_1AssignSubVariableOpFassignmovingavg_1_readvariableop_batch_normalization_3_moving_varianceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:*P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:*�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������*h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:*�
batchnorm/ReadVariableOpReadVariableOp3batchnorm_readvariableop_batch_normalization_3_beta*
_output_shapes
:**
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:*
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������*o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������*�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������*: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�
�

&__inference_model_1_layer_call_fn_9199
latent_input
protein_input'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�.
conv1d_transpose_kernel:T�3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T/
!batch_normalization_2_moving_mean:T(
batch_normalization_2_beta:T 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T/
conv1d_transpose_1_kernel:*T3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*/
!batch_normalization_3_moving_mean:*(
batch_normalization_3_beta:* 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*"
dense_4_kernel:
��	
dense_4_bias:	�	,
decoder_x_embed_kernel:"
decoder_x_embed_bias:$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��)
processed_x_kernel:�
processed_x_bias: 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllatent_inputprotein_inputupsampler_mlp_kernelupsampler_mlp_biasconv1d_transpose_kernel%batch_normalization_2_moving_variancebatch_normalization_2_gamma!batch_normalization_2_moving_meanbatch_normalization_2_betadense_2_kerneldense_2_biasdense_2_p_re_lu_2_alphaconv1d_transpose_1_kernel%batch_normalization_3_moving_variancebatch_normalization_3_gamma!batch_normalization_3_moving_meanbatch_normalization_3_betadense_3_kerneldense_3_biasdense_3_p_re_lu_3_alphadense_4_kerneldense_4_biasdecoder_x_embed_kerneldecoder_x_embed_biasgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernelprocessed_x_kernelprocessed_x_biasdense_5_kerneldense_5_bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*?
_read_only_resource_inputs!
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_9167s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�

]
A__inference_reshape_layer_call_and_return_conditional_losses_8770

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:����������]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_p_re_lu_2_layer_call_fn_12594

inputs)
dense_2_p_re_lu_2_alpha:T
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_p_re_lu_2_layer_call_and_return_conditional_losses_7873s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*>
_input_shapes-
+:'���������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
while_cond_9017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9017___redundant_placeholder02
.while_while_cond_9017___redundant_placeholder12
.while_while_cond_9017___redundant_placeholder22
.while_while_cond_9017___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_12438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12438___redundant_placeholder03
/while_while_cond_12438___redundant_placeholder13
/while_while_cond_12438___redundant_placeholder23
/while_while_cond_12438___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
`
'__inference_dropout_layer_call_fn_11807

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9837s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
A__inference_dense_5_layer_call_and_return_conditional_losses_9162

inputs9
'tensordot_readvariableop_dense_5_kernel:1
#biasadd_readvariableop_dense_5_bias:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_5_kernel*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_5_bias*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:���������d
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
gru_while_cond_10799$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_10799___redundant_placeholder0;
7gru_while_gru_while_cond_10799___redundant_placeholder1;
7gru_while_gru_while_cond_10799___redundant_placeholder2;
7gru_while_gru_while_cond_10799___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_11979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_11979___redundant_placeholder03
/while_while_cond_11979___redundant_placeholder13
/while_while_cond_11979___redundant_placeholder23
/while_while_cond_11979___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
_
A__inference_dropout_layer_call_and_return_conditional_losses_8896

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
D__inference_p_re_lu_3_layer_call_and_return_conditional_losses_12624

inputs8
&readvariableop_dense_3_p_re_lu_3_alpha:4*
identity��ReadVariableOp\
ReluReluinputs*
T0*=
_output_shapes+
):'���������������������������u
ReadVariableOpReadVariableOp&readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0K
NegNegReadVariableOp:value:0*
T0*
_output_shapes

:4*\
Neg_1Neginputs*
T0*=
_output_shapes+
):'���������������������������a
Relu_1Relu	Neg_1:y:0*
T0*=
_output_shapes+
):'���������������������������_
mulMulNeg:y:0Relu_1:activations:0*
T0*+
_output_shapes
:���������4*_
addAddV2Relu:activations:0mul:z:0*
T0*+
_output_shapes
:���������4*Z
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:���������4*W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*>
_input_shapes-
+:'���������������������������: 2 
ReadVariableOpReadVariableOp:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
0__inference_conv1d_transpose_layer_call_fn_11418

inputs.
conv1d_transpose_kernel:T�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_transpose_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*6
_input_shapes%
#:�������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
J
.__inference_zero_padding1d_layer_call_fn_11737

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
B__inference_dense_5_layer_call_and_return_conditional_losses_12588

inputs9
'tensordot_readvariableop_dense_5_kernel:1
#biasadd_readvariableop_dense_5_bias:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_5_kernel*
_output_shapes

:*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_5_bias*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:���������d
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
A__inference_dense_2_layer_call_and_return_conditional_losses_8817

inputs9
'tensordot_readvariableop_dense_2_kernel:TT1
#biasadd_readvariableop_dense_2_bias:TB
0p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha:T
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�p_re_lu_2/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_2_kernel*
_output_shapes

:TT*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������T�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������T[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:TY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������Tv
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:T*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T^
p_re_lu_2/ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������T�
p_re_lu_2/ReadVariableOpReadVariableOp0p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0_
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes

:T^
p_re_lu_2/Neg_1NegBiasAdd:output:0*
T0*+
_output_shapes
:���������Tc
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*+
_output_shapes
:���������T}
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*+
_output_shapes
:���������T}
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*+
_output_shapes
:���������Td
IdentityIdentityp_re_lu_2/add:z:0^NoOp*
T0*+
_output_shapes
:���������T�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������T: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:S O
+
_output_shapes
:���������T
 
_user_specified_nameinputs
�

h
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :*�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������*\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������*"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������	:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�'
�
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_11454

inputs[
Dconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel:T�
identity��,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
stack/2Const*
_output_shapes
: *
dtype0*
value	B :Tn
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#��������������������
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpDconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*#
_output_shapes
:T�*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:T�n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"������������������T*
paddingSAME*
strides
�
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :������������������T*
squeeze_dims
}
IdentityIdentity!conv1d_transpose/Squeeze:output:0^NoOp*
T0*4
_output_shapes"
 :������������������Tu
NoOpNoOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*6
_input_shapes%
#:�������������������: 2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�`
�
B__inference_model_1_layer_call_and_return_conditional_losses_10412
latent_input
protein_input5
"upsampler_mlp_upsampler_mlp_kernel:	�/
 upsampler_mlp_upsampler_mlp_bias:	�?
(conv1d_transpose_conv1d_transpose_kernel:T�E
7batch_normalization_2_batch_normalization_2_moving_mean:TI
;batch_normalization_2_batch_normalization_2_moving_variance:T?
1batch_normalization_2_batch_normalization_2_gamma:T>
0batch_normalization_2_batch_normalization_2_beta:T(
dense_2_dense_2_kernel:TT"
dense_2_dense_2_bias:T1
dense_2_dense_2_p_re_lu_2_alpha:TB
,conv1d_transpose_1_conv1d_transpose_1_kernel:*TE
7batch_normalization_3_batch_normalization_3_moving_mean:*I
;batch_normalization_3_batch_normalization_3_moving_variance:*?
1batch_normalization_3_batch_normalization_3_gamma:*>
0batch_normalization_3_batch_normalization_3_beta:*(
dense_3_dense_3_kernel:**"
dense_3_dense_3_bias:*1
dense_3_dense_3_p_re_lu_3_alpha:4**
dense_4_dense_4_kernel:
��	#
dense_4_dense_4_bias:	�	<
&decoder_x_embed_decoder_x_embed_kernel:2
$decoder_x_embed_decoder_x_embed_bias:(
gru_gru_gru_cell_bias:	�*
gru_gru_gru_cell_kernel:	?�5
!gru_gru_gru_cell_recurrent_kernel:
��5
processed_x_processed_x_kernel:�*
processed_x_processed_x_bias:(
dense_5_dense_5_kernel:"
dense_5_dense_5_bias:
identity��-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�(conv1d_transpose/StatefulPartitionedCall�*conv1d_transpose_1/StatefulPartitionedCall�'decoder_x_embed/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dropout/StatefulPartitionedCall�gru/StatefulPartitionedCall�#processed_x/StatefulPartitionedCall�%upsampler_mlp/StatefulPartitionedCall�
%upsampler_mlp/StatefulPartitionedCallStatefulPartitionedCalllatent_input"upsampler_mlp_upsampler_mlp_kernel upsampler_mlp_upsampler_mlp_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753�
reshape/PartitionedCallPartitionedCall.upsampler_mlp/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_8770�
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:07batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance1batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7796�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_biasdense_2_dense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8817�
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:07batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance1batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_8036�
zero_padding1d/PartitionedCallPartitionedCallprotein_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_biasdense_3_dense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_8868�
lambda_1/PartitionedCallPartitionedCall'zero_padding1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_9892�
flatten/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8889�
dropout/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9837�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8908�
"Reshaped_upsampled/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925�
'decoder_x_embed/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&decoder_x_embed_decoder_x_embed_kernel$decoder_x_embed_decoder_x_embed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942�
concatinated/PartitionedCallPartitionedCall+Reshaped_upsampled/PartitionedCall:output:00decoder_x_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatinated_layer_call_and_return_conditional_losses_8953�
gru/StatefulPartitionedCallStatefulPartitionedCall%concatinated/PartitionedCall:output:0gru_gru_gru_cell_biasgru_gru_gru_cell_kernel!gru_gru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9424�
#processed_x/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0processed_x_processed_x_kernelprocessed_x_processed_x_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_processed_x_layer_call_and_return_conditional_losses_9127�
dense_5/StatefulPartitionedCallStatefulPartitionedCall,processed_x/StatefulPartitionedCall:output:0dense_5_dense_5_kerneldense_5_dense_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9162{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall(^decoder_x_embed/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^gru/StatefulPartitionedCall$^processed_x/StatefulPartitionedCall&^upsampler_mlp/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2R
'decoder_x_embed/StatefulPartitionedCall'decoder_x_embed/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2J
#processed_x/StatefulPartitionedCall#processed_x/StatefulPartitionedCall2N
%upsampler_mlp/StatefulPartitionedCall%upsampler_mlp/StatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�	
�
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_12606

inputs8
&readvariableop_dense_2_p_re_lu_2_alpha:T
identity��ReadVariableOp\
ReluReluinputs*
T0*=
_output_shapes+
):'���������������������������u
ReadVariableOpReadVariableOp&readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0K
NegNegReadVariableOp:value:0*
T0*
_output_shapes

:T\
Neg_1Neginputs*
T0*=
_output_shapes+
):'���������������������������a
Relu_1Relu	Neg_1:y:0*
T0*=
_output_shapes+
):'���������������������������_
mulMulNeg:y:0Relu_1:activations:0*
T0*+
_output_shapes
:���������T_
addAddV2Relu:activations:0mul:z:0*
T0*+
_output_shapes
:���������TZ
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:���������TW
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*>
_input_shapes-
+:'���������������������������: 2 
ReadVariableOpReadVariableOp:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
while_cond_12132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_12132___redundant_placeholder03
/while_while_cond_12132___redundant_placeholder13
/while_while_cond_12132___redundant_placeholder23
/while_while_cond_12132___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
-__inference_upsampler_mlp_layer_call_fn_11384

inputs'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsupsampler_mlp_kernelupsampler_mlp_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�L
�
>__inference_gru_layer_call_and_return_conditional_losses_12375

inputs<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_12286*
condR
while_cond_12285*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_3_layer_call_fn_11623

inputs3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*/
!batch_normalization_3_moving_mean:*(
batch_normalization_3_beta:*
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs%batch_normalization_3_moving_variancebatch_normalization_3_gamma!batch_normalization_3_moving_meanbatch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������**&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_7993|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������*: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�'
�
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7796

inputsN
@assignmovingavg_readvariableop_batch_normalization_2_moving_mean:TT
Fassignmovingavg_1_readvariableop_batch_normalization_2_moving_variance:TF
8batchnorm_mul_readvariableop_batch_normalization_2_gamma:TA
3batchnorm_readvariableop_batch_normalization_2_beta:T
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:T�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������Ts
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp@assignmovingavg_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:Tx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T�
AssignMovingAvgAssignSubVariableOp@assignmovingavg_readvariableop_batch_normalization_2_moving_meanAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpFassignmovingavg_1_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:T~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T�
AssignMovingAvg_1AssignSubVariableOpFassignmovingavg_1_readvariableop_batch_normalization_2_moving_varianceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:TP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Tp
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������Th
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:T�
batchnorm/ReadVariableOpReadVariableOp3batchnorm_readvariableop_batch_normalization_2_beta*
_output_shapes
:T*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������To
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������T�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������T: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�<
�
while_body_12439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

�
(__inference_gru_cell_layer_call_fn_12646

inputs
states_0$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0gru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8349p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:���������?:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0
�
�
while_cond_9334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_9334___redundant_placeholder02
.while_while_cond_9334___redundant_placeholder12
.while_while_cond_9334___redundant_placeholder22
.while_while_cond_9334___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
#__inference_gru_layer_call_fn_11892
inputs_0$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0gru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_8289}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs_0
�
p
F__inference_concatinated_layer_call_and_return_conditional_losses_8953

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :y
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*+
_output_shapes
:���������?[
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:���������?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:���������*:���������:S O
+
_output_shapes
:���������*
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�<
�
while_body_12286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
C
'__inference_flatten_layer_call_fn_11748

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8889a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0**
_input_shapes
:���������4*:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
�	
�
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753

inputs=
*matmul_readvariableop_upsampler_mlp_kernel:	�8
)biasadd_readvariableop_upsampler_mlp_bias:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp*matmul_readvariableop_upsampler_mlp_kernel*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
BiasAdd/ReadVariableOpReadVariableOp)biasadd_readvariableop_upsampler_mlp_bias*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
model_1_gru_while_cond_75214
0model_1_gru_while_model_1_gru_while_loop_counter:
6model_1_gru_while_model_1_gru_while_maximum_iterations!
model_1_gru_while_placeholder#
model_1_gru_while_placeholder_1#
model_1_gru_while_placeholder_26
2model_1_gru_while_less_model_1_gru_strided_slice_1J
Fmodel_1_gru_while_model_1_gru_while_cond_7521___redundant_placeholder0J
Fmodel_1_gru_while_model_1_gru_while_cond_7521___redundant_placeholder1J
Fmodel_1_gru_while_model_1_gru_while_cond_7521___redundant_placeholder2J
Fmodel_1_gru_while_model_1_gru_while_cond_7521___redundant_placeholder3
model_1_gru_while_identity
�
model_1/gru/while/LessLessmodel_1_gru_while_placeholder2model_1_gru_while_less_model_1_gru_strided_slice_1*
T0*
_output_shapes
: c
model_1/gru/while/IdentityIdentitymodel_1/gru/while/Less:z:0*
T0
*
_output_shapes
: "A
model_1_gru_while_identity#model_1/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
E__inference_processed_x_layer_call_and_return_conditional_losses_9127

inputsL
5conv1d_expanddims_1_readvariableop_processed_x_kernel:�5
'biasadd_readvariableop_processed_x_bias:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_expanddims_1_readvariableop_processed_x_kernel*#
_output_shapes
:�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������z
BiasAdd/ReadVariableOpReadVariableOp'biasadd_readvariableop_processed_x_bias*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_5_layer_call_fn_12557

inputs 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_5_kerneldense_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9162s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_8227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_8227___redundant_placeholder02
.while_while_cond_8227___redundant_placeholder12
.while_while_cond_8227___redundant_placeholder22
.while_while_cond_8227___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
'__inference_dense_4_layer_call_fn_11787

inputs"
dense_4_kernel:
��	
dense_4_bias:	�	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_kerneldense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8908p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�A
�	
gru_while_body_10800$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0H
5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�Q
>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�^
Jgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensorF
3gru_while_gru_cell_readvariableop_gru_gru_cell_bias:	�O
<gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�\
Hgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����(gru/while/gru_cell/MatMul/ReadVariableOp�*gru/while/gru_cell/MatMul_1/ReadVariableOp�!gru/while/gru_cell/ReadVariableOp�
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
!gru/while/gru_cell/ReadVariableOpReadVariableOp5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0�
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpJgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������t
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������x
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������p
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:����������]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: �
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: �
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:�����������
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Hgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelJgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"~
<gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"l
3gru_while_gru_cell_readvariableop_gru_gru_cell_bias5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"�
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
5__inference_batch_normalization_3_layer_call_fn_11632

inputs/
!batch_normalization_3_moving_mean:*3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*(
batch_normalization_3_beta:*
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs!batch_normalization_3_moving_mean%batch_normalization_3_moving_variancebatch_normalization_3_gammabatch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_8036|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������*: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�'
�
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_8036

inputsN
@assignmovingavg_readvariableop_batch_normalization_3_moving_mean:*T
Fassignmovingavg_1_readvariableop_batch_normalization_3_moving_variance:*F
8batchnorm_mul_readvariableop_batch_normalization_3_gamma:*A
3batchnorm_readvariableop_batch_normalization_3_beta:*
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:*�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������*s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:**
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:**
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp@assignmovingavg_readvariableop_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:*x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:*�
AssignMovingAvgAssignSubVariableOp@assignmovingavg_readvariableop_batch_normalization_3_moving_meanAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpFassignmovingavg_1_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:*~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:*�
AssignMovingAvg_1AssignSubVariableOpFassignmovingavg_1_readvariableop_batch_normalization_3_moving_varianceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:*P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:*�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������*h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:*�
batchnorm/ReadVariableOpReadVariableOp3batchnorm_readvariableop_batch_normalization_3_beta*
_output_shapes
:**
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:*
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������*o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������*�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������*: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_7993

inputsL
>batchnorm_readvariableop_batch_normalization_3_moving_variance:*F
8batchnorm_mul_readvariableop_batch_normalization_3_gamma:*J
<batchnorm_readvariableop_1_batch_normalization_3_moving_mean:*C
5batchnorm_readvariableop_2_batch_normalization_3_beta:*
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp>batchnorm_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:*P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:*�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������*�
batchnorm/ReadVariableOp_1ReadVariableOp<batchnorm_readvariableop_1_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:*�
batchnorm/ReadVariableOp_2ReadVariableOp5batchnorm_readvariableop_2_batch_normalization_3_beta*
_output_shapes
:**
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:*
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������*o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������*�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������*: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_11797

inputs8
$matmul_readvariableop_dense_4_kernel:
��	2
#biasadd_readvariableop_dense_4_bias:	�	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp|
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
��	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	w
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_4_bias*
_output_shapes	
:�	*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
C
'__inference_reshape_layer_call_fn_11399

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_8770e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�

'__inference_model_1_layer_call_fn_10519
inputs_0
inputs_1'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�.
conv1d_transpose_kernel:T�/
!batch_normalization_2_moving_mean:T3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T(
batch_normalization_2_beta:T 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T/
conv1d_transpose_1_kernel:*T/
!batch_normalization_3_moving_mean:*3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*(
batch_normalization_3_beta:* 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*"
dense_4_kernel:
��	
dense_4_bias:	�	,
decoder_x_embed_kernel:"
decoder_x_embed_bias:$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��)
processed_x_kernel:�
processed_x_bias: 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1upsampler_mlp_kernelupsampler_mlp_biasconv1d_transpose_kernel!batch_normalization_2_moving_mean%batch_normalization_2_moving_variancebatch_normalization_2_gammabatch_normalization_2_betadense_2_kerneldense_2_biasdense_2_p_re_lu_2_alphaconv1d_transpose_1_kernel!batch_normalization_3_moving_mean%batch_normalization_3_moving_variancebatch_normalization_3_gammabatch_normalization_3_betadense_3_kerneldense_3_biasdense_3_p_re_lu_3_alphadense_4_kerneldense_4_biasdecoder_x_embed_kerneldecoder_x_embed_biasgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernelprocessed_x_kernelprocessed_x_biasdense_5_kerneldense_5_bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10133s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�L
�
=__inference_gru_layer_call_and_return_conditional_losses_9107

inputs<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_9018*
condR
while_cond_9017*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
��
� 
__inference__wrapped_model_7649
latent_input
protein_inputS
@model_1_upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel:	�N
?model_1_upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias:	�t
]model_1_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel:T�j
\model_1_batch_normalization_2_batchnorm_readvariableop_batch_normalization_2_moving_variance:Td
Vmodel_1_batch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma:Th
Zmodel_1_batch_normalization_2_batchnorm_readvariableop_1_batch_normalization_2_moving_mean:Ta
Smodel_1_batch_normalization_2_batchnorm_readvariableop_2_batch_normalization_2_beta:TI
7model_1_dense_2_tensordot_readvariableop_dense_2_kernel:TTA
3model_1_dense_2_biasadd_readvariableop_dense_2_bias:TR
@model_1_dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha:Tw
amodel_1_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:*Tj
\model_1_batch_normalization_3_batchnorm_readvariableop_batch_normalization_3_moving_variance:*d
Vmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma:*h
Zmodel_1_batch_normalization_3_batchnorm_readvariableop_1_batch_normalization_3_moving_mean:*a
Smodel_1_batch_normalization_3_batchnorm_readvariableop_2_batch_normalization_3_beta:*I
7model_1_dense_3_tensordot_readvariableop_dense_3_kernel:**A
3model_1_dense_3_biasadd_readvariableop_dense_3_bias:*R
@model_1_dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha:4*H
4model_1_dense_4_matmul_readvariableop_dense_4_kernel:
��	B
3model_1_dense_4_biasadd_readvariableop_dense_4_bias:	�	g
Qmodel_1_decoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel:Q
Cmodel_1_decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias:H
5model_1_gru_gru_cell_readvariableop_gru_gru_cell_bias:	�Q
>model_1_gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�^
Jmodel_1_gru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��`
Imodel_1_processed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel:�I
;model_1_processed_x_biasadd_readvariableop_processed_x_bias:I
7model_1_dense_5_tensordot_readvariableop_dense_5_kernel:A
3model_1_dense_5_biasadd_readvariableop_dense_5_bias:
identity��6model_1/batch_normalization_2/batchnorm/ReadVariableOp�8model_1/batch_normalization_2/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_2/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp�6model_1/batch_normalization_3/batchnorm/ReadVariableOp�8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1�8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2�:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp�Emodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp�Gmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp�.model_1/decoder_x_embed/BiasAdd/ReadVariableOp�:model_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp�&model_1/dense_2/BiasAdd/ReadVariableOp�(model_1/dense_2/Tensordot/ReadVariableOp�(model_1/dense_2/p_re_lu_2/ReadVariableOp�&model_1/dense_3/BiasAdd/ReadVariableOp�(model_1/dense_3/Tensordot/ReadVariableOp�(model_1/dense_3/p_re_lu_3/ReadVariableOp�&model_1/dense_4/BiasAdd/ReadVariableOp�%model_1/dense_4/MatMul/ReadVariableOp�&model_1/dense_5/BiasAdd/ReadVariableOp�(model_1/dense_5/Tensordot/ReadVariableOp�*model_1/gru/gru_cell/MatMul/ReadVariableOp�,model_1/gru/gru_cell/MatMul_1/ReadVariableOp�#model_1/gru/gru_cell/ReadVariableOp�model_1/gru/while�*model_1/processed_x/BiasAdd/ReadVariableOp�6model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOp�,model_1/upsampler_mlp/BiasAdd/ReadVariableOp�+model_1/upsampler_mlp/MatMul/ReadVariableOp�
+model_1/upsampler_mlp/MatMul/ReadVariableOpReadVariableOp@model_1_upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel*
_output_shapes
:	�*
dtype0�
model_1/upsampler_mlp/MatMulMatMullatent_input3model_1/upsampler_mlp/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,model_1/upsampler_mlp/BiasAdd/ReadVariableOpReadVariableOp?model_1_upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias*
_output_shapes	
:�*
dtype0�
model_1/upsampler_mlp/BiasAddBiasAdd&model_1/upsampler_mlp/MatMul:product:04model_1/upsampler_mlp/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
model_1/reshape/ShapeShape&model_1/upsampler_mlp/BiasAdd:output:0*
T0*
_output_shapes
:m
#model_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/reshape/strided_sliceStridedSlicemodel_1/reshape/Shape:output:0,model_1/reshape/strided_slice/stack:output:0.model_1/reshape/strided_slice/stack_1:output:0.model_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :b
model_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
model_1/reshape/Reshape/shapePack&model_1/reshape/strided_slice:output:0(model_1/reshape/Reshape/shape/1:output:0(model_1/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model_1/reshape/ReshapeReshape&model_1/upsampler_mlp/BiasAdd:output:0&model_1/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������n
model_1/conv1d_transpose/ShapeShape model_1/reshape/Reshape:output:0*
T0*
_output_shapes
:v
,model_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.model_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.model_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&model_1/conv1d_transpose/strided_sliceStridedSlice'model_1/conv1d_transpose/Shape:output:05model_1/conv1d_transpose/strided_slice/stack:output:07model_1/conv1d_transpose/strided_slice/stack_1:output:07model_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.model_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv1d_transpose/strided_slice_1StridedSlice'model_1/conv1d_transpose/Shape:output:07model_1/conv1d_transpose/strided_slice_1/stack:output:09model_1/conv1d_transpose/strided_slice_1/stack_1:output:09model_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model_1/conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv1d_transpose/mulMul1model_1/conv1d_transpose/strided_slice_1:output:0'model_1/conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: b
 model_1/conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :T�
model_1/conv1d_transpose/stackPack/model_1/conv1d_transpose/strided_slice:output:0 model_1/conv1d_transpose/mul:z:0)model_1/conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:z
8model_1/conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
4model_1/conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims model_1/reshape/Reshape:output:0Amodel_1/conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
Emodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp]model_1_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*#
_output_shapes
:T�*
dtype0|
:model_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
6model_1/conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsMmodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Cmodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:T��
=model_1/conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?model_1/conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?model_1/conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7model_1/conv1d_transpose/conv1d_transpose/strided_sliceStridedSlice'model_1/conv1d_transpose/stack:output:0Fmodel_1/conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0Hmodel_1/conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0Hmodel_1/conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
?model_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Amodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9model_1/conv1d_transpose/conv1d_transpose/strided_slice_1StridedSlice'model_1/conv1d_transpose/stack:output:0Hmodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Jmodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Jmodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask�
9model_1/conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:w
5model_1/conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0model_1/conv1d_transpose/conv1d_transpose/concatConcatV2@model_1/conv1d_transpose/conv1d_transpose/strided_slice:output:0Bmodel_1/conv1d_transpose/conv1d_transpose/concat/values_1:output:0Bmodel_1/conv1d_transpose/conv1d_transpose/strided_slice_1:output:0>model_1/conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
)model_1/conv1d_transpose/conv1d_transposeConv2DBackpropInput9model_1/conv1d_transpose/conv1d_transpose/concat:output:0?model_1/conv1d_transpose/conv1d_transpose/ExpandDims_1:output:0=model_1/conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������T*
paddingSAME*
strides
�
1model_1/conv1d_transpose/conv1d_transpose/SqueezeSqueeze2model_1/conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������T*
squeeze_dims
�
6model_1/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp\model_1_batch_normalization_2_batchnorm_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0r
-model_1/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_2/batchnorm/addAddV2>model_1/batch_normalization_2/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:T�
-model_1/batch_normalization_2/batchnorm/RsqrtRsqrt/model_1/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:T�
:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_1_batch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0�
+model_1/batch_normalization_2/batchnorm/mulMul1model_1/batch_normalization_2/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T�
-model_1/batch_normalization_2/batchnorm/mul_1Mul:model_1/conv1d_transpose/conv1d_transpose/Squeeze:output:0/model_1/batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������T�
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpZmodel_1_batch_normalization_2_batchnorm_readvariableop_1_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0�
-model_1/batch_normalization_2/batchnorm/mul_2Mul@model_1/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:T�
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpSmodel_1_batch_normalization_2_batchnorm_readvariableop_2_batch_normalization_2_beta*
_output_shapes
:T*
dtype0�
+model_1/batch_normalization_2/batchnorm/subSub@model_1/batch_normalization_2/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T�
-model_1/batch_normalization_2/batchnorm/add_1AddV21model_1/batch_normalization_2/batchnorm/mul_1:z:0/model_1/batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������T�
(model_1/dense_2/Tensordot/ReadVariableOpReadVariableOp7model_1_dense_2_tensordot_readvariableop_dense_2_kernel*
_output_shapes

:TT*
dtype0h
model_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
model_1/dense_2/Tensordot/ShapeShape1model_1/batch_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:i
'model_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_2/Tensordot/GatherV2GatherV2(model_1/dense_2/Tensordot/Shape:output:0'model_1/dense_2/Tensordot/free:output:00model_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_2/Tensordot/GatherV2_1GatherV2(model_1/dense_2/Tensordot/Shape:output:0'model_1/dense_2/Tensordot/axes:output:02model_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_1/dense_2/Tensordot/ProdProd+model_1/dense_2/Tensordot/GatherV2:output:0(model_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 model_1/dense_2/Tensordot/Prod_1Prod-model_1/dense_2/Tensordot/GatherV2_1:output:0*model_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/dense_2/Tensordot/concatConcatV2'model_1/dense_2/Tensordot/free:output:0'model_1/dense_2/Tensordot/axes:output:0.model_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_2/Tensordot/stackPack'model_1/dense_2/Tensordot/Prod:output:0)model_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#model_1/dense_2/Tensordot/transpose	Transpose1model_1/batch_normalization_2/batchnorm/add_1:z:0)model_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������T�
!model_1/dense_2/Tensordot/ReshapeReshape'model_1/dense_2/Tensordot/transpose:y:0(model_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 model_1/dense_2/Tensordot/MatMulMatMul*model_1/dense_2/Tensordot/Reshape:output:00model_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Tk
!model_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ti
'model_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_2/Tensordot/concat_1ConcatV2+model_1/dense_2/Tensordot/GatherV2:output:0*model_1/dense_2/Tensordot/Const_2:output:00model_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_2/TensordotReshape*model_1/dense_2/Tensordot/MatMul:product:0+model_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������T�
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:T*
dtype0�
model_1/dense_2/BiasAddBiasAdd"model_1/dense_2/Tensordot:output:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T~
model_1/dense_2/p_re_lu_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������T�
(model_1/dense_2/p_re_lu_2/ReadVariableOpReadVariableOp@model_1_dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0
model_1/dense_2/p_re_lu_2/NegNeg0model_1/dense_2/p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes

:T~
model_1/dense_2/p_re_lu_2/Neg_1Neg model_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������T�
 model_1/dense_2/p_re_lu_2/Relu_1Relu#model_1/dense_2/p_re_lu_2/Neg_1:y:0*
T0*+
_output_shapes
:���������T�
model_1/dense_2/p_re_lu_2/mulMul!model_1/dense_2/p_re_lu_2/Neg:y:0.model_1/dense_2/p_re_lu_2/Relu_1:activations:0*
T0*+
_output_shapes
:���������T�
model_1/dense_2/p_re_lu_2/addAddV2,model_1/dense_2/p_re_lu_2/Relu:activations:0!model_1/dense_2/p_re_lu_2/mul:z:0*
T0*+
_output_shapes
:���������Tq
 model_1/conv1d_transpose_1/ShapeShape!model_1/dense_2/p_re_lu_2/add:z:0*
T0*
_output_shapes
:x
.model_1/conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/conv1d_transpose_1/strided_sliceStridedSlice)model_1/conv1d_transpose_1/Shape:output:07model_1/conv1d_transpose_1/strided_slice/stack:output:09model_1/conv1d_transpose_1/strided_slice/stack_1:output:09model_1/conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0model_1/conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_1/conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*model_1/conv1d_transpose_1/strided_slice_1StridedSlice)model_1/conv1d_transpose_1/Shape:output:09model_1/conv1d_transpose_1/strided_slice_1/stack:output:0;model_1/conv1d_transpose_1/strided_slice_1/stack_1:output:0;model_1/conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 model_1/conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/conv1d_transpose_1/mulMul3model_1/conv1d_transpose_1/strided_slice_1:output:0)model_1/conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: d
"model_1/conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :*�
 model_1/conv1d_transpose_1/stackPack1model_1/conv1d_transpose_1/strided_slice:output:0"model_1/conv1d_transpose_1/mul:z:0+model_1/conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:|
:model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
6model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims!model_1/dense_2/p_re_lu_2/add:z:0Cmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������T�
Gmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpamodel_1_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*T*
dtype0~
<model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
8model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsOmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Emodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:*T�
?model_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Amodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9model_1/conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice)model_1/conv1d_transpose_1/stack:output:0Hmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Jmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Jmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
Amodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Cmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Cmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;model_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice)model_1/conv1d_transpose_1/stack:output:0Jmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Lmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Lmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask�
;model_1/conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:y
7model_1/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2model_1/conv1d_transpose_1/conv1d_transpose/concatConcatV2Bmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice:output:0Dmodel_1/conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0Dmodel_1/conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:0@model_1/conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
+model_1/conv1d_transpose_1/conv1d_transposeConv2DBackpropInput;model_1/conv1d_transpose_1/conv1d_transpose/concat:output:0Amodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:0?model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������4**
paddingSAME*
strides
�
3model_1/conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze4model_1/conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������4**
squeeze_dims
�
6model_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp\model_1_batch_normalization_3_batchnorm_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0r
-model_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
+model_1/batch_normalization_3/batchnorm/addAddV2>model_1/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:*�
-model_1/batch_normalization_3/batchnorm/RsqrtRsqrt/model_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:*�
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0�
+model_1/batch_normalization_3/batchnorm/mulMul1model_1/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*�
-model_1/batch_normalization_3/batchnorm/mul_1Mul<model_1/conv1d_transpose_1/conv1d_transpose/Squeeze:output:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������4*�
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpZmodel_1_batch_normalization_3_batchnorm_readvariableop_1_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0�
-model_1/batch_normalization_3/batchnorm/mul_2Mul@model_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:*�
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpSmodel_1_batch_normalization_3_batchnorm_readvariableop_2_batch_normalization_3_beta*
_output_shapes
:**
dtype0�
+model_1/batch_normalization_3/batchnorm/subSub@model_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:*�
-model_1/batch_normalization_3/batchnorm/add_1AddV21model_1/batch_normalization_3/batchnorm/mul_1:z:0/model_1/batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������4*�
#model_1/zero_padding1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       �
model_1/zero_padding1d/PadPadprotein_input,model_1/zero_padding1d/Pad/paddings:output:0*
T0*+
_output_shapes
:����������
(model_1/dense_3/Tensordot/ReadVariableOpReadVariableOp7model_1_dense_3_tensordot_readvariableop_dense_3_kernel*
_output_shapes

:***
dtype0h
model_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
model_1/dense_3/Tensordot/ShapeShape1model_1/batch_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:i
'model_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_3/Tensordot/GatherV2GatherV2(model_1/dense_3/Tensordot/Shape:output:0'model_1/dense_3/Tensordot/free:output:00model_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_3/Tensordot/GatherV2_1GatherV2(model_1/dense_3/Tensordot/Shape:output:0'model_1/dense_3/Tensordot/axes:output:02model_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_1/dense_3/Tensordot/ProdProd+model_1/dense_3/Tensordot/GatherV2:output:0(model_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 model_1/dense_3/Tensordot/Prod_1Prod-model_1/dense_3/Tensordot/GatherV2_1:output:0*model_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/dense_3/Tensordot/concatConcatV2'model_1/dense_3/Tensordot/free:output:0'model_1/dense_3/Tensordot/axes:output:0.model_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_3/Tensordot/stackPack'model_1/dense_3/Tensordot/Prod:output:0)model_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#model_1/dense_3/Tensordot/transpose	Transpose1model_1/batch_normalization_3/batchnorm/add_1:z:0)model_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������4*�
!model_1/dense_3/Tensordot/ReshapeReshape'model_1/dense_3/Tensordot/transpose:y:0(model_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 model_1/dense_3/Tensordot/MatMulMatMul*model_1/dense_3/Tensordot/Reshape:output:00model_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*k
!model_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:*i
'model_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_3/Tensordot/concat_1ConcatV2+model_1/dense_3/Tensordot/GatherV2:output:0*model_1/dense_3/Tensordot/Const_2:output:00model_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_3/TensordotReshape*model_1/dense_3/Tensordot/MatMul:product:0+model_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������4*�
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:**
dtype0�
model_1/dense_3/BiasAddBiasAdd"model_1/dense_3/Tensordot:output:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������4*~
model_1/dense_3/p_re_lu_3/ReluRelu model_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
(model_1/dense_3/p_re_lu_3/ReadVariableOpReadVariableOp@model_1_dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0
model_1/dense_3/p_re_lu_3/NegNeg0model_1/dense_3/p_re_lu_3/ReadVariableOp:value:0*
T0*
_output_shapes

:4*~
model_1/dense_3/p_re_lu_3/Neg_1Neg model_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
 model_1/dense_3/p_re_lu_3/Relu_1Relu#model_1/dense_3/p_re_lu_3/Neg_1:y:0*
T0*+
_output_shapes
:���������4*�
model_1/dense_3/p_re_lu_3/mulMul!model_1/dense_3/p_re_lu_3/Neg:y:0.model_1/dense_3/p_re_lu_3/Relu_1:activations:0*
T0*+
_output_shapes
:���������4*�
model_1/dense_3/p_re_lu_3/addAddV2,model_1/dense_3/p_re_lu_3/Relu:activations:0!model_1/dense_3/p_re_lu_3/mul:z:0*
T0*+
_output_shapes
:���������4*y
$model_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            {
&model_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    {
&model_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
model_1/lambda_1/strided_sliceStridedSlice#model_1/zero_padding1d/Pad:output:0-model_1/lambda_1/strided_slice/stack:output:0/model_1/lambda_1/strided_slice/stack_1:output:0/model_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskf
model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
model_1/flatten/ReshapeReshape!model_1/dense_3/p_re_lu_3/add:z:0model_1/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
model_1/dropout/IdentityIdentity'model_1/lambda_1/strided_slice:output:0*
T0*+
_output_shapes
:����������
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp4model_1_dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
��	*
dtype0�
model_1/dense_4/MatMulMatMul model_1/flatten/Reshape:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	�
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:�	*
dtype0�
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	p
 model_1/Reshaped_upsampled/ShapeShape model_1/dense_4/BiasAdd:output:0*
T0*
_output_shapes
:x
.model_1/Reshaped_upsampled/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_1/Reshaped_upsampled/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_1/Reshaped_upsampled/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(model_1/Reshaped_upsampled/strided_sliceStridedSlice)model_1/Reshaped_upsampled/Shape:output:07model_1/Reshaped_upsampled/strided_slice/stack:output:09model_1/Reshaped_upsampled/strided_slice/stack_1:output:09model_1/Reshaped_upsampled/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*model_1/Reshaped_upsampled/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :l
*model_1/Reshaped_upsampled/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :*�
(model_1/Reshaped_upsampled/Reshape/shapePack1model_1/Reshaped_upsampled/strided_slice:output:03model_1/Reshaped_upsampled/Reshape/shape/1:output:03model_1/Reshaped_upsampled/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
"model_1/Reshaped_upsampled/ReshapeReshape model_1/dense_4/BiasAdd:output:01model_1/Reshaped_upsampled/Reshape/shape:output:0*
T0*+
_output_shapes
:���������*x
-model_1/decoder_x_embed/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
)model_1/decoder_x_embed/Conv1D/ExpandDims
ExpandDims!model_1/dropout/Identity:output:06model_1/decoder_x_embed/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
:model_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpQmodel_1_decoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel*"
_output_shapes
:*
dtype0q
/model_1/decoder_x_embed/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
+model_1/decoder_x_embed/Conv1D/ExpandDims_1
ExpandDimsBmodel_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp:value:08model_1/decoder_x_embed/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
model_1/decoder_x_embed/Conv1DConv2D2model_1/decoder_x_embed/Conv1D/ExpandDims:output:04model_1/decoder_x_embed/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
&model_1/decoder_x_embed/Conv1D/SqueezeSqueeze'model_1/decoder_x_embed/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
.model_1/decoder_x_embed/BiasAdd/ReadVariableOpReadVariableOpCmodel_1_decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias*
_output_shapes
:*
dtype0�
model_1/decoder_x_embed/BiasAddBiasAdd/model_1/decoder_x_embed/Conv1D/Squeeze:output:06model_1/decoder_x_embed/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������b
 model_1/concatinated/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatinated/concatConcatV2+model_1/Reshaped_upsampled/Reshape:output:0(model_1/decoder_x_embed/BiasAdd:output:0)model_1/concatinated/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������?e
model_1/gru/ShapeShape$model_1/concatinated/concat:output:0*
T0*
_output_shapes
:i
model_1/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model_1/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model_1/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/gru/strided_sliceStridedSlicemodel_1/gru/Shape:output:0(model_1/gru/strided_slice/stack:output:0*model_1/gru/strided_slice/stack_1:output:0*model_1/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
model_1/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
model_1/gru/zeros/packedPack"model_1/gru/strided_slice:output:0#model_1/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
model_1/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_1/gru/zerosFill!model_1/gru/zeros/packed:output:0 model_1/gru/zeros/Const:output:0*
T0*(
_output_shapes
:����������o
model_1/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_1/gru/transpose	Transpose$model_1/concatinated/concat:output:0#model_1/gru/transpose/perm:output:0*
T0*+
_output_shapes
:���������?\
model_1/gru/Shape_1Shapemodel_1/gru/transpose:y:0*
T0*
_output_shapes
:k
!model_1/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_1/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_1/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/gru/strided_slice_1StridedSlicemodel_1/gru/Shape_1:output:0*model_1/gru/strided_slice_1/stack:output:0,model_1/gru/strided_slice_1/stack_1:output:0,model_1/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
'model_1/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_1/gru/TensorArrayV2TensorListReserve0model_1/gru/TensorArrayV2/element_shape:output:0$model_1/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Amodel_1/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
3model_1/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/gru/transpose:y:0Jmodel_1/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���k
!model_1/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model_1/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model_1/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/gru/strided_slice_2StridedSlicemodel_1/gru/transpose:y:0*model_1/gru/strided_slice_2/stack:output:0,model_1/gru/strided_slice_2/stack_1:output:0,model_1/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
#model_1/gru/gru_cell/ReadVariableOpReadVariableOp5model_1_gru_gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0�
model_1/gru/gru_cell/unstackUnpack+model_1/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
*model_1/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp>model_1_gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
model_1/gru/gru_cell/MatMulMatMul$model_1/gru/strided_slice_2:output:02model_1/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/BiasAddBiasAdd%model_1/gru/gru_cell/MatMul:product:0%model_1/gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������o
$model_1/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_1/gru/gru_cell/splitSplit-model_1/gru/gru_cell/split/split_dim:output:0%model_1/gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
,model_1/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOpJmodel_1_gru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
model_1/gru/gru_cell/MatMul_1MatMulmodel_1/gru/zeros:output:04model_1/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/BiasAdd_1BiasAdd'model_1/gru/gru_cell/MatMul_1:product:0%model_1/gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������o
model_1/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����q
&model_1/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_1/gru/gru_cell/split_1SplitV'model_1/gru/gru_cell/BiasAdd_1:output:0#model_1/gru/gru_cell/Const:output:0/model_1/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
model_1/gru/gru_cell/addAddV2#model_1/gru/gru_cell/split:output:0%model_1/gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������x
model_1/gru/gru_cell/SigmoidSigmoidmodel_1/gru/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/add_1AddV2#model_1/gru/gru_cell/split:output:1%model_1/gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������|
model_1/gru/gru_cell/Sigmoid_1Sigmoidmodel_1/gru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/mulMul"model_1/gru/gru_cell/Sigmoid_1:y:0%model_1/gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/add_2AddV2#model_1/gru/gru_cell/split:output:2model_1/gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������t
model_1/gru/gru_cell/TanhTanhmodel_1/gru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/mul_1Mul model_1/gru/gru_cell/Sigmoid:y:0model_1/gru/zeros:output:0*
T0*(
_output_shapes
:����������_
model_1/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_1/gru/gru_cell/subSub#model_1/gru/gru_cell/sub/x:output:0 model_1/gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/mul_2Mulmodel_1/gru/gru_cell/sub:z:0model_1/gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
model_1/gru/gru_cell/add_3AddV2model_1/gru/gru_cell/mul_1:z:0model_1/gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������z
)model_1/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_1/gru/TensorArrayV2_1TensorListReserve2model_1/gru/TensorArrayV2_1/element_shape:output:0$model_1/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���R
model_1/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : o
$model_1/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������`
model_1/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_1/gru/whileWhile'model_1/gru/while/loop_counter:output:0-model_1/gru/while/maximum_iterations:output:0model_1/gru/time:output:0$model_1/gru/TensorArrayV2_1:handle:0model_1/gru/zeros:output:0$model_1/gru/strided_slice_1:output:0Cmodel_1/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:05model_1_gru_gru_cell_readvariableop_gru_gru_cell_bias>model_1_gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernelJmodel_1_gru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *'
bodyR
model_1_gru_while_body_7522*'
condR
model_1_gru_while_cond_7521*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
<model_1/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
.model_1/gru/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/gru/while:output:3Emodel_1/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0t
!model_1/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������m
#model_1/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#model_1/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_1/gru/strided_slice_3StridedSlice7model_1/gru/TensorArrayV2Stack/TensorListStack:tensor:0*model_1/gru/strided_slice_3/stack:output:0,model_1/gru/strided_slice_3/stack_1:output:0,model_1/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskq
model_1/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_1/gru/transpose_1	Transpose7model_1/gru/TensorArrayV2Stack/TensorListStack:tensor:0%model_1/gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������g
model_1/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
)model_1/processed_x/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%model_1/processed_x/Conv1D/ExpandDims
ExpandDimsmodel_1/gru/transpose_1:y:02model_1/processed_x/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
6model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpImodel_1_processed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel*#
_output_shapes
:�*
dtype0m
+model_1/processed_x/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'model_1/processed_x/Conv1D/ExpandDims_1
ExpandDims>model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_1/processed_x/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
model_1/processed_x/Conv1DConv2D.model_1/processed_x/Conv1D/ExpandDims:output:00model_1/processed_x/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
"model_1/processed_x/Conv1D/SqueezeSqueeze#model_1/processed_x/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
*model_1/processed_x/BiasAdd/ReadVariableOpReadVariableOp;model_1_processed_x_biasadd_readvariableop_processed_x_bias*
_output_shapes
:*
dtype0�
model_1/processed_x/BiasAddBiasAdd+model_1/processed_x/Conv1D/Squeeze:output:02model_1/processed_x/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
(model_1/dense_5/Tensordot/ReadVariableOpReadVariableOp7model_1_dense_5_tensordot_readvariableop_dense_5_kernel*
_output_shapes

:*
dtype0h
model_1/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       s
model_1/dense_5/Tensordot/ShapeShape$model_1/processed_x/BiasAdd:output:0*
T0*
_output_shapes
:i
'model_1/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_5/Tensordot/GatherV2GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/free:output:00model_1/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model_1/dense_5/Tensordot/GatherV2_1GatherV2(model_1/dense_5/Tensordot/Shape:output:0'model_1/dense_5/Tensordot/axes:output:02model_1/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_1/dense_5/Tensordot/ProdProd+model_1/dense_5/Tensordot/GatherV2:output:0(model_1/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 model_1/dense_5/Tensordot/Prod_1Prod-model_1/dense_5/Tensordot/GatherV2_1:output:0*model_1/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 model_1/dense_5/Tensordot/concatConcatV2'model_1/dense_5/Tensordot/free:output:0'model_1/dense_5/Tensordot/axes:output:0.model_1/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_5/Tensordot/stackPack'model_1/dense_5/Tensordot/Prod:output:0)model_1/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#model_1/dense_5/Tensordot/transpose	Transpose$model_1/processed_x/BiasAdd:output:0)model_1/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
!model_1/dense_5/Tensordot/ReshapeReshape'model_1/dense_5/Tensordot/transpose:y:0(model_1/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 model_1/dense_5/Tensordot/MatMulMatMul*model_1/dense_5/Tensordot/Reshape:output:00model_1/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������k
!model_1/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'model_1/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"model_1/dense_5/Tensordot/concat_1ConcatV2+model_1/dense_5/Tensordot/GatherV2:output:0*model_1/dense_5/Tensordot/Const_2:output:00model_1/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_1/dense_5/TensordotReshape*model_1/dense_5/Tensordot/MatMul:product:0+model_1/dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp3model_1_dense_5_biasadd_readvariableop_dense_5_bias*
_output_shapes
:*
dtype0�
model_1/dense_5/BiasAddBiasAdd"model_1/dense_5/Tensordot:output:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������z
model_1/dense_5/SoftmaxSoftmax model_1/dense_5/BiasAdd:output:0*
T0*+
_output_shapes
:���������t
IdentityIdentity!model_1/dense_5/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp7^model_1/batch_normalization_2/batchnorm/ReadVariableOp9^model_1/batch_normalization_2/batchnorm/ReadVariableOp_19^model_1/batch_normalization_2/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_3/batchnorm/ReadVariableOp9^model_1/batch_normalization_3/batchnorm/ReadVariableOp_19^model_1/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpF^model_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpH^model_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp/^model_1/decoder_x_embed/BiasAdd/ReadVariableOp;^model_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp)^model_1/dense_2/Tensordot/ReadVariableOp)^model_1/dense_2/p_re_lu_2/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp)^model_1/dense_3/Tensordot/ReadVariableOp)^model_1/dense_3/p_re_lu_3/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp)^model_1/dense_5/Tensordot/ReadVariableOp+^model_1/gru/gru_cell/MatMul/ReadVariableOp-^model_1/gru/gru_cell/MatMul_1/ReadVariableOp$^model_1/gru/gru_cell/ReadVariableOp^model_1/gru/while+^model_1/processed_x/BiasAdd/ReadVariableOp7^model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOp-^model_1/upsampler_mlp/BiasAdd/ReadVariableOp,^model_1/upsampler_mlp/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6model_1/batch_normalization_2/batchnorm/ReadVariableOp6model_1/batch_normalization_2/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_18model_1/batch_normalization_2/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_2/batchnorm/ReadVariableOp_28model_1/batch_normalization_2/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_2/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_3/batchnorm/ReadVariableOp6model_1/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_18model_1/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_28model_1/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2�
Emodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpEmodel_1/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2�
Gmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpGmodel_1/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2`
.model_1/decoder_x_embed/BiasAdd/ReadVariableOp.model_1/decoder_x_embed/BiasAdd/ReadVariableOp2x
:model_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp:model_1/decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2T
(model_1/dense_2/Tensordot/ReadVariableOp(model_1/dense_2/Tensordot/ReadVariableOp2T
(model_1/dense_2/p_re_lu_2/ReadVariableOp(model_1/dense_2/p_re_lu_2/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2T
(model_1/dense_3/Tensordot/ReadVariableOp(model_1/dense_3/Tensordot/ReadVariableOp2T
(model_1/dense_3/p_re_lu_3/ReadVariableOp(model_1/dense_3/p_re_lu_3/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2T
(model_1/dense_5/Tensordot/ReadVariableOp(model_1/dense_5/Tensordot/ReadVariableOp2X
*model_1/gru/gru_cell/MatMul/ReadVariableOp*model_1/gru/gru_cell/MatMul/ReadVariableOp2\
,model_1/gru/gru_cell/MatMul_1/ReadVariableOp,model_1/gru/gru_cell/MatMul_1/ReadVariableOp2J
#model_1/gru/gru_cell/ReadVariableOp#model_1/gru/gru_cell/ReadVariableOp2&
model_1/gru/whilemodel_1/gru/while2X
*model_1/processed_x/BiasAdd/ReadVariableOp*model_1/processed_x/BiasAdd/ReadVariableOp2p
6model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOp6model_1/processed_x/Conv1D/ExpandDims_1/ReadVariableOp2\
,model_1/upsampler_mlp/BiasAdd/ReadVariableOp,model_1/upsampler_mlp/BiasAdd/ReadVariableOp2Z
+model_1/upsampler_mlp/MatMul/ReadVariableOp+model_1/upsampler_mlp/MatMul/ReadVariableOp:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�K
�
model_1_gru_while_body_75224
0model_1_gru_while_model_1_gru_while_loop_counter:
6model_1_gru_while_model_1_gru_while_maximum_iterations!
model_1_gru_while_placeholder#
model_1_gru_while_placeholder_1#
model_1_gru_while_placeholder_23
/model_1_gru_while_model_1_gru_strided_slice_1_0o
kmodel_1_gru_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_tensorarrayunstack_tensorlistfromtensor_0P
=model_1_gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�Y
Fmodel_1_gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�f
Rmodel_1_gru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
model_1_gru_while_identity 
model_1_gru_while_identity_1 
model_1_gru_while_identity_2 
model_1_gru_while_identity_3 
model_1_gru_while_identity_41
-model_1_gru_while_model_1_gru_strided_slice_1m
imodel_1_gru_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_tensorarrayunstack_tensorlistfromtensorN
;model_1_gru_while_gru_cell_readvariableop_gru_gru_cell_bias:	�W
Dmodel_1_gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�d
Pmodel_1_gru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����0model_1/gru/while/gru_cell/MatMul/ReadVariableOp�2model_1/gru/while/gru_cell/MatMul_1/ReadVariableOp�)model_1/gru/while/gru_cell/ReadVariableOp�
Cmodel_1/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
5model_1/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkmodel_1_gru_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_tensorarrayunstack_tensorlistfromtensor_0model_1_gru_while_placeholderLmodel_1/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
)model_1/gru/while/gru_cell/ReadVariableOpReadVariableOp=model_1_gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0�
"model_1/gru/while/gru_cell/unstackUnpack1model_1/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
0model_1/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOpFmodel_1_gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
!model_1/gru/while/gru_cell/MatMulMatMul<model_1/gru/while/TensorArrayV2Read/TensorListGetItem:item:08model_1/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model_1/gru/while/gru_cell/BiasAddBiasAdd+model_1/gru/while/gru_cell/MatMul:product:0+model_1/gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������u
*model_1/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 model_1/gru/while/gru_cell/splitSplit3model_1/gru/while/gru_cell/split/split_dim:output:0+model_1/gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
2model_1/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpRmodel_1_gru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
#model_1/gru/while/gru_cell/MatMul_1MatMulmodel_1_gru_while_placeholder_2:model_1/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$model_1/gru/while/gru_cell/BiasAdd_1BiasAdd-model_1/gru/while/gru_cell/MatMul_1:product:0+model_1/gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������u
 model_1/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����w
,model_1/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
"model_1/gru/while/gru_cell/split_1SplitV-model_1/gru/while/gru_cell/BiasAdd_1:output:0)model_1/gru/while/gru_cell/Const:output:05model_1/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
model_1/gru/while/gru_cell/addAddV2)model_1/gru/while/gru_cell/split:output:0+model_1/gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:�����������
"model_1/gru/while/gru_cell/SigmoidSigmoid"model_1/gru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
 model_1/gru/while/gru_cell/add_1AddV2)model_1/gru/while/gru_cell/split:output:1+model_1/gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:�����������
$model_1/gru/while/gru_cell/Sigmoid_1Sigmoid$model_1/gru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
model_1/gru/while/gru_cell/mulMul(model_1/gru/while/gru_cell/Sigmoid_1:y:0+model_1/gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
 model_1/gru/while/gru_cell/add_2AddV2)model_1/gru/while/gru_cell/split:output:2"model_1/gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:�����������
model_1/gru/while/gru_cell/TanhTanh$model_1/gru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:�����������
 model_1/gru/while/gru_cell/mul_1Mul&model_1/gru/while/gru_cell/Sigmoid:y:0model_1_gru_while_placeholder_2*
T0*(
_output_shapes
:����������e
 model_1/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_1/gru/while/gru_cell/subSub)model_1/gru/while/gru_cell/sub/x:output:0&model_1/gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
 model_1/gru/while/gru_cell/mul_2Mul"model_1/gru/while/gru_cell/sub:z:0#model_1/gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
 model_1/gru/while/gru_cell/add_3AddV2$model_1/gru/while/gru_cell/mul_1:z:0$model_1/gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
6model_1/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_1_gru_while_placeholder_1model_1_gru_while_placeholder$model_1/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���Y
model_1/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/gru/while/addAddV2model_1_gru_while_placeholder model_1/gru/while/add/y:output:0*
T0*
_output_shapes
: [
model_1/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/gru/while/add_1AddV20model_1_gru_while_model_1_gru_while_loop_counter"model_1/gru/while/add_1/y:output:0*
T0*
_output_shapes
: }
model_1/gru/while/IdentityIdentitymodel_1/gru/while/add_1:z:0^model_1/gru/while/NoOp*
T0*
_output_shapes
: �
model_1/gru/while/Identity_1Identity6model_1_gru_while_model_1_gru_while_maximum_iterations^model_1/gru/while/NoOp*
T0*
_output_shapes
: }
model_1/gru/while/Identity_2Identitymodel_1/gru/while/add:z:0^model_1/gru/while/NoOp*
T0*
_output_shapes
: �
model_1/gru/while/Identity_3IdentityFmodel_1/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_1/gru/while/NoOp*
T0*
_output_shapes
: �
model_1/gru/while/Identity_4Identity$model_1/gru/while/gru_cell/add_3:z:0^model_1/gru/while/NoOp*
T0*(
_output_shapes
:�����������
model_1/gru/while/NoOpNoOp1^model_1/gru/while/gru_cell/MatMul/ReadVariableOp3^model_1/gru/while/gru_cell/MatMul_1/ReadVariableOp*^model_1/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Pmodel_1_gru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelRmodel_1_gru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"�
Dmodel_1_gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernelFmodel_1_gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"|
;model_1_gru_while_gru_cell_readvariableop_gru_gru_cell_bias=model_1_gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0"A
model_1_gru_while_identity#model_1/gru/while/Identity:output:0"E
model_1_gru_while_identity_1%model_1/gru/while/Identity_1:output:0"E
model_1_gru_while_identity_2%model_1/gru/while/Identity_2:output:0"E
model_1_gru_while_identity_3%model_1/gru/while/Identity_3:output:0"E
model_1_gru_while_identity_4%model_1/gru/while/Identity_4:output:0"`
-model_1_gru_while_model_1_gru_strided_slice_1/model_1_gru_while_model_1_gru_strided_slice_1_0"�
imodel_1_gru_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_tensorarrayunstack_tensorlistfromtensorkmodel_1_gru_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2d
0model_1/gru/while/gru_cell/MatMul/ReadVariableOp0model_1/gru/while/gru_cell/MatMul/ReadVariableOp2h
2model_1/gru/while/gru_cell/MatMul_1/ReadVariableOp2model_1/gru/while/gru_cell/MatMul_1/ReadVariableOp2V
)model_1/gru/while/gru_cell/ReadVariableOp)model_1/gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
d
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139

inputs
identityu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       q
PadPadinputsPad/paddings:output:0*
T0*=
_output_shapes+
):'���������������������������j
IdentityIdentityPad:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_8889

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������4*:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
�
�
#__inference_gru_layer_call_fn_11900
inputs_0$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0gru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_8534}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs_0
�
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11492

inputsL
>batchnorm_readvariableop_batch_normalization_2_moving_variance:TF
8batchnorm_mul_readvariableop_batch_normalization_2_gamma:TJ
<batchnorm_readvariableop_1_batch_normalization_2_moving_mean:TC
5batchnorm_readvariableop_2_batch_normalization_2_beta:T
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp>batchnorm_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:TP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Tp
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������T�
batchnorm/ReadVariableOp_1ReadVariableOp<batchnorm_readvariableop_1_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:T�
batchnorm/ReadVariableOp_2ReadVariableOp5batchnorm_readvariableop_2_batch_normalization_2_beta*
_output_shapes
:T*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������To
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������T�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������T: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�<
�
while_body_9018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�$
�
A__inference_dense_3_layer_call_and_return_conditional_losses_8868

inputs9
'tensordot_readvariableop_dense_3_kernel:**1
#biasadd_readvariableop_dense_3_bias:*B
0p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha:4*
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�p_re_lu_3/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_3_kernel*
_output_shapes

:***
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������4*�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:*Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������4*v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes
:**
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������4*^
p_re_lu_3/ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
p_re_lu_3/ReadVariableOpReadVariableOp0p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0_
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*
_output_shapes

:4*^
p_re_lu_3/Neg_1NegBiasAdd:output:0*
T0*+
_output_shapes
:���������4*c
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*+
_output_shapes
:���������4*}
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*+
_output_shapes
:���������4*}
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*+
_output_shapes
:���������4*d
IdentityIdentityp_re_lu_3/add:z:0^NoOp*
T0*+
_output_shapes
:���������4*�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp^p_re_lu_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������4*: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_11377
inputs_0
inputs_1K
8upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel:	�F
7upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias:	�l
Uconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel:T�d
Vbatch_normalization_2_assignmovingavg_readvariableop_batch_normalization_2_moving_mean:Tj
\batch_normalization_2_assignmovingavg_1_readvariableop_batch_normalization_2_moving_variance:T\
Nbatch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma:TW
Ibatch_normalization_2_batchnorm_readvariableop_batch_normalization_2_beta:TA
/dense_2_tensordot_readvariableop_dense_2_kernel:TT9
+dense_2_biasadd_readvariableop_dense_2_bias:TJ
8dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha:To
Yconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:*Td
Vbatch_normalization_3_assignmovingavg_readvariableop_batch_normalization_3_moving_mean:*j
\batch_normalization_3_assignmovingavg_1_readvariableop_batch_normalization_3_moving_variance:*\
Nbatch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma:*W
Ibatch_normalization_3_batchnorm_readvariableop_batch_normalization_3_beta:*A
/dense_3_tensordot_readvariableop_dense_3_kernel:**9
+dense_3_biasadd_readvariableop_dense_3_bias:*J
8dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha:4*@
,dense_4_matmul_readvariableop_dense_4_kernel:
��	:
+dense_4_biasadd_readvariableop_dense_4_bias:	�	_
Idecoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel:I
;decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias:@
-gru_gru_cell_readvariableop_gru_gru_cell_bias:	�I
6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�V
Bgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��X
Aprocessed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel:�A
3processed_x_biasadd_readvariableop_processed_x_bias:A
/dense_5_tensordot_readvariableop_dense_5_kernel:9
+dense_5_biasadd_readvariableop_dense_5_bias:
identity��%batch_normalization_2/AssignMovingAvg�4batch_normalization_2/AssignMovingAvg/ReadVariableOp�'batch_normalization_2/AssignMovingAvg_1�6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_2/batchnorm/ReadVariableOp�2batch_normalization_2/batchnorm/mul/ReadVariableOp�%batch_normalization_3/AssignMovingAvg�4batch_normalization_3/AssignMovingAvg/ReadVariableOp�'batch_normalization_3/AssignMovingAvg_1�6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_3/batchnorm/ReadVariableOp�2batch_normalization_3/batchnorm/mul/ReadVariableOp�=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp�?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp�&decoder_x_embed/BiasAdd/ReadVariableOp�2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp� dense_2/p_re_lu_2/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp� dense_3/p_re_lu_3/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�"gru/gru_cell/MatMul/ReadVariableOp�$gru/gru_cell/MatMul_1/ReadVariableOp�gru/gru_cell/ReadVariableOp�	gru/while�"processed_x/BiasAdd/ReadVariableOp�.processed_x/Conv1D/ExpandDims_1/ReadVariableOp�$upsampler_mlp/BiasAdd/ReadVariableOp�#upsampler_mlp/MatMul/ReadVariableOp�
#upsampler_mlp/MatMul/ReadVariableOpReadVariableOp8upsampler_mlp_matmul_readvariableop_upsampler_mlp_kernel*
_output_shapes
:	�*
dtype0�
upsampler_mlp/MatMulMatMulinputs_0+upsampler_mlp/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$upsampler_mlp/BiasAdd/ReadVariableOpReadVariableOp7upsampler_mlp_biasadd_readvariableop_upsampler_mlp_bias*
_output_shapes	
:�*
dtype0�
upsampler_mlp/BiasAddBiasAddupsampler_mlp/MatMul:product:0,upsampler_mlp/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
reshape/ShapeShapeupsampler_mlp/BiasAdd:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapeupsampler_mlp/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������^
conv1d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :T�
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDimsreshape/Reshape:output:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpUconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*#
_output_shapes
:T�*
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:T�
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������T*
paddingSAME*
strides
�
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������T*
squeeze_dims
�
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
"batch_normalization_2/moments/meanMean2conv1d_transpose/conv1d_transpose/Squeeze:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(�
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*"
_output_shapes
:T�
/batch_normalization_2/moments/SquaredDifferenceSquaredDifference2conv1d_transpose/conv1d_transpose/Squeeze:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������T�
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(�
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 �
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 p
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOpVbatch_normalization_2_assignmovingavg_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0�
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes
:T�
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T�
%batch_normalization_2/AssignMovingAvgAssignSubVariableOpVbatch_normalization_2_assignmovingavg_readvariableop_batch_normalization_2_moving_mean-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp\batch_normalization_2_assignmovingavg_1_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0�
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:T�
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T�
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp\batch_normalization_2_assignmovingavg_1_readvariableop_batch_normalization_2_moving_variance/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:T|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:T�
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpNbatch_normalization_2_batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0�
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:T�
%batch_normalization_2/batchnorm/mul_1Mul2conv1d_transpose/conv1d_transpose/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������T�
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:T�
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpIbatch_normalization_2_batchnorm_readvariableop_batch_normalization_2_beta*
_output_shapes
:T*
dtype0�
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:T�
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������T�
 dense_2/Tensordot/ReadVariableOpReadVariableOp/dense_2_tensordot_readvariableop_dense_2_kernel*
_output_shapes

:TT*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)batch_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transpose)batch_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������T�
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Tc
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Ta
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������T�
dense_2/BiasAdd/ReadVariableOpReadVariableOp+dense_2_biasadd_readvariableop_dense_2_bias*
_output_shapes
:T*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Tn
dense_2/p_re_lu_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������T�
 dense_2/p_re_lu_2/ReadVariableOpReadVariableOp8dense_2_p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0o
dense_2/p_re_lu_2/NegNeg(dense_2/p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes

:Tn
dense_2/p_re_lu_2/Neg_1Negdense_2/BiasAdd:output:0*
T0*+
_output_shapes
:���������Ts
dense_2/p_re_lu_2/Relu_1Reludense_2/p_re_lu_2/Neg_1:y:0*
T0*+
_output_shapes
:���������T�
dense_2/p_re_lu_2/mulMuldense_2/p_re_lu_2/Neg:y:0&dense_2/p_re_lu_2/Relu_1:activations:0*
T0*+
_output_shapes
:���������T�
dense_2/p_re_lu_2/addAddV2$dense_2/p_re_lu_2/Relu:activations:0dense_2/p_re_lu_2/mul:z:0*
T0*+
_output_shapes
:���������Ta
conv1d_transpose_1/ShapeShapedense_2/p_re_lu_2/add:z:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :*�
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/mul:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDimsdense_2/p_re_lu_2/add:z:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������T�
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpYconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*T*
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:*T�
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask�
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*/
_output_shapes
:���������4**
paddingSAME*
strides
�
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*+
_output_shapes
:���������4**
squeeze_dims
�
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
"batch_normalization_3/moments/meanMean4conv1d_transpose_1/conv1d_transpose/Squeeze:output:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(�
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*"
_output_shapes
:*�
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference4conv1d_transpose_1/conv1d_transpose/Squeeze:output:03batch_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:���������4*�
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:**
	keep_dims(�
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:**
squeeze_dims
 �
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes
:**
squeeze_dims
 p
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOpVbatch_normalization_3_assignmovingavg_readvariableop_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0�
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes
:*�
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:*�
%batch_normalization_3/AssignMovingAvgAssignSubVariableOpVbatch_normalization_3_assignmovingavg_readvariableop_batch_normalization_3_moving_mean-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp\batch_normalization_3_assignmovingavg_1_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0�
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes
:*�
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:*�
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp\batch_normalization_3_assignmovingavg_1_readvariableop_batch_normalization_3_moving_variance/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:*|
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:*�
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpNbatch_normalization_3_batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0�
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*�
%batch_normalization_3/batchnorm/mul_1Mul4conv1d_transpose_1/conv1d_transpose/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������4*�
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:*�
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpIbatch_normalization_3_batchnorm_readvariableop_batch_normalization_3_beta*
_output_shapes
:**
dtype0�
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:*�
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������4*�
zero_padding1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       
zero_padding1d/PadPadinputs_1$zero_padding1d/Pad/paddings:output:0*
T0*+
_output_shapes
:����������
 dense_3/Tensordot/ReadVariableOpReadVariableOp/dense_3_tensordot_readvariableop_dense_3_kernel*
_output_shapes

:***
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)batch_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)batch_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������4*�
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:*a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������4*�
dense_3/BiasAdd/ReadVariableOpReadVariableOp+dense_3_biasadd_readvariableop_dense_3_bias*
_output_shapes
:**
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������4*n
dense_3/p_re_lu_3/ReluReludense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
 dense_3/p_re_lu_3/ReadVariableOpReadVariableOp8dense_3_p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0o
dense_3/p_re_lu_3/NegNeg(dense_3/p_re_lu_3/ReadVariableOp:value:0*
T0*
_output_shapes

:4*n
dense_3/p_re_lu_3/Neg_1Negdense_3/BiasAdd:output:0*
T0*+
_output_shapes
:���������4*s
dense_3/p_re_lu_3/Relu_1Reludense_3/p_re_lu_3/Neg_1:y:0*
T0*+
_output_shapes
:���������4*�
dense_3/p_re_lu_3/mulMuldense_3/p_re_lu_3/Neg:y:0&dense_3/p_re_lu_3/Relu_1:activations:0*
T0*+
_output_shapes
:���������4*�
dense_3/p_re_lu_3/addAddV2$dense_3/p_re_lu_3/Relu:activations:0dense_3/p_re_lu_3/mul:z:0*
T0*+
_output_shapes
:���������4*q
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
lambda_1/strided_sliceStridedSlicezero_padding1d/Pad:output:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten/ReshapeReshapedense_3/p_re_lu_3/add:z:0flatten/Const:output:0*
T0*(
_output_shapes
:����������\
dropout/ShapeShapelambda_1/strided_slice:output:0*
T0*
_output_shapes
:e
dropout/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
dropout/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
dropout/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
dropout/strided_sliceStridedSlicedropout/Shape:output:0$dropout/strided_slice/stack:output:0&dropout/strided_slice/stack_1:output:0&dropout/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/packed/1Const*
_output_shapes
: *
dtype0*
value	B :R
dropout/packed/2Const*
_output_shapes
: *
dtype0*
value	B :�
dropout/packedPackdropout/strided_slice:output:0dropout/packed/1:output:0dropout/packed/2:output:0*
N*
T0*
_output_shapes
:Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 */��?�
dropout/dropout/MulMullambda_1/strided_slice:output:0dropout/dropout/Const:output:0*
T0*+
_output_shapes
:����������
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/packed:output:0*
T0*+
_output_shapes
:���������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff�>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*+
_output_shapes
:����������
dense_4/MatMul/ReadVariableOpReadVariableOp,dense_4_matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
��	*
dtype0�
dense_4/MatMulMatMulflatten/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	�
dense_4/BiasAdd/ReadVariableOpReadVariableOp+dense_4_biasadd_readvariableop_dense_4_bias*
_output_shapes	
:�	*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	`
Reshaped_upsampled/ShapeShapedense_4/BiasAdd:output:0*
T0*
_output_shapes
:p
&Reshaped_upsampled/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(Reshaped_upsampled/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(Reshaped_upsampled/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 Reshaped_upsampled/strided_sliceStridedSlice!Reshaped_upsampled/Shape:output:0/Reshaped_upsampled/strided_slice/stack:output:01Reshaped_upsampled/strided_slice/stack_1:output:01Reshaped_upsampled/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"Reshaped_upsampled/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"Reshaped_upsampled/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :*�
 Reshaped_upsampled/Reshape/shapePack)Reshaped_upsampled/strided_slice:output:0+Reshaped_upsampled/Reshape/shape/1:output:0+Reshaped_upsampled/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
Reshaped_upsampled/ReshapeReshapedense_4/BiasAdd:output:0)Reshaped_upsampled/Reshape/shape:output:0*
T0*+
_output_shapes
:���������*p
%decoder_x_embed/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
!decoder_x_embed/Conv1D/ExpandDims
ExpandDims!dropout/dropout/SelectV2:output:0.decoder_x_embed/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpIdecoder_x_embed_conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel*"
_output_shapes
:*
dtype0i
'decoder_x_embed/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
#decoder_x_embed/Conv1D/ExpandDims_1
ExpandDims:decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp:value:00decoder_x_embed/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
decoder_x_embed/Conv1DConv2D*decoder_x_embed/Conv1D/ExpandDims:output:0,decoder_x_embed/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
decoder_x_embed/Conv1D/SqueezeSqueezedecoder_x_embed/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
&decoder_x_embed/BiasAdd/ReadVariableOpReadVariableOp;decoder_x_embed_biasadd_readvariableop_decoder_x_embed_bias*
_output_shapes
:*
dtype0�
decoder_x_embed/BiasAddBiasAdd'decoder_x_embed/Conv1D/Squeeze:output:0.decoder_x_embed/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z
concatinated/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatinated/concatConcatV2#Reshaped_upsampled/Reshape:output:0 decoder_x_embed/BiasAdd:output:0!concatinated/concat/axis:output:0*
N*
T0*+
_output_shapes
:���������?U
	gru/ShapeShapeconcatinated/concat:output:0*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:����������g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gru/transpose	Transposeconcatinated/concat:output:0gru/transpose/perm:output:0*
T0*+
_output_shapes
:���������?L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru/gru_cell/ReadVariableOpReadVariableOp-gru_gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0{
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOpBgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������h
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������l
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������d
gru/gru_cell/TanhTanhgru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������z
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*(
_output_shapes
:����������W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������y
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������~
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0-gru_gru_cell_readvariableop_gru_gru_cell_bias6gru_gru_cell_matmul_readvariableop_gru_gru_cell_kernelBgru_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( * 
bodyR
gru_while_body_11250* 
condR
gru_while_cond_11249*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
!processed_x/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
processed_x/Conv1D/ExpandDims
ExpandDimsgru/transpose_1:y:0*processed_x/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
.processed_x/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAprocessed_x_conv1d_expanddims_1_readvariableop_processed_x_kernel*#
_output_shapes
:�*
dtype0e
#processed_x/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
processed_x/Conv1D/ExpandDims_1
ExpandDims6processed_x/Conv1D/ExpandDims_1/ReadVariableOp:value:0,processed_x/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
processed_x/Conv1DConv2D&processed_x/Conv1D/ExpandDims:output:0(processed_x/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
processed_x/Conv1D/SqueezeSqueezeprocessed_x/Conv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

����������
"processed_x/BiasAdd/ReadVariableOpReadVariableOp3processed_x_biasadd_readvariableop_processed_x_bias*
_output_shapes
:*
dtype0�
processed_x/BiasAddBiasAdd#processed_x/Conv1D/Squeeze:output:0*processed_x/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
 dense_5/Tensordot/ReadVariableOpReadVariableOp/dense_5_tensordot_readvariableop_dense_5_kernel*
_output_shapes

:*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_5/Tensordot/ShapeShapeprocessed_x/BiasAdd:output:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposeprocessed_x/BiasAdd:output:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp+dense_5_biasadd_readvariableop_dense_5_bias*
_output_shapes
:*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������j
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*+
_output_shapes
:���������l
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp'^decoder_x_embed/BiasAdd/ReadVariableOp3^decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp!^dense_2/p_re_lu_2/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp!^dense_3/p_re_lu_3/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while#^processed_x/BiasAdd/ReadVariableOp/^processed_x/Conv1D/ExpandDims_1/ReadVariableOp%^upsampler_mlp/BiasAdd/ReadVariableOp$^upsampler_mlp/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2�
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp2P
&decoder_x_embed/BiasAdd/ReadVariableOp&decoder_x_embed/BiasAdd/ReadVariableOp2h
2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp2decoder_x_embed/Conv1D/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2D
 dense_2/p_re_lu_2/ReadVariableOp dense_2/p_re_lu_2/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2D
 dense_3/p_re_lu_3/ReadVariableOp dense_3/p_re_lu_3/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while2H
"processed_x/BiasAdd/ReadVariableOp"processed_x/BiasAdd/ReadVariableOp2`
.processed_x/Conv1D/ExpandDims_1/ReadVariableOp.processed_x/Conv1D/ExpandDims_1/ReadVariableOp2L
$upsampler_mlp/BiasAdd/ReadVariableOp$upsampler_mlp/BiasAdd/ReadVariableOp2J
#upsampler_mlp/MatMul/ReadVariableOp#upsampler_mlp/MatMul/ReadVariableOp:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�	
�
H__inference_upsampler_mlp_layer_call_and_return_conditional_losses_11394

inputs=
*matmul_readvariableop_upsampler_mlp_kernel:	�8
)biasadd_readvariableop_upsampler_mlp_bias:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOp*matmul_readvariableop_upsampler_mlp_kernel*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
BiasAdd/ReadVariableOpReadVariableOp)biasadd_readvariableop_upsampler_mlp_bias*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
B__inference_dropout_layer_call_and_return_conditional_losses_11831

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
packed/1Const*
_output_shapes
: *
dtype0*
value	B :J
packed/2Const*
_output_shapes
: *
dtype0*
value	B :z
packedPackstrided_slice:output:0packed/1:output:0packed/2:output:0*
N*
T0*
_output_shapes
:R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 */��?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:����������
$dropout/random_uniform/RandomUniformRandomUniformpacked:output:0*
T0*+
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_11754

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0**
_input_shapes
:���������4*:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
�

^
B__inference_reshape_layer_call_and_return_conditional_losses_11412

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:����������]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11652

inputsL
>batchnorm_readvariableop_batch_normalization_3_moving_variance:*F
8batchnorm_mul_readvariableop_batch_normalization_3_gamma:*J
<batchnorm_readvariableop_1_batch_normalization_3_moving_mean:*C
5batchnorm_readvariableop_2_batch_normalization_3_beta:*
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp>batchnorm_readvariableop_batch_normalization_3_moving_variance*
_output_shapes
:**
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:*P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:*�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_3_gamma*
_output_shapes
:**
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:*p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������*�
batchnorm/ReadVariableOp_1ReadVariableOp<batchnorm_readvariableop_1_batch_normalization_3_moving_mean*
_output_shapes
:**
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:*�
batchnorm/ReadVariableOp_2ReadVariableOp5batchnorm_readvariableop_2_batch_normalization_3_beta*
_output_shapes
:**
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:*
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������*o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������*�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������*: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������*
 
_user_specified_nameinputs
�A
�	
gru_while_body_11250$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0H
5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�Q
>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�^
Jgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensorF
3gru_while_gru_cell_readvariableop_gru_gru_cell_bias:	�O
<gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�\
Hgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����(gru/while/gru_cell/MatMul/ReadVariableOp�*gru/while/gru_cell/MatMul_1/ReadVariableOp�!gru/while/gru_cell/ReadVariableOp�
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
!gru/while/gru_cell/ReadVariableOpReadVariableOp5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0�
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpJgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������t
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������x
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������p
gru/while/gru_cell/TanhTanhgru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*(
_output_shapes
:����������]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0gru/while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: �
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: �
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*(
_output_shapes
:�����������
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Hgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelJgru_while_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"~
<gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"l
3gru_while_gru_cell_readvariableop_gru_gru_cell_bias5gru_while_gru_cell_readvariableop_gru_gru_cell_bias_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"�
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_processed_x_layer_call_fn_12535

inputs)
processed_x_kernel:�
processed_x_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsprocessed_x_kernelprocessed_x_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_processed_x_layer_call_and_return_conditional_losses_9127s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_gru_layer_call_fn_11908

inputs$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9107t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�
N
2__inference_Reshaped_upsampled_layer_call_fn_11836

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������*"
identityIdentity:output:0*'
_input_shapes
:����������	:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�`
�
B__inference_model_1_layer_call_and_return_conditional_losses_10133

inputs
inputs_15
"upsampler_mlp_upsampler_mlp_kernel:	�/
 upsampler_mlp_upsampler_mlp_bias:	�?
(conv1d_transpose_conv1d_transpose_kernel:T�E
7batch_normalization_2_batch_normalization_2_moving_mean:TI
;batch_normalization_2_batch_normalization_2_moving_variance:T?
1batch_normalization_2_batch_normalization_2_gamma:T>
0batch_normalization_2_batch_normalization_2_beta:T(
dense_2_dense_2_kernel:TT"
dense_2_dense_2_bias:T1
dense_2_dense_2_p_re_lu_2_alpha:TB
,conv1d_transpose_1_conv1d_transpose_1_kernel:*TE
7batch_normalization_3_batch_normalization_3_moving_mean:*I
;batch_normalization_3_batch_normalization_3_moving_variance:*?
1batch_normalization_3_batch_normalization_3_gamma:*>
0batch_normalization_3_batch_normalization_3_beta:*(
dense_3_dense_3_kernel:**"
dense_3_dense_3_bias:*1
dense_3_dense_3_p_re_lu_3_alpha:4**
dense_4_dense_4_kernel:
��	#
dense_4_dense_4_bias:	�	<
&decoder_x_embed_decoder_x_embed_kernel:2
$decoder_x_embed_decoder_x_embed_bias:(
gru_gru_gru_cell_bias:	�*
gru_gru_gru_cell_kernel:	?�5
!gru_gru_gru_cell_recurrent_kernel:
��5
processed_x_processed_x_kernel:�*
processed_x_processed_x_bias:(
dense_5_dense_5_kernel:"
dense_5_dense_5_bias:
identity��-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�(conv1d_transpose/StatefulPartitionedCall�*conv1d_transpose_1/StatefulPartitionedCall�'decoder_x_embed/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�dropout/StatefulPartitionedCall�gru/StatefulPartitionedCall�#processed_x/StatefulPartitionedCall�%upsampler_mlp/StatefulPartitionedCall�
%upsampler_mlp/StatefulPartitionedCallStatefulPartitionedCallinputs"upsampler_mlp_upsampler_mlp_kernel upsampler_mlp_upsampler_mlp_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753�
reshape/PartitionedCallPartitionedCall.upsampler_mlp/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_8770�
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:07batch_normalization_2_batch_normalization_2_moving_mean;batch_normalization_2_batch_normalization_2_moving_variance1batch_normalization_2_batch_normalization_2_gamma0batch_normalization_2_batch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7796�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_biasdense_2_dense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8817�
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:07batch_normalization_3_batch_normalization_3_moving_mean;batch_normalization_3_batch_normalization_3_moving_variance1batch_normalization_3_batch_normalization_3_gamma0batch_normalization_3_batch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_8036�
zero_padding1d/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_biasdense_3_dense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_8868�
lambda_1/PartitionedCallPartitionedCall'zero_padding1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_9892�
flatten/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8889�
dropout/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9837�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8908�
"Reshaped_upsampled/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925�
'decoder_x_embed/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0&decoder_x_embed_decoder_x_embed_kernel$decoder_x_embed_decoder_x_embed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942�
concatinated/PartitionedCallPartitionedCall+Reshaped_upsampled/PartitionedCall:output:00decoder_x_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatinated_layer_call_and_return_conditional_losses_8953�
gru/StatefulPartitionedCallStatefulPartitionedCall%concatinated/PartitionedCall:output:0gru_gru_gru_cell_biasgru_gru_gru_cell_kernel!gru_gru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9424�
#processed_x/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0processed_x_processed_x_kernelprocessed_x_processed_x_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_processed_x_layer_call_and_return_conditional_losses_9127�
dense_5/StatefulPartitionedCallStatefulPartitionedCall,processed_x/StatefulPartitionedCall:output:0dense_5_dense_5_kerneldense_5_dense_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9162{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall(^decoder_x_embed/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^gru/StatefulPartitionedCall$^processed_x/StatefulPartitionedCall&^upsampler_mlp/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2R
'decoder_x_embed/StatefulPartitionedCall'decoder_x_embed/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2J
#processed_x/StatefulPartitionedCall#processed_x/StatefulPartitionedCall2N
%upsampler_mlp/StatefulPartitionedCall%upsampler_mlp/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689

inputs[
Dconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel:T�
identity��,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
stack/2Const*
_output_shapes
: *
dtype0*
value	B :Tn
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#��������������������
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpDconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*#
_output_shapes
:T�*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:T�n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"������������������T*
paddingSAME*
strides
�
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :������������������T*
squeeze_dims
}
IdentityIdentity!conv1d_transpose/Squeeze:output:0^NoOp*
T0*4
_output_shapes"
 :������������������Tu
NoOpNoOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�������������������: 2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�

'__inference_model_1_layer_call_fn_10484
inputs_0
inputs_1'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�.
conv1d_transpose_kernel:T�3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T/
!batch_normalization_2_moving_mean:T(
batch_normalization_2_beta:T 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T/
conv1d_transpose_1_kernel:*T3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*/
!batch_normalization_3_moving_mean:*(
batch_normalization_3_beta:* 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*"
dense_4_kernel:
��	
dense_4_bias:	�	,
decoder_x_embed_kernel:"
decoder_x_embed_bias:$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��)
processed_x_kernel:�
processed_x_bias: 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1upsampler_mlp_kernelupsampler_mlp_biasconv1d_transpose_kernel%batch_normalization_2_moving_variancebatch_normalization_2_gamma!batch_normalization_2_moving_meanbatch_normalization_2_betadense_2_kerneldense_2_biasdense_2_p_re_lu_2_alphaconv1d_transpose_1_kernel%batch_normalization_3_moving_variancebatch_normalization_3_gamma!batch_normalization_3_moving_meanbatch_normalization_3_betadense_3_kerneldense_3_biasdense_3_p_re_lu_3_alphadense_4_kerneldense_4_biasdecoder_x_embed_kerneldecoder_x_embed_biasgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernelprocessed_x_kernelprocessed_x_biasdense_5_kerneldense_5_bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*?
_read_only_resource_inputs!
	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_9167s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
�

'__inference_model_1_layer_call_fn_10306
latent_input
protein_input'
upsampler_mlp_kernel:	�!
upsampler_mlp_bias:	�.
conv1d_transpose_kernel:T�/
!batch_normalization_2_moving_mean:T3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T(
batch_normalization_2_beta:T 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T/
conv1d_transpose_1_kernel:*T/
!batch_normalization_3_moving_mean:*3
%batch_normalization_3_moving_variance:*)
batch_normalization_3_gamma:*(
batch_normalization_3_beta:* 
dense_3_kernel:**
dense_3_bias:*)
dense_3_p_re_lu_3_alpha:4*"
dense_4_kernel:
��	
dense_4_bias:	�	,
decoder_x_embed_kernel:"
decoder_x_embed_bias:$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��)
processed_x_kernel:�
processed_x_bias: 
dense_5_kernel:
dense_5_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllatent_inputprotein_inputupsampler_mlp_kernelupsampler_mlp_biasconv1d_transpose_kernel!batch_normalization_2_moving_mean%batch_normalization_2_moving_variancebatch_normalization_2_gammabatch_normalization_2_betadense_2_kerneldense_2_biasdense_2_p_re_lu_2_alphaconv1d_transpose_1_kernel!batch_normalization_3_moving_mean%batch_normalization_3_moving_variancebatch_normalization_3_gammabatch_normalization_3_betadense_3_kerneldense_3_biasdense_3_p_re_lu_3_alphadense_4_kerneldense_4_biasdecoder_x_embed_kerneldecoder_x_embed_biasgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernelprocessed_x_kernelprocessed_x_biasdense_5_kerneldense_5_bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*;
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_10133s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�
�
J__inference_decoder_x_embed_layer_call_and_return_conditional_losses_11871

inputsO
9conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel:9
+biasadd_readvariableop_decoder_x_embed_bias:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp9conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������~
BiasAdd/ReadVariableOpReadVariableOp+biasadd_readvariableop_decoder_x_embed_bias*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_processed_x_layer_call_and_return_conditional_losses_12550

inputsL
5conv1d_expanddims_1_readvariableop_processed_x_kernel:�5
'biasadd_readvariableop_processed_x_bias:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_expanddims_1_readvariableop_processed_x_kernel*#
_output_shapes
:�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������z
BiasAdd/ReadVariableOpReadVariableOp'biasadd_readvariableop_processed_x_bias*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

i
M__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_11849

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :*�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������*\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������*"
identityIdentity:output:0*'
_input_shapes
:����������	:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
2__inference_conv1d_transpose_1_layer_call_fn_11578

inputs/
conv1d_transpose_1_kernel:*T
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_transpose_1_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*5
_input_shapes$
":������������������T: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�_
�
B__inference_model_1_layer_call_and_return_conditional_losses_10359
latent_input
protein_input5
"upsampler_mlp_upsampler_mlp_kernel:	�/
 upsampler_mlp_upsampler_mlp_bias:	�?
(conv1d_transpose_conv1d_transpose_kernel:T�I
;batch_normalization_2_batch_normalization_2_moving_variance:T?
1batch_normalization_2_batch_normalization_2_gamma:TE
7batch_normalization_2_batch_normalization_2_moving_mean:T>
0batch_normalization_2_batch_normalization_2_beta:T(
dense_2_dense_2_kernel:TT"
dense_2_dense_2_bias:T1
dense_2_dense_2_p_re_lu_2_alpha:TB
,conv1d_transpose_1_conv1d_transpose_1_kernel:*TI
;batch_normalization_3_batch_normalization_3_moving_variance:*?
1batch_normalization_3_batch_normalization_3_gamma:*E
7batch_normalization_3_batch_normalization_3_moving_mean:*>
0batch_normalization_3_batch_normalization_3_beta:*(
dense_3_dense_3_kernel:**"
dense_3_dense_3_bias:*1
dense_3_dense_3_p_re_lu_3_alpha:4**
dense_4_dense_4_kernel:
��	#
dense_4_dense_4_bias:	�	<
&decoder_x_embed_decoder_x_embed_kernel:2
$decoder_x_embed_decoder_x_embed_bias:(
gru_gru_gru_cell_bias:	�*
gru_gru_gru_cell_kernel:	?�5
!gru_gru_gru_cell_recurrent_kernel:
��5
processed_x_processed_x_kernel:�*
processed_x_processed_x_bias:(
dense_5_dense_5_kernel:"
dense_5_dense_5_bias:
identity��-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�(conv1d_transpose/StatefulPartitionedCall�*conv1d_transpose_1/StatefulPartitionedCall�'decoder_x_embed/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�gru/StatefulPartitionedCall�#processed_x/StatefulPartitionedCall�%upsampler_mlp/StatefulPartitionedCall�
%upsampler_mlp/StatefulPartitionedCallStatefulPartitionedCalllatent_input"upsampler_mlp_upsampler_mlp_kernel upsampler_mlp_upsampler_mlp_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753�
reshape/PartitionedCallPartitionedCall.upsampler_mlp/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_8770�
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0;batch_normalization_2_batch_normalization_2_moving_variance1batch_normalization_2_batch_normalization_2_gamma7batch_normalization_2_batch_normalization_2_moving_mean0batch_normalization_2_batch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7753�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_biasdense_2_dense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8817�
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0;batch_normalization_3_batch_normalization_3_moving_variance1batch_normalization_3_batch_normalization_3_gamma7batch_normalization_3_batch_normalization_3_moving_mean0batch_normalization_3_batch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_7993�
zero_padding1d/PartitionedCallPartitionedCallprotein_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_biasdense_3_dense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_8868�
lambda_1/PartitionedCallPartitionedCall'zero_padding1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_8881�
flatten/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8889�
dropout/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8896�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8908�
"Reshaped_upsampled/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925�
'decoder_x_embed/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0&decoder_x_embed_decoder_x_embed_kernel$decoder_x_embed_decoder_x_embed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942�
concatinated/PartitionedCallPartitionedCall+Reshaped_upsampled/PartitionedCall:output:00decoder_x_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatinated_layer_call_and_return_conditional_losses_8953�
gru/StatefulPartitionedCallStatefulPartitionedCall%concatinated/PartitionedCall:output:0gru_gru_gru_cell_biasgru_gru_gru_cell_kernel!gru_gru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9107�
#processed_x/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0processed_x_processed_x_kernelprocessed_x_processed_x_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_processed_x_layer_call_and_return_conditional_losses_9127�
dense_5/StatefulPartitionedCallStatefulPartitionedCall,processed_x/StatefulPartitionedCall:output:0dense_5_dense_5_kerneldense_5_dense_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9162{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall(^decoder_x_embed/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall$^processed_x/StatefulPartitionedCall&^upsampler_mlp/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2R
'decoder_x_embed/StatefulPartitionedCall'decoder_x_embed/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2J
#processed_x/StatefulPartitionedCall#processed_x/StatefulPartitionedCall2N
%upsampler_mlp/StatefulPartitionedCall%upsampler_mlp/StatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelatent_input:ZV
+
_output_shapes
:���������
'
_user_specified_nameprotein_input
�
�
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942

inputsO
9conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel:9
+biasadd_readvariableop_decoder_x_embed_bias:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp9conv1d_expanddims_1_readvariableop_decoder_x_embed_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������~
BiasAdd/ReadVariableOpReadVariableOp+biasadd_readvariableop_decoder_x_embed_bias*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�#
�
B__inference_dense_2_layer_call_and_return_conditional_losses_11572

inputs9
'tensordot_readvariableop_dense_2_kernel:TT1
#biasadd_readvariableop_dense_2_bias:TB
0p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha:T
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�p_re_lu_2/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_2_kernel*
_output_shapes

:TT*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������T�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������T[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:TY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������Tv
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_2_bias*
_output_shapes
:T*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������T^
p_re_lu_2/ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������T�
p_re_lu_2/ReadVariableOpReadVariableOp0p_re_lu_2_readvariableop_dense_2_p_re_lu_2_alpha*
_output_shapes

:T*
dtype0_
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes

:T^
p_re_lu_2/Neg_1NegBiasAdd:output:0*
T0*+
_output_shapes
:���������Tc
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*+
_output_shapes
:���������T}
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*+
_output_shapes
:���������T}
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*+
_output_shapes
:���������Td
IdentityIdentityp_re_lu_2/add:z:0^NoOp*
T0*+
_output_shapes
:���������T�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������T: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:S O
+
_output_shapes
:���������T
 
_user_specified_nameinputs
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_8881

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
A__inference_dropout_layer_call_and_return_conditional_losses_9837

inputs
identity�;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskJ
packed/1Const*
_output_shapes
: *
dtype0*
value	B :J
packed/2Const*
_output_shapes
: *
dtype0*
value	B :z
packedPackstrided_slice:output:0packed/1:output:0packed/2:output:0*
N*
T0*
_output_shapes
:R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 */��?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:����������
$dropout/random_uniform/RandomUniformRandomUniformpacked:output:0*
T0*+
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff�>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7753

inputsL
>batchnorm_readvariableop_batch_normalization_2_moving_variance:TF
8batchnorm_mul_readvariableop_batch_normalization_2_gamma:TJ
<batchnorm_readvariableop_1_batch_normalization_2_moving_mean:TC
5batchnorm_readvariableop_2_batch_normalization_2_beta:T
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOp�
batchnorm/ReadVariableOpReadVariableOp>batchnorm_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:TP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Tp
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������T�
batchnorm/ReadVariableOp_1ReadVariableOp<batchnorm_readvariableop_1_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:T�
batchnorm/ReadVariableOp_2ReadVariableOp5batchnorm_readvariableop_2_batch_normalization_2_beta*
_output_shapes
:T*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������To
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������T�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������T: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�4
�
=__inference_gru_layer_call_and_return_conditional_losses_8289

inputs-
gru_cell_gru_gru_cell_bias:	�/
gru_cell_gru_gru_cell_kernel:	?�:
&gru_cell_gru_gru_cell_recurrent_kernel:
��
identity�� gru_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_gru_gru_cell_biasgru_cell_gru_gru_cell_kernel&gru_cell_gru_gru_cell_recurrent_kernel*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8218n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_gru_gru_cell_biasgru_cell_gru_gru_cell_kernel&gru_cell_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8228*
condR
while_cond_8227*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�L
�
>__inference_gru_layer_call_and_return_conditional_losses_12069
inputs_0<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11980*
condR
while_cond_11979*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:������������������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs_0
�'
�
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929

inputs\
Fconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:*T
identity��,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
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
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
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
stack/2Const*
_output_shapes
: *
dtype0*
value	B :*n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"������������������T�
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*T*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:*Tn
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:�
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"������������������**
paddingSAME*
strides
�
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :������������������**
squeeze_dims
}
IdentityIdentity!conv1d_transpose/Squeeze:output:0^NoOp*
T0*4
_output_shapes"
 :������������������*u
NoOpNoOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":������������������T: 2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�_
�
A__inference_model_1_layer_call_and_return_conditional_losses_9167

inputs
inputs_15
"upsampler_mlp_upsampler_mlp_kernel:	�/
 upsampler_mlp_upsampler_mlp_bias:	�?
(conv1d_transpose_conv1d_transpose_kernel:T�I
;batch_normalization_2_batch_normalization_2_moving_variance:T?
1batch_normalization_2_batch_normalization_2_gamma:TE
7batch_normalization_2_batch_normalization_2_moving_mean:T>
0batch_normalization_2_batch_normalization_2_beta:T(
dense_2_dense_2_kernel:TT"
dense_2_dense_2_bias:T1
dense_2_dense_2_p_re_lu_2_alpha:TB
,conv1d_transpose_1_conv1d_transpose_1_kernel:*TI
;batch_normalization_3_batch_normalization_3_moving_variance:*?
1batch_normalization_3_batch_normalization_3_gamma:*E
7batch_normalization_3_batch_normalization_3_moving_mean:*>
0batch_normalization_3_batch_normalization_3_beta:*(
dense_3_dense_3_kernel:**"
dense_3_dense_3_bias:*1
dense_3_dense_3_p_re_lu_3_alpha:4**
dense_4_dense_4_kernel:
��	#
dense_4_dense_4_bias:	�	<
&decoder_x_embed_decoder_x_embed_kernel:2
$decoder_x_embed_decoder_x_embed_bias:(
gru_gru_gru_cell_bias:	�*
gru_gru_gru_cell_kernel:	?�5
!gru_gru_gru_cell_recurrent_kernel:
��5
processed_x_processed_x_kernel:�*
processed_x_processed_x_bias:(
dense_5_dense_5_kernel:"
dense_5_dense_5_bias:
identity��-batch_normalization_2/StatefulPartitionedCall�-batch_normalization_3/StatefulPartitionedCall�(conv1d_transpose/StatefulPartitionedCall�*conv1d_transpose_1/StatefulPartitionedCall�'decoder_x_embed/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�gru/StatefulPartitionedCall�#processed_x/StatefulPartitionedCall�%upsampler_mlp/StatefulPartitionedCall�
%upsampler_mlp/StatefulPartitionedCallStatefulPartitionedCallinputs"upsampler_mlp_upsampler_mlp_kernel upsampler_mlp_upsampler_mlp_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_upsampler_mlp_layer_call_and_return_conditional_losses_8753�
reshape/PartitionedCallPartitionedCall.upsampler_mlp/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_8770�
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_7689�
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0;batch_normalization_2_batch_normalization_2_moving_variance1batch_normalization_2_batch_normalization_2_gamma7batch_normalization_2_batch_normalization_2_moving_mean0batch_normalization_2_batch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7753�
dense_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_2_dense_2_kerneldense_2_dense_2_biasdense_2_dense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8817�
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_7929�
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0;batch_normalization_3_batch_normalization_3_moving_variance1batch_normalization_3_batch_normalization_3_gamma7batch_normalization_3_batch_normalization_3_moving_mean0batch_normalization_3_batch_normalization_3_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_3_layer_call_and_return_conditional_losses_7993�
zero_padding1d/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_zero_padding1d_layer_call_and_return_conditional_losses_8139�
dense_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0dense_3_dense_3_kerneldense_3_dense_3_biasdense_3_dense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_8868�
lambda_1/PartitionedCallPartitionedCall'zero_padding1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_8881�
flatten/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8889�
dropout/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8896�
dense_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_4_dense_4_kerneldense_4_dense_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_8908�
"Reshaped_upsampled/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_8925�
'decoder_x_embed/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0&decoder_x_embed_decoder_x_embed_kernel$decoder_x_embed_decoder_x_embed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942�
concatinated/PartitionedCallPartitionedCall+Reshaped_upsampled/PartitionedCall:output:00decoder_x_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_concatinated_layer_call_and_return_conditional_losses_8953�
gru/StatefulPartitionedCallStatefulPartitionedCall%concatinated/PartitionedCall:output:0gru_gru_gru_cell_biasgru_gru_gru_cell_kernel!gru_gru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9107�
#processed_x/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0processed_x_processed_x_kernelprocessed_x_processed_x_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_processed_x_layer_call_and_return_conditional_losses_9127�
dense_5/StatefulPartitionedCallStatefulPartitionedCall,processed_x/StatefulPartitionedCall:output:0dense_5_dense_5_kerneldense_5_dense_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9162{
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall(^decoder_x_embed/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall^gru/StatefulPartitionedCall$^processed_x/StatefulPartitionedCall&^upsampler_mlp/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:���������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall2R
'decoder_x_embed/StatefulPartitionedCall'decoder_x_embed/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2J
#processed_x/StatefulPartitionedCall#processed_x/StatefulPartitionedCall2N
%upsampler_mlp/StatefulPartitionedCall%upsampler_mlp/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_p_re_lu_3_layer_call_fn_12612

inputs)
dense_3_p_re_lu_3_alpha:4*
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_p_re_lu_3_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������4**#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_p_re_lu_3_layer_call_and_return_conditional_losses_8113s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������4*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*>
_input_shapes-
+:'���������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�<
�
while_body_11980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_readvariableop_gru_gru_cell_bias_0:	�M
:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0:	?�Z
Fwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_readvariableop_gru_gru_cell_bias:	�K
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�X
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
����$while/gru_cell/MatMul/ReadVariableOp�&while/gru_cell/MatMul_1/ReadVariableOp�while/gru_cell/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
while/gru_cell/ReadVariableOpReadVariableOp1while_gru_cell_readvariableop_gru_gru_cell_bias_0*
_output_shapes
:	�*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0*
_output_shapes
:	?�*
dtype0�
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOpFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0* 
_output_shapes
:
��*
dtype0�
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:�����������
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:����������h
while/gru_cell/TanhTanhwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:����������Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0while/gru_cell/Tanh:y:0*
T0*(
_output_shapes
:�����������
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "�
Dwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernelFwhile_gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel_0"v
8while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel:while_gru_cell_matmul_readvariableop_gru_gru_cell_kernel_0"d
/while_gru_cell_readvariableop_gru_gru_cell_bias1while_gru_cell_readvariableop_gru_gru_cell_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
gru_while_cond_11249$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1;
7gru_while_gru_while_cond_11249___redundant_placeholder0;
7gru_while_gru_while_cond_11249___redundant_placeholder1;
7gru_while_gru_while_cond_11249___redundant_placeholder2;
7gru_while_gru_while_cond_11249___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
'__inference_dense_2_layer_call_fn_11534

inputs 
dense_2_kernel:TT
dense_2_bias:T)
dense_2_p_re_lu_2_alpha:T
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_kerneldense_2_biasdense_2_p_re_lu_2_alpha*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������T*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8817s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������T: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������T
 
_user_specified_nameinputs
�	
�
A__inference_dense_4_layer_call_and_return_conditional_losses_8908

inputs8
$matmul_readvariableop_dense_4_kernel:
��	2
#biasadd_readvariableop_dense_4_bias:	�	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp|
MatMul/ReadVariableOpReadVariableOp$matmul_readvariableop_dense_4_kernel* 
_output_shapes
:
��	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	w
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_4_bias*
_output_shapes	
:�	*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������	`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
5__inference_batch_normalization_2_layer_call_fn_11463

inputs3
%batch_normalization_2_moving_variance:T)
batch_normalization_2_gamma:T/
!batch_normalization_2_moving_mean:T(
batch_normalization_2_beta:T
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs%batch_normalization_2_moving_variancebatch_normalization_2_gamma!batch_normalization_2_moving_meanbatch_normalization_2_beta*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������T*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7753|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������T`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������T: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�'
�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11526

inputsN
@assignmovingavg_readvariableop_batch_normalization_2_moving_mean:TT
Fassignmovingavg_1_readvariableop_batch_normalization_2_moving_variance:TF
8batchnorm_mul_readvariableop_batch_normalization_2_gamma:TA
3batchnorm_readvariableop_batch_normalization_2_beta:T
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:T�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������Ts
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:T*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:T*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp@assignmovingavg_readvariableop_batch_normalization_2_moving_mean*
_output_shapes
:T*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:Tx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:T�
AssignMovingAvgAssignSubVariableOp@assignmovingavg_readvariableop_batch_normalization_2_moving_meanAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOpFassignmovingavg_1_readvariableop_batch_normalization_2_moving_variance*
_output_shapes
:T*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:T~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:T�
AssignMovingAvg_1AssignSubVariableOpFassignmovingavg_1_readvariableop_batch_normalization_2_moving_varianceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:TP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:T�
batchnorm/mul/ReadVariableOpReadVariableOp8batchnorm_mul_readvariableop_batch_normalization_2_gamma*
_output_shapes
:T*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Tp
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������Th
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:T�
batchnorm/ReadVariableOpReadVariableOp3batchnorm_readvariableop_batch_normalization_2_beta*
_output_shapes
:T*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:T
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������To
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :������������������T�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*;
_input_shapes*
(:������������������T: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������T
 
_user_specified_nameinputs
�L
�
>__inference_gru_layer_call_and_return_conditional_losses_12222
inputs_0<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_12133*
condR
while_cond_12132*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:������������������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs_0
�
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_11772

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"    ����    j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�!
�
while_body_8228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
"while_gru_cell_gru_gru_cell_bias_0:	�7
$while_gru_cell_gru_gru_cell_kernel_0:	?�B
.while_gru_cell_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
 while_gru_cell_gru_gru_cell_bias:	�5
"while_gru_cell_gru_gru_cell_kernel:	?�@
,while_gru_cell_gru_gru_cell_recurrent_kernel:
����&while/gru_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_gru_cell_gru_gru_cell_bias_0$while_gru_cell_gru_gru_cell_kernel_0.while_gru_cell_gru_gru_cell_recurrent_kernel_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8218�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "F
 while_gru_cell_gru_gru_cell_bias"while_gru_cell_gru_gru_cell_bias_0"J
"while_gru_cell_gru_gru_cell_kernel$while_gru_cell_gru_gru_cell_kernel_0"^
,while_gru_cell_gru_gru_cell_recurrent_kernel.while_gru_cell_gru_gru_cell_recurrent_kernel_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�!
�
while_body_8473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
"while_gru_cell_gru_gru_cell_bias_0:	�7
$while_gru_cell_gru_gru_cell_kernel_0:	?�B
.while_gru_cell_gru_gru_cell_recurrent_kernel_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
 while_gru_cell_gru_gru_cell_bias:	�5
"while_gru_cell_gru_gru_cell_kernel:	?�@
,while_gru_cell_gru_gru_cell_recurrent_kernel:
����&while/gru_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2"while_gru_cell_gru_gru_cell_bias_0$while_gru_cell_gru_gru_cell_kernel_0.while_gru_cell_gru_gru_cell_recurrent_kernel_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_8349�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "F
 while_gru_cell_gru_gru_cell_bias"while_gru_cell_gru_gru_cell_bias_0"J
"while_gru_cell_gru_gru_cell_kernel$while_gru_cell_gru_gru_cell_kernel_0"^
,while_gru_cell_gru_gru_cell_recurrent_kernel.while_gru_cell_gru_gru_cell_recurrent_kernel_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
e
I__inference_zero_padding1d_layer_call_and_return_conditional_losses_11743

inputs
identityu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       q
PadPadinputsPad/paddings:output:0*
T0*=
_output_shapes+
):'���������������������������j
IdentityIdentityPad:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�#
�
B__inference_dense_3_layer_call_and_return_conditional_losses_11732

inputs9
'tensordot_readvariableop_dense_3_kernel:**1
#biasadd_readvariableop_dense_3_bias:*B
0p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha:4*
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�p_re_lu_3/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp'tensordot_readvariableop_dense_3_kernel*
_output_shapes

:***
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������4*�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:*Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������4*v
BiasAdd/ReadVariableOpReadVariableOp#biasadd_readvariableop_dense_3_bias*
_output_shapes
:**
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������4*^
p_re_lu_3/ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������4*�
p_re_lu_3/ReadVariableOpReadVariableOp0p_re_lu_3_readvariableop_dense_3_p_re_lu_3_alpha*
_output_shapes

:4**
dtype0_
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*
_output_shapes

:4*^
p_re_lu_3/Neg_1NegBiasAdd:output:0*
T0*+
_output_shapes
:���������4*c
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*+
_output_shapes
:���������4*}
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*+
_output_shapes
:���������4*}
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*+
_output_shapes
:���������4*d
IdentityIdentityp_re_lu_3/add:z:0^NoOp*
T0*+
_output_shapes
:���������4*�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp^p_re_lu_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������4*: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp:S O
+
_output_shapes
:���������4*
 
_user_specified_nameinputs
�
�
#__inference_gru_layer_call_fn_11916

inputs$
gru_gru_cell_bias:	�&
gru_gru_cell_kernel:	?�1
gru_gru_cell_recurrent_kernel:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsgru_gru_cell_biasgru_gru_cell_kernelgru_gru_cell_recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_9424t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�L
�
>__inference_gru_layer_call_and_return_conditional_losses_12528

inputs<
)gru_cell_readvariableop_gru_gru_cell_bias:	�E
2gru_cell_matmul_readvariableop_gru_gru_cell_kernel:	?�R
>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel:
��
identity��gru_cell/MatMul/ReadVariableOp� gru_cell/MatMul_1/ReadVariableOp�gru_cell/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
gru_cell/ReadVariableOpReadVariableOp)gru_cell_readvariableop_gru_gru_cell_bias*
_output_shapes
:	�*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num�
gru_cell/MatMul/ReadVariableOpReadVariableOp2gru_cell_matmul_readvariableop_gru_gru_cell_kernel*
_output_shapes
:	?�*
dtype0�
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:����������c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:����������:����������:����������*
	num_split�
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel* 
_output_shapes
:
��*
dtype0�
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:����������c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ����e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:����������:����������:����������*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:����������`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:����������~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:����������d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:����������y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:����������u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:����������\
gru_cell/TanhTanhgru_cell/add_2:z:0*
T0*(
_output_shapes
:����������n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:����������S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:����������m
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Tanh:y:0*
T0*(
_output_shapes
:����������r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_readvariableop_gru_gru_cell_bias2gru_cell_matmul_readvariableop_gru_gru_cell_kernel>gru_cell_matmul_1_readvariableop_gru_gru_cell_recurrent_kernel*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_12439*
condR
while_cond_12438*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:���������?: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������?
 
_user_specified_nameinputs
�
D
(__inference_lambda_1_layer_call_fn_11764

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_9892d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_decoder_x_embed_layer_call_fn_11856

inputs,
decoder_x_embed_kernel:"
decoder_x_embed_bias:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsdecoder_x_embed_kerneldecoder_x_embed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_x_embed_layer_call_and_return_conditional_losses_8942s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
latent_input5
serving_default_latent_input:0���������
K
protein_input:
serving_default_protein_input:0���������?
dense_54
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer-11
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer_with_weights-8
layer-16
layer-17
layer_with_weights-9
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
 3_jit_compiled_convolution_op"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:axis
	;gamma
<beta
=moving_mean
>moving_variance"
_tf_keras_layer
�
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E
activation

Fkernel
Gbias"
_tf_keras_layer
�
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses

Nkernel
 O_jit_compiled_convolution_op"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance"
_tf_keras_layer
"
_tf_keras_input_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a
activation

bkernel
cbias"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias"
_tf_keras_layer
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
	�cell
�
state_spec"
_tf_keras_rnn_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
$0
%1
22
;3
<4
=5
>6
F7
G8
�9
N10
W11
X12
Y13
Z14
b15
c16
�17
|18
}19
�20
�21
�22
�23
�24
�25
�26
�27
�28"
trackable_list_wrapper
�
$0
%1
22
;3
<4
F5
G6
�7
N8
W9
X10
b11
c12
�13
|14
}15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
&__inference_model_1_layer_call_fn_9199
'__inference_model_1_layer_call_fn_10484
'__inference_model_1_layer_call_fn_10519
'__inference_model_1_layer_call_fn_10306�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
B__inference_model_1_layer_call_and_return_conditional_losses_10927
B__inference_model_1_layer_call_and_return_conditional_losses_11377
B__inference_model_1_layer_call_and_return_conditional_losses_10359
B__inference_model_1_layer_call_and_return_conditional_losses_10412�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
__inference__wrapped_model_7649latent_inputprotein_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-
�serving_default"
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_upsampler_mlp_layer_call_fn_11384�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_upsampler_mlp_layer_call_and_return_conditional_losses_11394�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%	�2upsampler_mlp/kernel
!:�2upsampler_mlp/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_reshape_layer_call_fn_11399�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_reshape_layer_call_and_return_conditional_losses_11412�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
'
20"
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_conv1d_transpose_layer_call_fn_11418�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_11454�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.:,T�2conv1d_transpose/kernel
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
;0
<1
=2
>3"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_2_layer_call_fn_11463
5__inference_batch_normalization_2_layer_call_fn_11472�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11492
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11526�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'T2batch_normalization_2/gamma
(:&T2batch_normalization_2/beta
1:/T (2!batch_normalization_2/moving_mean
5:3T (2%batch_normalization_2/moving_variance
6
F0
G1
�2"
trackable_list_wrapper
6
F0
G1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_11534�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_11572�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�alpha"
_tf_keras_layer
 :TT2dense_2/kernel
:T2dense_2/bias
'
N0"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_conv1d_transpose_1_layer_call_fn_11578�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_11614�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
/:-*T2conv1d_transpose_1/kernel
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
W0
X1
Y2
Z3"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
5__inference_batch_normalization_3_layer_call_fn_11623
5__inference_batch_normalization_3_layer_call_fn_11632�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11652
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11686�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'*2batch_normalization_3/gamma
(:&*2batch_normalization_3/beta
1:/* (2!batch_normalization_3/moving_mean
5:3* (2%batch_normalization_3/moving_variance
6
b0
c1
�2"
trackable_list_wrapper
6
b0
c1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_3_layer_call_fn_11694�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_11732�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�alpha"
_tf_keras_layer
 :**2dense_3/kernel
:*2dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_zero_padding1d_layer_call_fn_11737�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_zero_padding1d_layer_call_and_return_conditional_losses_11743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_11748�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_11754�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_lambda_1_layer_call_fn_11759
(__inference_lambda_1_layer_call_fn_11764�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_lambda_1_layer_call_and_return_conditional_losses_11772
C__inference_lambda_1_layer_call_and_return_conditional_losses_11780�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_11787�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_11797�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
��	2dense_4/kernel
:�	2dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_11802
'__inference_dropout_layer_call_fn_11807�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_11812
B__inference_dropout_layer_call_and_return_conditional_losses_11831�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_Reshaped_upsampled_layer_call_fn_11836�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_11849�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_decoder_x_embed_layer_call_fn_11856�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_decoder_x_embed_layer_call_and_return_conditional_losses_11871�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*2decoder_x_embed/kernel
": 2decoder_x_embed/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_concatinated_layer_call_fn_11877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_concatinated_layer_call_and_return_conditional_losses_11884�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
#__inference_gru_layer_call_fn_11892
#__inference_gru_layer_call_fn_11900
#__inference_gru_layer_call_fn_11908
#__inference_gru_layer_call_fn_11916�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
>__inference_gru_layer_call_and_return_conditional_losses_12069
>__inference_gru_layer_call_and_return_conditional_losses_12222
>__inference_gru_layer_call_and_return_conditional_losses_12375
>__inference_gru_layer_call_and_return_conditional_losses_12528�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�kernel
�recurrent_kernel
	�bias"
_tf_keras_layer
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_processed_x_layer_call_fn_12535�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_processed_x_layer_call_and_return_conditional_losses_12550�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
):'�2processed_x/kernel
:2processed_x/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_5_layer_call_fn_12557�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_12588�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_5/kernel
:2dense_5/bias
):'T2dense_2/p_re_lu_2/alpha
):'4*2dense_3/p_re_lu_3/alpha
&:$	?�2gru/gru_cell/kernel
1:/
��2gru/gru_cell/recurrent_kernel
$:"	�2gru/gru_cell/bias
<
=0
>1
Y2
Z3"
trackable_list_wrapper
�
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
19
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_1_layer_call_fn_9199latent_inputprotein_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_1_layer_call_fn_10484inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_1_layer_call_fn_10519inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_1_layer_call_fn_10306latent_inputprotein_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_10927inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_11377inputs_0inputs_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_10359latent_inputprotein_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_1_layer_call_and_return_conditional_losses_10412latent_inputprotein_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_10449latent_inputprotein_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_upsampler_mlp_layer_call_fn_11384inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_upsampler_mlp_layer_call_and_return_conditional_losses_11394inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_reshape_layer_call_fn_11399inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_reshape_layer_call_and_return_conditional_losses_11412inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_conv1d_transpose_layer_call_fn_11418inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_11454inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_batch_normalization_2_layer_call_fn_11463inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_2_layer_call_fn_11472inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11492inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11526inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
E0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_2_layer_call_fn_11534inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_11572inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_p_re_lu_2_layer_call_fn_12594�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_12606�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�B�
2__inference_conv1d_transpose_1_layer_call_fn_11578inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_11614inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_batch_normalization_3_layer_call_fn_11623inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_batch_normalization_3_layer_call_fn_11632inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11652inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11686inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_3_layer_call_fn_11694inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_11732inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_p_re_lu_3_layer_call_fn_12612�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_p_re_lu_3_layer_call_and_return_conditional_losses_12624�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�B�
.__inference_zero_padding1d_layer_call_fn_11737inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_zero_padding1d_layer_call_and_return_conditional_losses_11743inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_flatten_layer_call_fn_11748inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_11754inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_lambda_1_layer_call_fn_11759inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_lambda_1_layer_call_fn_11764inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lambda_1_layer_call_and_return_conditional_losses_11772inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_lambda_1_layer_call_and_return_conditional_losses_11780inputs"�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_4_layer_call_fn_11787inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_11797inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dropout_layer_call_fn_11802inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_11807inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_11812inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_11831inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
2__inference_Reshaped_upsampled_layer_call_fn_11836inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_11849inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
/__inference_decoder_x_embed_layer_call_fn_11856inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_decoder_x_embed_layer_call_and_return_conditional_losses_11871inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_concatinated_layer_call_fn_11877inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_concatinated_layer_call_and_return_conditional_losses_11884inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_gru_layer_call_fn_11892inputs_0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_gru_layer_call_fn_11900inputs_0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_gru_layer_call_fn_11908inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_gru_layer_call_fn_11916inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_gru_layer_call_and_return_conditional_losses_12069inputs_0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_gru_layer_call_and_return_conditional_losses_12222inputs_0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_gru_layer_call_and_return_conditional_losses_12375inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_gru_layer_call_and_return_conditional_losses_12528inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_gru_cell_layer_call_fn_12635
(__inference_gru_cell_layer_call_fn_12646�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_gru_cell_layer_call_and_return_conditional_losses_12685
C__inference_gru_cell_layer_call_and_return_conditional_losses_12724�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
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
�B�
+__inference_processed_x_layer_call_fn_12535inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_processed_x_layer_call_and_return_conditional_losses_12550inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_dense_5_layer_call_fn_12557inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_5_layer_call_and_return_conditional_losses_12588inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_p_re_lu_2_layer_call_fn_12594inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_12606inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_p_re_lu_3_layer_call_fn_12612inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_p_re_lu_3_layer_call_and_return_conditional_losses_12624inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_gru_cell_layer_call_fn_12635inputsstates_0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_gru_cell_layer_call_fn_12646inputsstates_0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_gru_cell_layer_call_and_return_conditional_losses_12685inputsstates_0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_gru_cell_layer_call_and_return_conditional_losses_12724inputsstates_0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
M__inference_Reshaped_upsampled_layer_call_and_return_conditional_losses_11849d0�-
&�#
!�
inputs����������	
� "0�-
&�#
tensor_0���������*
� �
2__inference_Reshaped_upsampled_layer_call_fn_11836Y0�-
&�#
!�
inputs����������	
� "%�"
unknown���������*�
__inference__wrapped_model_7649�($%2>;=<FG�NZWYXbc�|}���������g�d
]�Z
X�U
&�#
latent_input���������
+�(
protein_input���������
� "5�2
0
dense_5%�"
dense_5����������
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11492�>;=<@�=
6�3
-�*
inputs������������������T
p 
� "9�6
/�,
tensor_0������������������T
� �
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_11526�=>;<@�=
6�3
-�*
inputs������������������T
p
� "9�6
/�,
tensor_0������������������T
� �
5__inference_batch_normalization_2_layer_call_fn_11463x>;=<@�=
6�3
-�*
inputs������������������T
p 
� ".�+
unknown������������������T�
5__inference_batch_normalization_2_layer_call_fn_11472x=>;<@�=
6�3
-�*
inputs������������������T
p
� ".�+
unknown������������������T�
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11652�ZWYX@�=
6�3
-�*
inputs������������������*
p 
� "9�6
/�,
tensor_0������������������*
� �
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_11686�YZWX@�=
6�3
-�*
inputs������������������*
p
� "9�6
/�,
tensor_0������������������*
� �
5__inference_batch_normalization_3_layer_call_fn_11623xZWYX@�=
6�3
-�*
inputs������������������*
p 
� ".�+
unknown������������������*�
5__inference_batch_normalization_3_layer_call_fn_11632xYZWX@�=
6�3
-�*
inputs������������������*
p
� ".�+
unknown������������������*�
G__inference_concatinated_layer_call_and_return_conditional_losses_11884�b�_
X�U
S�P
&�#
inputs_0���������*
&�#
inputs_1���������
� "0�-
&�#
tensor_0���������?
� �
,__inference_concatinated_layer_call_fn_11877�b�_
X�U
S�P
&�#
inputs_0���������*
&�#
inputs_1���������
� "%�"
unknown���������?�
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_11614|N<�9
2�/
-�*
inputs������������������T
� "9�6
/�,
tensor_0������������������*
� �
2__inference_conv1d_transpose_1_layer_call_fn_11578qN<�9
2�/
-�*
inputs������������������T
� ".�+
unknown������������������*�
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_11454}2=�:
3�0
.�+
inputs�������������������
� "9�6
/�,
tensor_0������������������T
� �
0__inference_conv1d_transpose_layer_call_fn_11418r2=�:
3�0
.�+
inputs�������������������
� ".�+
unknown������������������T�
J__inference_decoder_x_embed_layer_call_and_return_conditional_losses_11871m��3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
/__inference_decoder_x_embed_layer_call_fn_11856b��3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
B__inference_dense_2_layer_call_and_return_conditional_losses_11572mFG�3�0
)�&
$�!
inputs���������T
� "0�-
&�#
tensor_0���������T
� �
'__inference_dense_2_layer_call_fn_11534bFG�3�0
)�&
$�!
inputs���������T
� "%�"
unknown���������T�
B__inference_dense_3_layer_call_and_return_conditional_losses_11732mbc�3�0
)�&
$�!
inputs���������4*
� "0�-
&�#
tensor_0���������4*
� �
'__inference_dense_3_layer_call_fn_11694bbc�3�0
)�&
$�!
inputs���������4*
� "%�"
unknown���������4*�
B__inference_dense_4_layer_call_and_return_conditional_losses_11797e|}0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������	
� �
'__inference_dense_4_layer_call_fn_11787Z|}0�-
&�#
!�
inputs����������
� ""�
unknown����������	�
B__inference_dense_5_layer_call_and_return_conditional_losses_12588m��3�0
)�&
$�!
inputs���������
� "0�-
&�#
tensor_0���������
� �
'__inference_dense_5_layer_call_fn_12557b��3�0
)�&
$�!
inputs���������
� "%�"
unknown����������
B__inference_dropout_layer_call_and_return_conditional_losses_11812k7�4
-�*
$�!
inputs���������
p 
� "0�-
&�#
tensor_0���������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_11831k7�4
-�*
$�!
inputs���������
p
� "0�-
&�#
tensor_0���������
� �
'__inference_dropout_layer_call_fn_11802`7�4
-�*
$�!
inputs���������
p 
� "%�"
unknown����������
'__inference_dropout_layer_call_fn_11807`7�4
-�*
$�!
inputs���������
p
� "%�"
unknown����������
B__inference_flatten_layer_call_and_return_conditional_losses_11754d3�0
)�&
$�!
inputs���������4*
� "-�*
#� 
tensor_0����������
� �
'__inference_flatten_layer_call_fn_11748Y3�0
)�&
$�!
inputs���������4*
� ""�
unknown�����������
C__inference_gru_cell_layer_call_and_return_conditional_losses_12685����]�Z
S�P
 �
inputs���������?
(�%
#� 
states_0����������
p 
� "b�_
X�U
%�"

tensor_0_0����������
,�)
'�$
tensor_0_1_0����������
� �
C__inference_gru_cell_layer_call_and_return_conditional_losses_12724����]�Z
S�P
 �
inputs���������?
(�%
#� 
states_0����������
p
� "b�_
X�U
%�"

tensor_0_0����������
,�)
'�$
tensor_0_1_0����������
� �
(__inference_gru_cell_layer_call_fn_12635����]�Z
S�P
 �
inputs���������?
(�%
#� 
states_0����������
p 
� "T�Q
#� 
tensor_0����������
*�'
%�"

tensor_1_0�����������
(__inference_gru_cell_layer_call_fn_12646����]�Z
S�P
 �
inputs���������?
(�%
#� 
states_0����������
p
� "T�Q
#� 
tensor_0����������
*�'
%�"

tensor_1_0�����������
>__inference_gru_layer_call_and_return_conditional_losses_12069����O�L
E�B
4�1
/�,
inputs_0������������������?

 
p 

 
� ":�7
0�-
tensor_0�������������������
� �
>__inference_gru_layer_call_and_return_conditional_losses_12222����O�L
E�B
4�1
/�,
inputs_0������������������?

 
p

 
� ":�7
0�-
tensor_0�������������������
� �
>__inference_gru_layer_call_and_return_conditional_losses_12375|���?�<
5�2
$�!
inputs���������?

 
p 

 
� "1�.
'�$
tensor_0����������
� �
>__inference_gru_layer_call_and_return_conditional_losses_12528|���?�<
5�2
$�!
inputs���������?

 
p

 
� "1�.
'�$
tensor_0����������
� �
#__inference_gru_layer_call_fn_11892����O�L
E�B
4�1
/�,
inputs_0������������������?

 
p 

 
� "/�,
unknown��������������������
#__inference_gru_layer_call_fn_11900����O�L
E�B
4�1
/�,
inputs_0������������������?

 
p

 
� "/�,
unknown��������������������
#__inference_gru_layer_call_fn_11908q���?�<
5�2
$�!
inputs���������?

 
p 

 
� "&�#
unknown�����������
#__inference_gru_layer_call_fn_11916q���?�<
5�2
$�!
inputs���������?

 
p

 
� "&�#
unknown�����������
C__inference_lambda_1_layer_call_and_return_conditional_losses_11772o;�8
1�.
$�!
inputs���������

 
p 
� "0�-
&�#
tensor_0���������
� �
C__inference_lambda_1_layer_call_and_return_conditional_losses_11780o;�8
1�.
$�!
inputs���������

 
p
� "0�-
&�#
tensor_0���������
� �
(__inference_lambda_1_layer_call_fn_11759d;�8
1�.
$�!
inputs���������

 
p 
� "%�"
unknown����������
(__inference_lambda_1_layer_call_fn_11764d;�8
1�.
$�!
inputs���������

 
p
� "%�"
unknown����������
B__inference_model_1_layer_call_and_return_conditional_losses_10359�($%2>;=<FG�NZWYXbc�|}���������o�l
e�b
X�U
&�#
latent_input���������
+�(
protein_input���������
p 

 
� "0�-
&�#
tensor_0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_10412�($%2=>;<FG�NYZWXbc�|}���������o�l
e�b
X�U
&�#
latent_input���������
+�(
protein_input���������
p

 
� "0�-
&�#
tensor_0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_10927�($%2>;=<FG�NZWYXbc�|}���������f�c
\�Y
O�L
"�
inputs_0���������
&�#
inputs_1���������
p 

 
� "0�-
&�#
tensor_0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_11377�($%2=>;<FG�NYZWXbc�|}���������f�c
\�Y
O�L
"�
inputs_0���������
&�#
inputs_1���������
p

 
� "0�-
&�#
tensor_0���������
� �
'__inference_model_1_layer_call_fn_10306�($%2=>;<FG�NYZWXbc�|}���������o�l
e�b
X�U
&�#
latent_input���������
+�(
protein_input���������
p

 
� "%�"
unknown����������
'__inference_model_1_layer_call_fn_10484�($%2>;=<FG�NZWYXbc�|}���������f�c
\�Y
O�L
"�
inputs_0���������
&�#
inputs_1���������
p 

 
� "%�"
unknown����������
'__inference_model_1_layer_call_fn_10519�($%2=>;<FG�NYZWXbc�|}���������f�c
\�Y
O�L
"�
inputs_0���������
&�#
inputs_1���������
p

 
� "%�"
unknown����������
&__inference_model_1_layer_call_fn_9199�($%2>;=<FG�NZWYXbc�|}���������o�l
e�b
X�U
&�#
latent_input���������
+�(
protein_input���������
p 

 
� "%�"
unknown����������
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_12606}�E�B
;�8
6�3
inputs'���������������������������
� "0�-
&�#
tensor_0���������T
� �
)__inference_p_re_lu_2_layer_call_fn_12594r�E�B
;�8
6�3
inputs'���������������������������
� "%�"
unknown���������T�
D__inference_p_re_lu_3_layer_call_and_return_conditional_losses_12624}�E�B
;�8
6�3
inputs'���������������������������
� "0�-
&�#
tensor_0���������4*
� �
)__inference_p_re_lu_3_layer_call_fn_12612r�E�B
;�8
6�3
inputs'���������������������������
� "%�"
unknown���������4*�
F__inference_processed_x_layer_call_and_return_conditional_losses_12550n��4�1
*�'
%�"
inputs����������
� "0�-
&�#
tensor_0���������
� �
+__inference_processed_x_layer_call_fn_12535c��4�1
*�'
%�"
inputs����������
� "%�"
unknown����������
B__inference_reshape_layer_call_and_return_conditional_losses_11412e0�-
&�#
!�
inputs����������
� "1�.
'�$
tensor_0����������
� �
'__inference_reshape_layer_call_fn_11399Z0�-
&�#
!�
inputs����������
� "&�#
unknown�����������
#__inference_signature_wrapper_10449�($%2>;=<FG�NZWYXbc�|}������������
� 
y�v
6
latent_input&�#
latent_input���������
<
protein_input+�(
protein_input���������"5�2
0
dense_5%�"
dense_5����������
H__inference_upsampler_mlp_layer_call_and_return_conditional_losses_11394d$%/�,
%�"
 �
inputs���������
� "-�*
#� 
tensor_0����������
� �
-__inference_upsampler_mlp_layer_call_fn_11384Y$%/�,
%�"
 �
inputs���������
� ""�
unknown�����������
I__inference_zero_padding1d_layer_call_and_return_conditional_losses_11743�E�B
;�8
6�3
inputs'���������������������������
� "B�?
8�5
tensor_0'���������������������������
� �
.__inference_zero_padding1d_layer_call_fn_11737�E�B
;�8
6�3
inputs'���������������������������
� "7�4
unknown'���������������������������