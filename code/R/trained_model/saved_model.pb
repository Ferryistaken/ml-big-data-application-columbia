??,
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
executor_typestring ?
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
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??*
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*%
shared_nameembedding/embeddings
?
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*!
_output_shapes
:???*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
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
?
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namelstm/lstm_cell/kernel
?
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel* 
_output_shapes
:
??*
dtype0
?
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!lstm/lstm_cell/recurrent_kernel
?
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@?*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:?*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*!
_output_shapes
:???*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/lstm/lstm_cell/kernel/m
?
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m* 
_output_shapes
:
??*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
?
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/m
?
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*!
_output_shapes
:???*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/lstm/lstm_cell/kernel/v
?
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v* 
_output_shapes
:
??*
dtype0
?
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
?
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/lstm/lstm_cell/bias/v
?
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?(
value?(B?( B?(
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
b


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_rate
mMmNmO mP!mQ"mR
vSvTvU vV!vW"vX
*

0
 1
!2
"3
4
5
 
*

0
 1
!2
"3
4
5
?
trainable_variables
regularization_losses
#non_trainable_variables
	variables
$layer_regularization_losses

%layers
&metrics
'layer_metrics
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0
 


0
?
trainable_variables
regularization_losses
(non_trainable_variables
	variables
)layer_regularization_losses

*layers
+metrics
,layer_metrics
?
-
state_size

 kernel
!recurrent_kernel
"bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
 

 0
!1
"2
 

 0
!1
"2
?

2states
trainable_variables
regularization_losses
3non_trainable_variables
	variables
4layer_regularization_losses

5layers
6metrics
7layer_metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses
8non_trainable_variables
	variables
9layer_regularization_losses

:layers
;metrics
<layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2

=0
>1
 
 
 
 
 
 
 

 0
!1
"2
 

 0
!1
"2
?
.trainable_variables
/regularization_losses
?non_trainable_variables
0	variables
@layer_regularization_losses

Alayers
Bmetrics
Clayer_metrics
 
 
 

0
 
 
 
 
 
 
 
4
	Dtotal
	Ecount
F	variables
G	keras_api
D
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

F	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

K	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_embedding_inputPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_57552
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_60243
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*'
Tin 
2*
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
!__inference__traced_restore_60334??)
?
?
while_cond_55927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_55927___redundant_placeholder03
/while_while_cond_55927___redundant_placeholder13
/while_while_cond_55927___redundant_placeholder23
/while_while_cond_55927___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_57858

inputs5
 embedding_embedding_lookup_57556:???@
,lstm_lstm_cell_split_readvariableop_resource:
??=
.lstm_lstm_cell_split_1_readvariableop_resource:	?9
&lstm_lstm_cell_readvariableop_resource:	@?6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/whilez
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding/Cast?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_57556embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/57556*5
_output_shapes#
!:???????????????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/57556*5
_output_shapes#
!:???????????????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0!lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0#lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/addq
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Constu
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_1?
lstm/lstm_cell/Mul_8Mullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_8?
lstm/lstm_cell/Add_1Addlstm/lstm_cell/Mul_8:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_1?
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/lstm_cell/clip_by_value/Minimum/y?
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/lstm_cell/clip_by_value/Minimum?
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
lstm/lstm_cell/clip_by_value/y?
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/clip_by_value?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_2u
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Const_2u
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_3?
lstm/lstm_cell/Mul_9Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_9?
lstm/lstm_cell/Add_3Addlstm/lstm_cell/Mul_9:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_3?
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm/lstm_cell/clip_by_value_1/Minimum/y?
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2(
&lstm/lstm_cell/clip_by_value_1/Minimum?
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 lstm/lstm_cell/clip_by_value_1/y?
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/clip_by_value_1?
lstm/lstm_cell/mul_10Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_10?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_4~
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_11Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_11?
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_10:z:0lstm/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_5?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_6u
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Const_4u
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_5?
lstm/lstm_cell/Mul_12Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_12?
lstm/lstm_cell/Add_7Addlstm/lstm_cell/Mul_12:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_7?
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm/lstm_cell/clip_by_value_2/Minimum/y?
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2(
&lstm/lstm_cell/clip_by_value_2/Minimum?
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 lstm/lstm_cell/clip_by_value_2/y?
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/clip_by_value_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_13Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_13?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*!
bodyR
lstm_while_body_57696*!
condR
lstm_while_cond_57695*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense/Sigmoid?
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
 sequential_lstm_while_cond_55605<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1S
Osequential_lstm_while_sequential_lstm_while_cond_55605___redundant_placeholder0S
Osequential_lstm_while_sequential_lstm_while_cond_55605___redundant_placeholder1S
Osequential_lstm_while_sequential_lstm_while_cond_55605___redundant_placeholder2S
Osequential_lstm_while_sequential_lstm_while_cond_55605___redundant_placeholder3"
sequential_lstm_while_identity
?
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: 2
sequential/lstm/while/Less?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: 2 
sequential/lstm/while/Identity"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
ϩ
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_60105

inputs
states_0
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?*
readvariableop_resource:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??52(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2?̀2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??!2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ށ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ٓ12(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3f
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4f
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5f
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_6f
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1`
Mul_8Muladd:z:0Const:output:0*
T0*'
_output_shapes
:?????????@2
Mul_8d
Add_1Add	Mul_8:z:0Const_1:output:0*
T0*'
_output_shapes
:?????????@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:?????????@2
Mul_9d
Add_3Add	Mul_9:z:0Const_3:output:0*
T0*'
_output_shapes
:?????????@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1h
mul_10Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:?????????@2
mul_10}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:?????????@2
Tanhf
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_11a
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*'
_output_shapes
:?????????@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5f
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:?????????@2
Mul_12e
Add_7Add
Mul_12:z:0Const_5:output:0*
T0*'
_output_shapes
:?????????@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1j
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_13?
IdentityIdentity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
while_cond_56272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_56272___redundant_placeholder03
/while_while_cond_56272___redundant_placeholder13
/while_while_cond_56272___redundant_placeholder23
/while_while_cond_56272___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_lstm_layer_call_fn_59782
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_559972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
??
?	
while_body_58481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_56621

inputs+
embedding_lookup_56615:???
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_56615Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/56615*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/56615*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?a
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_59938

inputs
states_0
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?*
readvariableop_resource:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3g
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4g
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5g
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_6g
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1`
Mul_8Muladd:z:0Const:output:0*
T0*'
_output_shapes
:?????????@2
Mul_8d
Add_1Add	Mul_8:z:0Const_1:output:0*
T0*'
_output_shapes
:?????????@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:?????????@2
Mul_9d
Add_3Add	Mul_9:z:0Const_3:output:0*
T0*'
_output_shapes
:?????????@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1h
mul_10Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:?????????@2
mul_10}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:?????????@2
Tanhf
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_11a
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*'
_output_shapes
:?????????@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5f
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:?????????@2
Mul_12e
Add_7Add
Mul_12:z:0Const_5:output:0*
T0*'
_output_shapes
:?????????@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1j
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_13?
IdentityIdentity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_57508
embedding_input$
embedding_57492:???

lstm_57495:
??

lstm_57497:	?

lstm_57499:	@?
dense_57502:@
dense_57504:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_57492*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_566212#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_57495
lstm_57497
lstm_57499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_569172
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_57502dense_57504*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_569362
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?
?
*__inference_sequential_layer_call_fn_58326

inputs
unknown:???
	unknown_0:
??
	unknown_1:	?
	unknown_2:	@?
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_574572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
)__inference_embedding_layer_call_fn_58343

inputs
unknown:???
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_566212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
while_cond_59551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59551___redundant_placeholder03
/while_while_cond_59551___redundant_placeholder13
/while_while_cond_59551___redundant_placeholder23
/while_while_cond_59551___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
#__inference_signature_wrapper_57552
embedding_input
unknown:???
	unknown_0:
??
	unknown_1:	?
	unknown_2:	@?
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_557682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?
?
while_cond_56761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_56761___redundant_placeholder03
/while_while_cond_56761___redundant_placeholder13
/while_while_cond_56761___redundant_placeholder23
/while_while_cond_56761___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?D
?
?__inference_lstm_layer_call_and_return_conditional_losses_55997

inputs#
lstm_cell_55915:
??
lstm_cell_55917:	?"
lstm_cell_55919:	@?
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_55915lstm_cell_55917lstm_cell_55919*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_559142#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_55915lstm_cell_55917lstm_cell_55919*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_55928*
condR
while_cond_55927*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_59194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_59194___redundant_placeholder03
/while_while_cond_59194___redundant_placeholder13
/while_while_cond_59194___redundant_placeholder23
/while_while_cond_59194___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_58837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_58837___redundant_placeholder03
/while_while_cond_58837___redundant_placeholder13
/while_while_cond_58837___redundant_placeholder23
/while_while_cond_58837___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?	
while_body_58838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2ŵ?28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??%28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??e28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_dense_layer_call_fn_59835

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_569362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
lstm_while_cond_57695&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_57695___redundant_placeholder0=
9lstm_while_lstm_while_cond_57695___redundant_placeholder1=
9lstm_while_lstm_while_cond_57695___redundant_placeholder2=
9lstm_while_lstm_while_cond_57695___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
ǈ
?
?__inference_lstm_layer_call_and_return_conditional_losses_59057
inputs_0;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ε?20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ѿ?22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?؜22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_58838*
condR
while_cond_58837*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
$__inference_lstm_layer_call_fn_59793
inputs_0
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_563422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_cell_layer_call_fn_60139

inputs
states_0
states_1
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_561952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?

?
@__inference_dense_layer_call_and_return_conditional_losses_59826

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?	
while_body_57183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ԭu26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??q28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??g28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??~28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??@28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?	
while_body_59552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/lstm_cell/dropout/Const?
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul?
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
while/lstm_cell/dropout/Shape?
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???26
4while/lstm_cell/dropout/random_uniform/RandomUniform?
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2(
&while/lstm_cell/dropout/GreaterEqual/y?
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2&
$while/lstm_cell/dropout/GreaterEqual?
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Cast?
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout/Mul_1?
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_1/Const?
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_1/Mul?
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_1/Shape?
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??Y28
6while/lstm_cell/dropout_1/random_uniform/RandomUniform?
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_1/GreaterEqual/y?
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_1/GreaterEqual?
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_1/Cast?
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_1/Mul_1?
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_2/Const?
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_2/Mul?
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_2/Shape?
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_2/random_uniform/RandomUniform?
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_2/GreaterEqual/y?
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_2/GreaterEqual?
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_2/Cast?
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_2/Mul_1?
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_3/Const?
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/dropout_3/Mul?
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_3/Shape?
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_3/random_uniform/RandomUniform?
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_3/GreaterEqual/y?
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2(
&while/lstm_cell/dropout_3/GreaterEqual?
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2 
while/lstm_cell/dropout_3/Cast?
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2!
while/lstm_cell/dropout_3/Mul_1?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_4/Const?
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_4/Mul?
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_4/Shape?
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_4/random_uniform/RandomUniform?
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_4/GreaterEqual/y?
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_4/GreaterEqual?
while/lstm_cell/dropout_4/CastCast*while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_4/Cast?
while/lstm_cell/dropout_4/Mul_1Mul!while/lstm_cell/dropout_4/Mul:z:0"while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_4/Mul_1?
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_5/Const?
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_5/Mul?
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_5/Shape?
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?ۡ28
6while/lstm_cell/dropout_5/random_uniform/RandomUniform?
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_5/GreaterEqual/y?
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_5/GreaterEqual?
while/lstm_cell/dropout_5/CastCast*while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_5/Cast?
while/lstm_cell/dropout_5/Mul_1Mul!while/lstm_cell/dropout_5/Mul:z:0"while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_5/Mul_1?
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_6/Const?
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_6/Mul?
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_6/Shape?
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_6/random_uniform/RandomUniform?
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_6/GreaterEqual/y?
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_6/GreaterEqual?
while/lstm_cell/dropout_6/CastCast*while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_6/Cast?
while/lstm_cell/dropout_6/Mul_1Mul!while/lstm_cell/dropout_6/Mul:z:0"while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_6/Mul_1?
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/dropout_7/Const?
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/dropout_7/Mul?
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2!
while/lstm_cell/dropout_7/Shape?
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???28
6while/lstm_cell/dropout_7/random_uniform/RandomUniform?
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2*
(while/lstm_cell/dropout_7/GreaterEqual/y?
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&while/lstm_cell/dropout_7/GreaterEqual?
while/lstm_cell/dropout_7/CastCast*while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
while/lstm_cell/dropout_7/Cast?
while/lstm_cell/dropout_7/Mul_1Mul!while/lstm_cell/dropout_7/Mul:z:0"while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/dropout_7/Mul_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2#while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2#while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2#while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2#while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_59771

inputs;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??+20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2쳆22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??>22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_59552*
condR
while_cond_59551*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_58292

inputs5
 embedding_embedding_lookup_57862:???@
,lstm_lstm_cell_split_readvariableop_resource:
??=
.lstm_lstm_cell_split_1_readvariableop_resource:	?9
&lstm_lstm_cell_readvariableop_resource:	@?6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?embedding/embedding_lookup?lstm/lstm_cell/ReadVariableOp?lstm/lstm_cell/ReadVariableOp_1?lstm/lstm_cell/ReadVariableOp_2?lstm/lstm_cell/ReadVariableOp_3?#lstm/lstm_cell/split/ReadVariableOp?%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/whilez
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding/Cast?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_57862embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/57862*5
_output_shapes#
!:???????????????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/57862*5
_output_shapes#
!:???????????????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stack?
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1?
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2?
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/y?
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1?
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Const?

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/y?
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm/zeros_1/Less/y?
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1?
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Const?
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/zeros_1
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose/perm?
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
lstm/transpose^
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:2
lstm/Shape_1?
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_1/stack?
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_1?
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_1/stack_2?
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slice_1?
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm/TensorArrayV2/element_shape?
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2?
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2<
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02.
,lstm/TensorArrayUnstack/TensorListFromTensor?
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_2/stack?
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_1?
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_2/stack_2?
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm/strided_slice_2?
lstm/lstm_cell/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/ones_like/Shape?
lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/ones_like/Const?
lstm/lstm_cell/ones_likeFill'lstm/lstm_cell/ones_like/Shape:output:0'lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/ones_like?
lstm/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm/lstm_cell/dropout/Const?
lstm/lstm_cell/dropout/MulMul!lstm/lstm_cell/ones_like:output:0%lstm/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Mul?
lstm/lstm_cell/dropout/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm/lstm_cell/dropout/Shape?
3lstm/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform%lstm/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??$25
3lstm/lstm_cell/dropout/random_uniform/RandomUniform?
%lstm/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%lstm/lstm_cell/dropout/GreaterEqual/y?
#lstm/lstm_cell/dropout/GreaterEqualGreaterEqual<lstm/lstm_cell/dropout/random_uniform/RandomUniform:output:0.lstm/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2%
#lstm/lstm_cell/dropout/GreaterEqual?
lstm/lstm_cell/dropout/CastCast'lstm/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Cast?
lstm/lstm_cell/dropout/Mul_1Mullstm/lstm_cell/dropout/Mul:z:0lstm/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout/Mul_1?
lstm/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_1/Const?
lstm/lstm_cell/dropout_1/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_1/Mul?
lstm/lstm_cell/dropout_1/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_1/Shape?
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2՞?27
5lstm/lstm_cell/dropout_1/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_1/GreaterEqual/y?
%lstm/lstm_cell/dropout_1/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_1/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_1/GreaterEqual?
lstm/lstm_cell/dropout_1/CastCast)lstm/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_1/Cast?
lstm/lstm_cell/dropout_1/Mul_1Mul lstm/lstm_cell/dropout_1/Mul:z:0!lstm/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_1/Mul_1?
lstm/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_2/Const?
lstm/lstm_cell/dropout_2/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_2/Mul?
lstm/lstm_cell/dropout_2/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_2/Shape?
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ݵ?27
5lstm/lstm_cell/dropout_2/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_2/GreaterEqual/y?
%lstm/lstm_cell/dropout_2/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_2/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_2/GreaterEqual?
lstm/lstm_cell/dropout_2/CastCast)lstm/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_2/Cast?
lstm/lstm_cell/dropout_2/Mul_1Mul lstm/lstm_cell/dropout_2/Mul:z:0!lstm/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_2/Mul_1?
lstm/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_3/Const?
lstm/lstm_cell/dropout_3/MulMul!lstm/lstm_cell/ones_like:output:0'lstm/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_3/Mul?
lstm/lstm_cell/dropout_3/ShapeShape!lstm/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_3/Shape?
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_3/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_3/GreaterEqual/y?
%lstm/lstm_cell/dropout_3/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_3/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2'
%lstm/lstm_cell/dropout_3/GreaterEqual?
lstm/lstm_cell/dropout_3/CastCast)lstm/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm/lstm_cell/dropout_3/Cast?
lstm/lstm_cell/dropout_3/Mul_1Mul lstm/lstm_cell/dropout_3/Mul:z:0!lstm/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2 
lstm/lstm_cell/dropout_3/Mul_1?
 lstm/lstm_cell/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:2"
 lstm/lstm_cell/ones_like_1/Shape?
 lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 lstm/lstm_cell/ones_like_1/Const?
lstm/lstm_cell/ones_like_1Fill)lstm/lstm_cell/ones_like_1/Shape:output:0)lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/ones_like_1?
lstm/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_4/Const?
lstm/lstm_cell/dropout_4/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_4/Mul?
lstm/lstm_cell/dropout_4/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_4/Shape?
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_4/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_4/GreaterEqual/y?
%lstm/lstm_cell/dropout_4/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_4/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_4/GreaterEqual?
lstm/lstm_cell/dropout_4/CastCast)lstm/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_4/Cast?
lstm/lstm_cell/dropout_4/Mul_1Mul lstm/lstm_cell/dropout_4/Mul:z:0!lstm/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_4/Mul_1?
lstm/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_5/Const?
lstm/lstm_cell/dropout_5/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_5/Mul?
lstm/lstm_cell/dropout_5/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_5/Shape?
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_5/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_5/GreaterEqual/y?
%lstm/lstm_cell/dropout_5/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_5/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_5/GreaterEqual?
lstm/lstm_cell/dropout_5/CastCast)lstm/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_5/Cast?
lstm/lstm_cell/dropout_5/Mul_1Mul lstm/lstm_cell/dropout_5/Mul:z:0!lstm/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_5/Mul_1?
lstm/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_6/Const?
lstm/lstm_cell/dropout_6/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_6/Mul?
lstm/lstm_cell/dropout_6/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_6/Shape?
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_6/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_6/GreaterEqual/y?
%lstm/lstm_cell/dropout_6/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_6/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_6/GreaterEqual?
lstm/lstm_cell/dropout_6/CastCast)lstm/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_6/Cast?
lstm/lstm_cell/dropout_6/Mul_1Mul lstm/lstm_cell/dropout_6/Mul:z:0!lstm/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_6/Mul_1?
lstm/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
lstm/lstm_cell/dropout_7/Const?
lstm/lstm_cell/dropout_7/MulMul#lstm/lstm_cell/ones_like_1:output:0'lstm/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_7/Mul?
lstm/lstm_cell/dropout_7/ShapeShape#lstm/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2 
lstm/lstm_cell/dropout_7/Shape?
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???27
5lstm/lstm_cell/dropout_7/random_uniform/RandomUniform?
'lstm/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'lstm/lstm_cell/dropout_7/GreaterEqual/y?
%lstm/lstm_cell/dropout_7/GreaterEqualGreaterEqual>lstm/lstm_cell/dropout_7/random_uniform/RandomUniform:output:00lstm/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2'
%lstm/lstm_cell/dropout_7/GreaterEqual?
lstm/lstm_cell/dropout_7/CastCast)lstm/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm/lstm_cell/dropout_7/Cast?
lstm/lstm_cell/dropout_7/Mul_1Mul lstm/lstm_cell/dropout_7/Mul:z:0!lstm/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/dropout_7/Mul_1?
lstm/lstm_cell/mulMullstm/strided_slice_2:output:0 lstm/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul?
lstm/lstm_cell/mul_1Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_1?
lstm/lstm_cell/mul_2Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_2?
lstm/lstm_cell/mul_3Mullstm/strided_slice_2:output:0"lstm/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/lstm_cell/mul_3?
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm/lstm_cell/split/split_dim?
#lstm/lstm_cell/split/ReadVariableOpReadVariableOp,lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm/lstm_cell/split/ReadVariableOp?
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0+lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/lstm_cell/split?
lstm/lstm_cell/MatMulMatMullstm/lstm_cell/mul:z:0lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul?
lstm/lstm_cell/MatMul_1MatMullstm/lstm_cell/mul_1:z:0lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_1?
lstm/lstm_cell/MatMul_2MatMullstm/lstm_cell/mul_2:z:0lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_2?
lstm/lstm_cell/MatMul_3MatMullstm/lstm_cell/mul_3:z:0lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_3?
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 lstm/lstm_cell/split_1/split_dim?
%lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%lstm/lstm_cell/split_1/ReadVariableOp?
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0-lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/lstm_cell/split_1?
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/MatMul:product:0lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd?
lstm/lstm_cell/BiasAdd_1BiasAdd!lstm/lstm_cell/MatMul_1:product:0lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_1?
lstm/lstm_cell/BiasAdd_2BiasAdd!lstm/lstm_cell/MatMul_2:product:0lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_2?
lstm/lstm_cell/BiasAdd_3BiasAdd!lstm/lstm_cell/MatMul_3:product:0lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/BiasAdd_3?
lstm/lstm_cell/mul_4Mullstm/zeros:output:0"lstm/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_4?
lstm/lstm_cell/mul_5Mullstm/zeros:output:0"lstm/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_5?
lstm/lstm_cell/mul_6Mullstm/zeros:output:0"lstm/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_6?
lstm/lstm_cell/mul_7Mullstm/zeros:output:0"lstm/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_7?
lstm/lstm_cell/ReadVariableOpReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm/lstm_cell/ReadVariableOp?
"lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2$
"lstm/lstm_cell/strided_slice/stack?
$lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice/stack_1?
$lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$lstm/lstm_cell/strided_slice/stack_2?
lstm/lstm_cell/strided_sliceStridedSlice%lstm/lstm_cell/ReadVariableOp:value:0+lstm/lstm_cell/strided_slice/stack:output:0-lstm/lstm_cell/strided_slice/stack_1:output:0-lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm/lstm_cell/strided_slice?
lstm/lstm_cell/MatMul_4MatMullstm/lstm_cell/mul_4:z:0%lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_4?
lstm/lstm_cell/addAddV2lstm/lstm_cell/BiasAdd:output:0!lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/addq
lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Constu
lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_1?
lstm/lstm_cell/Mul_8Mullstm/lstm_cell/add:z:0lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_8?
lstm/lstm_cell/Add_1Addlstm/lstm_cell/Mul_8:z:0lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_1?
&lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/lstm_cell/clip_by_value/Minimum/y?
$lstm/lstm_cell/clip_by_value/MinimumMinimumlstm/lstm_cell/Add_1:z:0/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/lstm_cell/clip_by_value/Minimum?
lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
lstm/lstm_cell/clip_by_value/y?
lstm/lstm_cell/clip_by_valueMaximum(lstm/lstm_cell/clip_by_value/Minimum:z:0'lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/clip_by_value?
lstm/lstm_cell/ReadVariableOp_1ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_1?
$lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2&
$lstm/lstm_cell/strided_slice_1/stack?
&lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_1/stack_1?
&lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_1/stack_2?
lstm/lstm_cell/strided_slice_1StridedSlice'lstm/lstm_cell/ReadVariableOp_1:value:0-lstm/lstm_cell/strided_slice_1/stack:output:0/lstm/lstm_cell/strided_slice_1/stack_1:output:0/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_1?
lstm/lstm_cell/MatMul_5MatMullstm/lstm_cell/mul_5:z:0'lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_5?
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/BiasAdd_1:output:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_2u
lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Const_2u
lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_3?
lstm/lstm_cell/Mul_9Mullstm/lstm_cell/add_2:z:0lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_9?
lstm/lstm_cell/Add_3Addlstm/lstm_cell/Mul_9:z:0lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_3?
(lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm/lstm_cell/clip_by_value_1/Minimum/y?
&lstm/lstm_cell/clip_by_value_1/MinimumMinimumlstm/lstm_cell/Add_3:z:01lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2(
&lstm/lstm_cell/clip_by_value_1/Minimum?
 lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 lstm/lstm_cell/clip_by_value_1/y?
lstm/lstm_cell/clip_by_value_1Maximum*lstm/lstm_cell/clip_by_value_1/Minimum:z:0)lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/clip_by_value_1?
lstm/lstm_cell/mul_10Mul"lstm/lstm_cell/clip_by_value_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_10?
lstm/lstm_cell/ReadVariableOp_2ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_2?
$lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_2/stack?
&lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2(
&lstm/lstm_cell/strided_slice_2/stack_1?
&lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_2/stack_2?
lstm/lstm_cell/strided_slice_2StridedSlice'lstm/lstm_cell/ReadVariableOp_2:value:0-lstm/lstm_cell/strided_slice_2/stack:output:0/lstm/lstm_cell/strided_slice_2/stack_1:output:0/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_2?
lstm/lstm_cell/MatMul_6MatMullstm/lstm_cell/mul_6:z:0'lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_6?
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/BiasAdd_2:output:0!lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_4~
lstm/lstm_cell/TanhTanhlstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh?
lstm/lstm_cell/mul_11Mul lstm/lstm_cell/clip_by_value:z:0lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_11?
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_10:z:0lstm/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_5?
lstm/lstm_cell/ReadVariableOp_3ReadVariableOp&lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02!
lstm/lstm_cell/ReadVariableOp_3?
$lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2&
$lstm/lstm_cell/strided_slice_3/stack?
&lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm/lstm_cell/strided_slice_3/stack_1?
&lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&lstm/lstm_cell/strided_slice_3/stack_2?
lstm/lstm_cell/strided_slice_3StridedSlice'lstm/lstm_cell/ReadVariableOp_3:value:0-lstm/lstm_cell/strided_slice_3/stack:output:0/lstm/lstm_cell/strided_slice_3/stack_1:output:0/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2 
lstm/lstm_cell/strided_slice_3?
lstm/lstm_cell/MatMul_7MatMullstm/lstm_cell/mul_7:z:0'lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/MatMul_7?
lstm/lstm_cell/add_6AddV2!lstm/lstm_cell/BiasAdd_3:output:0!lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/add_6u
lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/lstm_cell/Const_4u
lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/lstm_cell/Const_5?
lstm/lstm_cell/Mul_12Mullstm/lstm_cell/add_6:z:0lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Mul_12?
lstm/lstm_cell/Add_7Addlstm/lstm_cell/Mul_12:z:0lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Add_7?
(lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(lstm/lstm_cell/clip_by_value_2/Minimum/y?
&lstm/lstm_cell/clip_by_value_2/MinimumMinimumlstm/lstm_cell/Add_7:z:01lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2(
&lstm/lstm_cell/clip_by_value_2/Minimum?
 lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 lstm/lstm_cell/clip_by_value_2/y?
lstm/lstm_cell/clip_by_value_2Maximum*lstm/lstm_cell/clip_by_value_2/Minimum:z:0)lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2 
lstm/lstm_cell/clip_by_value_2?
lstm/lstm_cell/Tanh_1Tanhlstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/Tanh_1?
lstm/lstm_cell/mul_13Mul"lstm/lstm_cell/clip_by_value_2:z:0lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/lstm_cell/mul_13?
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2$
"lstm/TensorArrayV2_1/element_shape?
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm/TensorArrayV2_1X
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
	lstm/time?
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
lstm/while/maximum_iterationst
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/while/loop_counter?

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_lstm_cell_split_readvariableop_resource.lstm_lstm_cell_split_1_readvariableop_resource&lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*!
bodyR
lstm_while_body_58066*!
condR
lstm_while_cond_58065*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2

lstm/while?
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   27
5lstm/TensorArrayV2Stack/TensorListStack/element_shape?
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02)
'lstm/TensorArrayV2Stack/TensorListStack?
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm/strided_slice_3/stack?
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice_3/stack_1?
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice_3/stack_2?
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
lstm/strided_slice_3?
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm/transpose_1/perm?
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
lstm/transpose_1p
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/runtime?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense/Sigmoid?
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/lstm_cell/ReadVariableOp ^lstm/lstm_cell/ReadVariableOp_1 ^lstm/lstm_cell/ReadVariableOp_2 ^lstm/lstm_cell/ReadVariableOp_3$^lstm/lstm_cell/split/ReadVariableOp&^lstm/lstm_cell/split_1/ReadVariableOp^lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2>
lstm/lstm_cell/ReadVariableOplstm/lstm_cell/ReadVariableOp2B
lstm/lstm_cell/ReadVariableOp_1lstm/lstm_cell/ReadVariableOp_12B
lstm/lstm_cell/ReadVariableOp_2lstm/lstm_cell/ReadVariableOp_22B
lstm/lstm_cell/ReadVariableOp_3lstm/lstm_cell/ReadVariableOp_32J
#lstm/lstm_cell/split/ReadVariableOp#lstm/lstm_cell/split/ReadVariableOp2N
%lstm/lstm_cell/split_1/ReadVariableOp%lstm/lstm_cell/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

?
D__inference_embedding_layer_call_and_return_conditional_losses_58336

inputs+
embedding_lookup_58330:???
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_58330Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/58330*5
_output_shapes#
!:???????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/58330*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
??
?
 sequential_lstm_while_body_55606<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0S
?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0:
??P
Asequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?L
9sequential_lstm_while_lstm_cell_readvariableop_resource_0:	@?"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorQ
=sequential_lstm_while_lstm_cell_split_readvariableop_resource:
??N
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resource:	?J
7sequential_lstm_while_lstm_cell_readvariableop_resource:	@???.sequential/lstm/while/lstm_cell/ReadVariableOp?0sequential/lstm/while/lstm_cell/ReadVariableOp_1?0sequential/lstm/while/lstm_cell/ReadVariableOp_2?0sequential/lstm/while/lstm_cell/ReadVariableOp_3?4sequential/lstm/while/lstm_cell/split/ReadVariableOp?6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp?
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2I
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02;
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItem?
/sequential/lstm/while/lstm_cell/ones_like/ShapeShape@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:21
/sequential/lstm/while/lstm_cell/ones_like/Shape?
/sequential/lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential/lstm/while/lstm_cell/ones_like/Const?
)sequential/lstm/while/lstm_cell/ones_likeFill8sequential/lstm/while/lstm_cell/ones_like/Shape:output:08sequential/lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2+
)sequential/lstm/while/lstm_cell/ones_like?
1sequential/lstm/while/lstm_cell/ones_like_1/ShapeShape#sequential_lstm_while_placeholder_2*
T0*
_output_shapes
:23
1sequential/lstm/while/lstm_cell/ones_like_1/Shape?
1sequential/lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential/lstm/while/lstm_cell/ones_like_1/Const?
+sequential/lstm/while/lstm_cell/ones_like_1Fill:sequential/lstm/while/lstm_cell/ones_like_1/Shape:output:0:sequential/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2-
+sequential/lstm/while/lstm_cell/ones_like_1?
#sequential/lstm/while/lstm_cell/mulMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/while/lstm_cell/mul?
%sequential/lstm/while/lstm_cell/mul_1Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_1?
%sequential/lstm/while/lstm_cell/mul_2Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_2?
%sequential/lstm/while/lstm_cell/mul_3Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:02sequential/lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2'
%sequential/lstm/while/lstm_cell/mul_3?
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential/lstm/while/lstm_cell/split/split_dim?
4sequential/lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype026
4sequential/lstm/while/lstm_cell/split/ReadVariableOp?
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:0<sequential/lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2'
%sequential/lstm/while/lstm_cell/split?
&sequential/lstm/while/lstm_cell/MatMulMatMul'sequential/lstm/while/lstm_cell/mul:z:0.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/MatMul?
(sequential/lstm/while/lstm_cell/MatMul_1MatMul)sequential/lstm/while/lstm_cell/mul_1:z:0.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_1?
(sequential/lstm/while/lstm_cell/MatMul_2MatMul)sequential/lstm/while/lstm_cell/mul_2:z:0.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_2?
(sequential/lstm/while/lstm_cell/MatMul_3MatMul)sequential/lstm/while/lstm_cell/mul_3:z:0.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_3?
1sequential/lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential/lstm/while/lstm_cell/split_1/split_dim?
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype028
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp?
'sequential/lstm/while/lstm_cell/split_1Split:sequential/lstm/while/lstm_cell/split_1/split_dim:output:0>sequential/lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2)
'sequential/lstm/while/lstm_cell/split_1?
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd0sequential/lstm/while/lstm_cell/MatMul:product:00sequential/lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential/lstm/while/lstm_cell/BiasAdd?
)sequential/lstm/while/lstm_cell/BiasAdd_1BiasAdd2sequential/lstm/while/lstm_cell/MatMul_1:product:00sequential/lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_1?
)sequential/lstm/while/lstm_cell/BiasAdd_2BiasAdd2sequential/lstm/while/lstm_cell/MatMul_2:product:00sequential/lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_2?
)sequential/lstm/while/lstm_cell/BiasAdd_3BiasAdd2sequential/lstm/while/lstm_cell/MatMul_3:product:00sequential/lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/while/lstm_cell/BiasAdd_3?
%sequential/lstm/while/lstm_cell/mul_4Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_4?
%sequential/lstm/while/lstm_cell/mul_5Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_5?
%sequential/lstm/while/lstm_cell/mul_6Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_6?
%sequential/lstm/while/lstm_cell/mul_7Mul#sequential_lstm_while_placeholder_24sequential/lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/mul_7?
.sequential/lstm/while/lstm_cell/ReadVariableOpReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype020
.sequential/lstm/while/lstm_cell/ReadVariableOp?
3sequential/lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential/lstm/while/lstm_cell/strided_slice/stack?
5sequential/lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential/lstm/while/lstm_cell/strided_slice/stack_1?
5sequential/lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential/lstm/while/lstm_cell/strided_slice/stack_2?
-sequential/lstm/while/lstm_cell/strided_sliceStridedSlice6sequential/lstm/while/lstm_cell/ReadVariableOp:value:0<sequential/lstm/while/lstm_cell/strided_slice/stack:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_1:output:0>sequential/lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2/
-sequential/lstm/while/lstm_cell/strided_slice?
(sequential/lstm/while/lstm_cell/MatMul_4MatMul)sequential/lstm/while/lstm_cell/mul_4:z:06sequential/lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_4?
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/BiasAdd:output:02sequential/lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/while/lstm_cell/add?
%sequential/lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2'
%sequential/lstm/while/lstm_cell/Const?
'sequential/lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential/lstm/while/lstm_cell/Const_1?
%sequential/lstm/while/lstm_cell/Mul_8Mul'sequential/lstm/while/lstm_cell/add:z:0.sequential/lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/Mul_8?
%sequential/lstm/while/lstm_cell/Add_1Add)sequential/lstm/while/lstm_cell/Mul_8:z:00sequential/lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/Add_1?
7sequential/lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7sequential/lstm/while/lstm_cell/clip_by_value/Minimum/y?
5sequential/lstm/while/lstm_cell/clip_by_value/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_1:z:0@sequential/lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@27
5sequential/lstm/while/lstm_cell/clip_by_value/Minimum?
/sequential/lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential/lstm/while/lstm_cell/clip_by_value/y?
-sequential/lstm/while/lstm_cell/clip_by_valueMaximum9sequential/lstm/while/lstm_cell/clip_by_value/Minimum:z:08sequential/lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2/
-sequential/lstm/while/lstm_cell/clip_by_value?
0sequential/lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_1?
5sequential/lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   27
5sequential/lstm/while/lstm_cell/strided_slice_1/stack?
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_1/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_1StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_1:value:0>sequential/lstm/while/lstm_cell/strided_slice_1/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_1?
(sequential/lstm/while/lstm_cell/MatMul_5MatMul)sequential/lstm/while/lstm_cell/mul_5:z:08sequential/lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_5?
%sequential/lstm/while/lstm_cell/add_2AddV22sequential/lstm/while/lstm_cell/BiasAdd_1:output:02sequential/lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_2?
'sequential/lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'sequential/lstm/while/lstm_cell/Const_2?
'sequential/lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential/lstm/while/lstm_cell/Const_3?
%sequential/lstm/while/lstm_cell/Mul_9Mul)sequential/lstm/while/lstm_cell/add_2:z:00sequential/lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/Mul_9?
%sequential/lstm/while/lstm_cell/Add_3Add)sequential/lstm/while/lstm_cell/Mul_9:z:00sequential/lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/Add_3?
9sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/y?
7sequential/lstm/while/lstm_cell/clip_by_value_1/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_3:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@29
7sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum?
1sequential/lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential/lstm/while/lstm_cell/clip_by_value_1/y?
/sequential/lstm/while/lstm_cell/clip_by_value_1Maximum;sequential/lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@21
/sequential/lstm/while/lstm_cell/clip_by_value_1?
&sequential/lstm/while/lstm_cell/mul_10Mul3sequential/lstm/while/lstm_cell/clip_by_value_1:z:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/mul_10?
0sequential/lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_2?
5sequential/lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential/lstm/while/lstm_cell/strided_slice_2/stack?
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_2/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_2StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_2:value:0>sequential/lstm/while/lstm_cell/strided_slice_2/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_2?
(sequential/lstm/while/lstm_cell/MatMul_6MatMul)sequential/lstm/while/lstm_cell/mul_6:z:08sequential/lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_6?
%sequential/lstm/while/lstm_cell/add_4AddV22sequential/lstm/while/lstm_cell/BiasAdd_2:output:02sequential/lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_4?
$sequential/lstm/while/lstm_cell/TanhTanh)sequential/lstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2&
$sequential/lstm/while/lstm_cell/Tanh?
&sequential/lstm/while/lstm_cell/mul_11Mul1sequential/lstm/while/lstm_cell/clip_by_value:z:0(sequential/lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/mul_11?
%sequential/lstm/while/lstm_cell/add_5AddV2*sequential/lstm/while/lstm_cell/mul_10:z:0*sequential/lstm/while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_5?
0sequential/lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp9sequential_lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype022
0sequential/lstm/while/lstm_cell/ReadVariableOp_3?
5sequential/lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   27
5sequential/lstm/while/lstm_cell/strided_slice_3/stack?
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_1?
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential/lstm/while/lstm_cell/strided_slice_3/stack_2?
/sequential/lstm/while/lstm_cell/strided_slice_3StridedSlice8sequential/lstm/while/lstm_cell/ReadVariableOp_3:value:0>sequential/lstm/while/lstm_cell/strided_slice_3/stack:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_1:output:0@sequential/lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask21
/sequential/lstm/while/lstm_cell/strided_slice_3?
(sequential/lstm/while/lstm_cell/MatMul_7MatMul)sequential/lstm/while/lstm_cell/mul_7:z:08sequential/lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2*
(sequential/lstm/while/lstm_cell/MatMul_7?
%sequential/lstm/while/lstm_cell/add_6AddV22sequential/lstm/while/lstm_cell/BiasAdd_3:output:02sequential/lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/add_6?
'sequential/lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2)
'sequential/lstm/while/lstm_cell/Const_4?
'sequential/lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2)
'sequential/lstm/while/lstm_cell/Const_5?
&sequential/lstm/while/lstm_cell/Mul_12Mul)sequential/lstm/while/lstm_cell/add_6:z:00sequential/lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/Mul_12?
%sequential/lstm/while/lstm_cell/Add_7Add*sequential/lstm/while/lstm_cell/Mul_12:z:00sequential/lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/while/lstm_cell/Add_7?
9sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/y?
7sequential/lstm/while/lstm_cell/clip_by_value_2/MinimumMinimum)sequential/lstm/while/lstm_cell/Add_7:z:0Bsequential/lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@29
7sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum?
1sequential/lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    23
1sequential/lstm/while/lstm_cell/clip_by_value_2/y?
/sequential/lstm/while/lstm_cell/clip_by_value_2Maximum;sequential/lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0:sequential/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@21
/sequential/lstm/while/lstm_cell/clip_by_value_2?
&sequential/lstm/while/lstm_cell/Tanh_1Tanh)sequential/lstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/Tanh_1?
&sequential/lstm/while/lstm_cell/mul_13Mul3sequential/lstm/while/lstm_cell/clip_by_value_2:z:0*sequential/lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2(
&sequential/lstm/while/lstm_cell/mul_13?
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder*sequential/lstm/while/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02<
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItem|
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add/y?
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add?
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
sequential/lstm/while/add_1/y?
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/while/add_1?
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2 
sequential/lstm/while/Identity?
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_1?
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_2?
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2"
 sequential/lstm/while/Identity_3?
 sequential/lstm/while/Identity_4Identity*sequential/lstm/while/lstm_cell/mul_13:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/while/Identity_4?
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_5:z:0/^sequential/lstm/while/lstm_cell/ReadVariableOp1^sequential/lstm/while/lstm_cell/ReadVariableOp_11^sequential/lstm/while/lstm_cell/ReadVariableOp_21^sequential/lstm/while/lstm_cell/ReadVariableOp_35^sequential/lstm/while/lstm_cell/split/ReadVariableOp7^sequential/lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/while/Identity_5"I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"t
7sequential_lstm_while_lstm_cell_readvariableop_resource9sequential_lstm_while_lstm_cell_readvariableop_resource_0"?
?sequential_lstm_while_lstm_cell_split_1_readvariableop_resourceAsequential_lstm_while_lstm_cell_split_1_readvariableop_resource_0"?
=sequential_lstm_while_lstm_cell_split_readvariableop_resource?sequential_lstm_while_lstm_cell_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"?
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2`
.sequential/lstm/while/lstm_cell/ReadVariableOp.sequential/lstm/while/lstm_cell/ReadVariableOp2d
0sequential/lstm/while/lstm_cell/ReadVariableOp_10sequential/lstm/while/lstm_cell/ReadVariableOp_12d
0sequential/lstm/while/lstm_cell/ReadVariableOp_20sequential/lstm/while/lstm_cell/ReadVariableOp_22d
0sequential/lstm/while/lstm_cell/ReadVariableOp_30sequential/lstm/while/lstm_cell/ReadVariableOp_32l
4sequential/lstm/while/lstm_cell/split/ReadVariableOp4sequential/lstm/while/lstm_cell/split/ReadVariableOp2p
6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp6sequential/lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_55928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_55952_0:
??&
while_lstm_cell_55954_0:	?*
while_lstm_cell_55956_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_55952:
??$
while_lstm_cell_55954:	?(
while_lstm_cell_55956:	@???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_55952_0while_lstm_cell_55954_0while_lstm_cell_55956_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_559142)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_55952while_lstm_cell_55952_0"0
while_lstm_cell_55954while_lstm_cell_55954_0"0
while_lstm_cell_55956while_lstm_cell_55956_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?a
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_55914

inputs

states
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?*
readvariableop_resource:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3e
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_4e
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_5e
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_6e
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1`
Mul_8Muladd:z:0Const:output:0*
T0*'
_output_shapes
:?????????@2
Mul_8d
Add_1Add	Mul_8:z:0Const_1:output:0*
T0*'
_output_shapes
:?????????@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:?????????@2
Mul_9d
Add_3Add	Mul_9:z:0Const_3:output:0*
T0*'
_output_shapes
:?????????@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1h
mul_10Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:?????????@2
mul_10}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:?????????@2
Tanhf
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_11a
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*'
_output_shapes
:?????????@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5f
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:?????????@2
Mul_12e
Add_7Add
Mul_12:z:0Const_5:output:0*
T0*'
_output_shapes
:?????????@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1j
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_13?
IdentityIdentity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?	
?
*__inference_sequential_layer_call_fn_56958
embedding_input
unknown:???
	unknown_0:
??
	unknown_1:	?
	unknown_2:	@?
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_569432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
??
?
?__inference_lstm_layer_call_and_return_conditional_losses_57402

inputs;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likew
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout/Const?
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul~
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout/Shape?
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???20
.lstm_cell/dropout/random_uniform/RandomUniform?
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 lstm_cell/dropout/GreaterEqual/y?
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
lstm_cell/dropout/GreaterEqual?
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout/Cast?
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout/Mul_1{
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_1/Const?
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul?
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_1/Shape?
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_1/random_uniform/RandomUniform?
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_1/GreaterEqual/y?
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_1/GreaterEqual?
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Cast?
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_1/Mul_1{
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_2/Const?
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul?
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_2/Shape?
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ݐ?22
0lstm_cell/dropout_2/random_uniform/RandomUniform?
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_2/GreaterEqual/y?
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_2/GreaterEqual?
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Cast?
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_2/Mul_1{
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_3/Const?
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul?
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_3/Shape?
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_3/random_uniform/RandomUniform?
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_3/GreaterEqual/y?
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_cell/dropout_3/GreaterEqual?
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Cast?
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
lstm_cell/dropout_3/Mul_1x
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1{
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_4/Const?
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul?
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_4/Shape?
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_4/random_uniform/RandomUniform?
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_4/GreaterEqual/y?
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_4/GreaterEqual?
lstm_cell/dropout_4/CastCast$lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Cast?
lstm_cell/dropout_4/Mul_1Mullstm_cell/dropout_4/Mul:z:0lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_4/Mul_1{
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_5/Const?
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul?
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_5/Shape?
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_5/random_uniform/RandomUniform?
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_5/GreaterEqual/y?
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_5/GreaterEqual?
lstm_cell/dropout_5/CastCast$lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Cast?
lstm_cell/dropout_5/Mul_1Mullstm_cell/dropout_5/Mul:z:0lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_5/Mul_1{
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_6/Const?
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul?
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_6/Shape?
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_6/random_uniform/RandomUniform?
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_6/GreaterEqual/y?
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_6/GreaterEqual?
lstm_cell/dropout_6/CastCast$lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Cast?
lstm_cell/dropout_6/Mul_1Mullstm_cell/dropout_6/Mul:z:0lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_6/Mul_1{
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/dropout_7/Const?
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul?
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell/dropout_7/Shape?
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???22
0lstm_cell/dropout_7/random_uniform/RandomUniform?
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2$
"lstm_cell/dropout_7/GreaterEqual/y?
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm_cell/dropout_7/GreaterEqual?
lstm_cell/dropout_7/CastCast$lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Cast?
lstm_cell/dropout_7/Mul_1Mullstm_cell/dropout_7/Mul:z:0lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/dropout_7/Mul_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_57183*
condR
while_cond_57182*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
lstm_while_cond_58065&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_58065___redundant_placeholder0=
9lstm_while_lstm_while_cond_58065___redundant_placeholder1=
9lstm_while_lstm_while_cond_58065___redundant_placeholder2=
9lstm_while_lstm_while_cond_58065___redundant_placeholder3
lstm_while_identity
?
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: 2
lstm/while/Lessl
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm/while/Identity"3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
??
?

lstm_while_body_57696&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
??E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?A
.lstm_while_lstm_cell_readvariableop_resource_0:	@?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
??C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	??
,lstm_while_lstm_cell_readvariableop_resource:	@???#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/ones_like?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm/while/lstm_cell/ones_like_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2)lstm/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add}
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const?
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_1?
lstm/while/lstm_cell/Mul_8Mullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_8?
lstm/while/lstm_cell/Add_1Addlstm/while/lstm_cell/Mul_8:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_1?
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,lstm/while/lstm_cell/clip_by_value/Minimum/y?
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2,
*lstm/while/lstm_cell/clip_by_value/Minimum?
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm/while/lstm_cell/clip_by_value/y?
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/clip_by_value?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const_2?
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_3?
lstm/while/lstm_cell/Mul_9Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_9?
lstm/while/lstm_cell/Add_3Addlstm/while/lstm_cell/Mul_9:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_3?
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.lstm/while/lstm_cell/clip_by_value_1/Minimum/y?
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2.
,lstm/while/lstm_cell/clip_by_value_1/Minimum?
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&lstm/while/lstm_cell/clip_by_value_1/y?
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/clip_by_value_1?
lstm/while/lstm_cell/mul_10Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_10?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_11Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_11?
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_10:z:0lstm/while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_5?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_6?
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const_4?
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_5?
lstm/while/lstm_cell/Mul_12Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_12?
lstm/while/lstm_cell/Add_7Addlstm/while/lstm_cell/Mul_12:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_7?
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.lstm/while/lstm_cell/clip_by_value_2/Minimum/y?
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2.
,lstm/while/lstm_cell/clip_by_value_2/Minimum?
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&lstm/while/lstm_cell/clip_by_value_2/y?
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/clip_by_value_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_13Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_13?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_13:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?
 __inference__wrapped_model_55768
embedding_input@
+sequential_embedding_embedding_lookup_55466:???K
7sequential_lstm_lstm_cell_split_readvariableop_resource:
??H
9sequential_lstm_lstm_cell_split_1_readvariableop_resource:	?D
1sequential_lstm_lstm_cell_readvariableop_resource:	@?A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?(sequential/lstm/lstm_cell/ReadVariableOp?*sequential/lstm/lstm_cell/ReadVariableOp_1?*sequential/lstm/lstm_cell/ReadVariableOp_2?*sequential/lstm/lstm_cell/ReadVariableOp_3?.sequential/lstm/lstm_cell/split/ReadVariableOp?0sequential/lstm/lstm_cell/split_1/ReadVariableOp?sequential/lstm/while?
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
sequential/embedding/Cast?
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_55466sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/55466*5
_output_shapes#
!:???????????????????*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/55466*5
_output_shapes#
!:???????????????????20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:???????????????????22
0sequential/embedding/embedding_lookup/Identity_1?
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/lstm/Shape?
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stack?
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1?
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2?
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
sequential/lstm/zeros/mul/y?
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
sequential/lstm/zeros/Less/y?
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/Less?
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2 
sequential/lstm/zeros/packed/1?
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/Const?
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/zeros?
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
sequential/lstm/zeros_1/mul/y?
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mul?
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2 
sequential/lstm/zeros_1/Less/y?
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/Less?
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2"
 sequential/lstm/zeros_1/packed/1?
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packed?
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Const?
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/zeros_1?
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
sequential/lstm/transpose/perm?
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
sequential/lstm/transpose
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:2
sequential/lstm/Shape_1?
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_1/stack?
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_1?
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_1/stack_2?
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
sequential/lstm/strided_slice_1?
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential/lstm/TensorArrayV2/element_shape?
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
sequential/lstm/TensorArrayV2?
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape?
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7sequential/lstm/TensorArrayUnstack/TensorListFromTensor?
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential/lstm/strided_slice_2/stack?
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_1?
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_2/stack_2?
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2!
sequential/lstm/strided_slice_2?
)sequential/lstm/lstm_cell/ones_like/ShapeShape(sequential/lstm/strided_slice_2:output:0*
T0*
_output_shapes
:2+
)sequential/lstm/lstm_cell/ones_like/Shape?
)sequential/lstm/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)sequential/lstm/lstm_cell/ones_like/Const?
#sequential/lstm/lstm_cell/ones_likeFill2sequential/lstm/lstm_cell/ones_like/Shape:output:02sequential/lstm/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2%
#sequential/lstm/lstm_cell/ones_like?
+sequential/lstm/lstm_cell/ones_like_1/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
:2-
+sequential/lstm/lstm_cell/ones_like_1/Shape?
+sequential/lstm/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2-
+sequential/lstm/lstm_cell/ones_like_1/Const?
%sequential/lstm/lstm_cell/ones_like_1Fill4sequential/lstm/lstm_cell/ones_like_1/Shape:output:04sequential/lstm/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2'
%sequential/lstm/lstm_cell/ones_like_1?
sequential/lstm/lstm_cell/mulMul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
sequential/lstm/lstm_cell/mul?
sequential/lstm/lstm_cell/mul_1Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_1?
sequential/lstm/lstm_cell/mul_2Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_2?
sequential/lstm/lstm_cell/mul_3Mul(sequential/lstm/strided_slice_2:output:0,sequential/lstm/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2!
sequential/lstm/lstm_cell/mul_3?
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential/lstm/lstm_cell/split/split_dim?
.sequential/lstm/lstm_cell/split/ReadVariableOpReadVariableOp7sequential_lstm_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential/lstm/lstm_cell/split/ReadVariableOp?
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:06sequential/lstm/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2!
sequential/lstm/lstm_cell/split?
 sequential/lstm/lstm_cell/MatMulMatMul!sequential/lstm/lstm_cell/mul:z:0(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/MatMul?
"sequential/lstm/lstm_cell/MatMul_1MatMul#sequential/lstm/lstm_cell/mul_1:z:0(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_1?
"sequential/lstm/lstm_cell/MatMul_2MatMul#sequential/lstm/lstm_cell/mul_2:z:0(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_2?
"sequential/lstm/lstm_cell/MatMul_3MatMul#sequential/lstm/lstm_cell/mul_3:z:0(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_3?
+sequential/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential/lstm/lstm_cell/split_1/split_dim?
0sequential/lstm/lstm_cell/split_1/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype022
0sequential/lstm/lstm_cell/split_1/ReadVariableOp?
!sequential/lstm/lstm_cell/split_1Split4sequential/lstm/lstm_cell/split_1/split_dim:output:08sequential/lstm/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2#
!sequential/lstm/lstm_cell/split_1?
!sequential/lstm/lstm_cell/BiasAddBiasAdd*sequential/lstm/lstm_cell/MatMul:product:0*sequential/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2#
!sequential/lstm/lstm_cell/BiasAdd?
#sequential/lstm/lstm_cell/BiasAdd_1BiasAdd,sequential/lstm/lstm_cell/MatMul_1:product:0*sequential/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_1?
#sequential/lstm/lstm_cell/BiasAdd_2BiasAdd,sequential/lstm/lstm_cell/MatMul_2:product:0*sequential/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_2?
#sequential/lstm/lstm_cell/BiasAdd_3BiasAdd,sequential/lstm/lstm_cell/MatMul_3:product:0*sequential/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2%
#sequential/lstm/lstm_cell/BiasAdd_3?
sequential/lstm/lstm_cell/mul_4Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_4?
sequential/lstm/lstm_cell/mul_5Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_5?
sequential/lstm/lstm_cell/mul_6Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_6?
sequential/lstm/lstm_cell/mul_7Mulsequential/lstm/zeros:output:0.sequential/lstm/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/mul_7?
(sequential/lstm/lstm_cell/ReadVariableOpReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02*
(sequential/lstm/lstm_cell/ReadVariableOp?
-sequential/lstm/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-sequential/lstm/lstm_cell/strided_slice/stack?
/sequential/lstm/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential/lstm/lstm_cell/strided_slice/stack_1?
/sequential/lstm/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/sequential/lstm/lstm_cell/strided_slice/stack_2?
'sequential/lstm/lstm_cell/strided_sliceStridedSlice0sequential/lstm/lstm_cell/ReadVariableOp:value:06sequential/lstm/lstm_cell/strided_slice/stack:output:08sequential/lstm/lstm_cell/strided_slice/stack_1:output:08sequential/lstm/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2)
'sequential/lstm/lstm_cell/strided_slice?
"sequential/lstm/lstm_cell/MatMul_4MatMul#sequential/lstm/lstm_cell/mul_4:z:00sequential/lstm/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_4?
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/BiasAdd:output:0,sequential/lstm/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
sequential/lstm/lstm_cell/add?
sequential/lstm/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2!
sequential/lstm/lstm_cell/Const?
!sequential/lstm/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!sequential/lstm/lstm_cell/Const_1?
sequential/lstm/lstm_cell/Mul_8Mul!sequential/lstm/lstm_cell/add:z:0(sequential/lstm/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/Mul_8?
sequential/lstm/lstm_cell/Add_1Add#sequential/lstm/lstm_cell/Mul_8:z:0*sequential/lstm/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/Add_1?
1sequential/lstm/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??23
1sequential/lstm/lstm_cell/clip_by_value/Minimum/y?
/sequential/lstm/lstm_cell/clip_by_value/MinimumMinimum#sequential/lstm/lstm_cell/Add_1:z:0:sequential/lstm/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@21
/sequential/lstm/lstm_cell/clip_by_value/Minimum?
)sequential/lstm/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)sequential/lstm/lstm_cell/clip_by_value/y?
'sequential/lstm/lstm_cell/clip_by_valueMaximum3sequential/lstm/lstm_cell/clip_by_value/Minimum:z:02sequential/lstm/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2)
'sequential/lstm/lstm_cell/clip_by_value?
*sequential/lstm/lstm_cell/ReadVariableOp_1ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_1?
/sequential/lstm/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   21
/sequential/lstm/lstm_cell/strided_slice_1/stack?
1sequential/lstm/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   23
1sequential/lstm/lstm_cell/strided_slice_1/stack_1?
1sequential/lstm/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_1/stack_2?
)sequential/lstm/lstm_cell/strided_slice_1StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_1:value:08sequential/lstm/lstm_cell/strided_slice_1/stack:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_1?
"sequential/lstm/lstm_cell/MatMul_5MatMul#sequential/lstm/lstm_cell/mul_5:z:02sequential/lstm/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_5?
sequential/lstm/lstm_cell/add_2AddV2,sequential/lstm/lstm_cell/BiasAdd_1:output:0,sequential/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_2?
!sequential/lstm/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!sequential/lstm/lstm_cell/Const_2?
!sequential/lstm/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!sequential/lstm/lstm_cell/Const_3?
sequential/lstm/lstm_cell/Mul_9Mul#sequential/lstm/lstm_cell/add_2:z:0*sequential/lstm/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/Mul_9?
sequential/lstm/lstm_cell/Add_3Add#sequential/lstm/lstm_cell/Mul_9:z:0*sequential/lstm/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/Add_3?
3sequential/lstm/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??25
3sequential/lstm/lstm_cell/clip_by_value_1/Minimum/y?
1sequential/lstm/lstm_cell/clip_by_value_1/MinimumMinimum#sequential/lstm/lstm_cell/Add_3:z:0<sequential/lstm/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@23
1sequential/lstm/lstm_cell/clip_by_value_1/Minimum?
+sequential/lstm/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+sequential/lstm/lstm_cell/clip_by_value_1/y?
)sequential/lstm/lstm_cell/clip_by_value_1Maximum5sequential/lstm/lstm_cell/clip_by_value_1/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/lstm_cell/clip_by_value_1?
 sequential/lstm/lstm_cell/mul_10Mul-sequential/lstm/lstm_cell/clip_by_value_1:z:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/mul_10?
*sequential/lstm/lstm_cell/ReadVariableOp_2ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_2?
/sequential/lstm/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   21
/sequential/lstm/lstm_cell/strided_slice_2/stack?
1sequential/lstm/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   23
1sequential/lstm/lstm_cell/strided_slice_2/stack_1?
1sequential/lstm/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_2/stack_2?
)sequential/lstm/lstm_cell/strided_slice_2StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_2:value:08sequential/lstm/lstm_cell/strided_slice_2/stack:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_2?
"sequential/lstm/lstm_cell/MatMul_6MatMul#sequential/lstm/lstm_cell/mul_6:z:02sequential/lstm/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_6?
sequential/lstm/lstm_cell/add_4AddV2,sequential/lstm/lstm_cell/BiasAdd_2:output:0,sequential/lstm/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_4?
sequential/lstm/lstm_cell/TanhTanh#sequential/lstm/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2 
sequential/lstm/lstm_cell/Tanh?
 sequential/lstm/lstm_cell/mul_11Mul+sequential/lstm/lstm_cell/clip_by_value:z:0"sequential/lstm/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/mul_11?
sequential/lstm/lstm_cell/add_5AddV2$sequential/lstm/lstm_cell/mul_10:z:0$sequential/lstm/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_5?
*sequential/lstm/lstm_cell/ReadVariableOp_3ReadVariableOp1sequential_lstm_lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02,
*sequential/lstm/lstm_cell/ReadVariableOp_3?
/sequential/lstm/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   21
/sequential/lstm/lstm_cell/strided_slice_3/stack?
1sequential/lstm/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        23
1sequential/lstm/lstm_cell/strided_slice_3/stack_1?
1sequential/lstm/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      23
1sequential/lstm/lstm_cell/strided_slice_3/stack_2?
)sequential/lstm/lstm_cell/strided_slice_3StridedSlice2sequential/lstm/lstm_cell/ReadVariableOp_3:value:08sequential/lstm/lstm_cell/strided_slice_3/stack:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_1:output:0:sequential/lstm/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2+
)sequential/lstm/lstm_cell/strided_slice_3?
"sequential/lstm/lstm_cell/MatMul_7MatMul#sequential/lstm/lstm_cell/mul_7:z:02sequential/lstm/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2$
"sequential/lstm/lstm_cell/MatMul_7?
sequential/lstm/lstm_cell/add_6AddV2,sequential/lstm/lstm_cell/BiasAdd_3:output:0,sequential/lstm/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/add_6?
!sequential/lstm/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!sequential/lstm/lstm_cell/Const_4?
!sequential/lstm/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!sequential/lstm/lstm_cell/Const_5?
 sequential/lstm/lstm_cell/Mul_12Mul#sequential/lstm/lstm_cell/add_6:z:0*sequential/lstm/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/Mul_12?
sequential/lstm/lstm_cell/Add_7Add$sequential/lstm/lstm_cell/Mul_12:z:0*sequential/lstm/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2!
sequential/lstm/lstm_cell/Add_7?
3sequential/lstm/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??25
3sequential/lstm/lstm_cell/clip_by_value_2/Minimum/y?
1sequential/lstm/lstm_cell/clip_by_value_2/MinimumMinimum#sequential/lstm/lstm_cell/Add_7:z:0<sequential/lstm/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@23
1sequential/lstm/lstm_cell/clip_by_value_2/Minimum?
+sequential/lstm/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+sequential/lstm/lstm_cell/clip_by_value_2/y?
)sequential/lstm/lstm_cell/clip_by_value_2Maximum5sequential/lstm/lstm_cell/clip_by_value_2/Minimum:z:04sequential/lstm/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2+
)sequential/lstm/lstm_cell/clip_by_value_2?
 sequential/lstm/lstm_cell/Tanh_1Tanh#sequential/lstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/Tanh_1?
 sequential/lstm/lstm_cell/mul_13Mul-sequential/lstm/lstm_cell/clip_by_value_2:z:0$sequential/lstm/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2"
 sequential/lstm/lstm_cell/mul_13?
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2/
-sequential/lstm/TensorArrayV2_1/element_shape?
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
sequential/lstm/TensorArrayV2_1n
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/time?
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(sequential/lstm/while/maximum_iterations?
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2$
"sequential/lstm/while/loop_counter?
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_lstm_lstm_cell_split_readvariableop_resource9sequential_lstm_lstm_cell_split_1_readvariableop_resource1sequential_lstm_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*,
body$R"
 sequential_lstm_while_body_55606*,
cond$R"
 sequential_lstm_while_cond_55605*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
sequential/lstm/while?
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2B
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape?
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype024
2sequential/lstm/TensorArrayV2Stack/TensorListStack?
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2'
%sequential/lstm/strided_slice_3/stack?
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential/lstm/strided_slice_3/stack_1?
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'sequential/lstm/strided_slice_3/stack_2?
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2!
sequential/lstm/strided_slice_3?
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 sequential/lstm/transpose_1/perm?
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
sequential/lstm/transpose_1?
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/runtime?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/BiasAdd?
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/dense/Sigmoid?
IdentityIdentitysequential/dense/Sigmoid:y:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup)^sequential/lstm/lstm_cell/ReadVariableOp+^sequential/lstm/lstm_cell/ReadVariableOp_1+^sequential/lstm/lstm_cell/ReadVariableOp_2+^sequential/lstm/lstm_cell/ReadVariableOp_3/^sequential/lstm/lstm_cell/split/ReadVariableOp1^sequential/lstm/lstm_cell/split_1/ReadVariableOp^sequential/lstm/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2T
(sequential/lstm/lstm_cell/ReadVariableOp(sequential/lstm/lstm_cell/ReadVariableOp2X
*sequential/lstm/lstm_cell/ReadVariableOp_1*sequential/lstm/lstm_cell/ReadVariableOp_12X
*sequential/lstm/lstm_cell/ReadVariableOp_2*sequential/lstm/lstm_cell/ReadVariableOp_22X
*sequential/lstm/lstm_cell/ReadVariableOp_3*sequential/lstm/lstm_cell/ReadVariableOp_32`
.sequential/lstm/lstm_cell/split/ReadVariableOp.sequential/lstm/lstm_cell/split/ReadVariableOp2d
0sequential/lstm/lstm_cell/split_1/ReadVariableOp0sequential/lstm/lstm_cell/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
̰
?
?__inference_lstm_layer_call_and_return_conditional_losses_56917

inputs;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56762*
condR
while_cond_56761*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
??
?	
while_body_56762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_sequential_layer_call_fn_58309

inputs
unknown:???
	unknown_0:
??
	unknown_1:	?
	unknown_2:	@?
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_569432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
??
?

lstm_while_body_58066&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0H
4lstm_while_lstm_cell_split_readvariableop_resource_0:
??E
6lstm_while_lstm_cell_split_1_readvariableop_resource_0:	?A
.lstm_while_lstm_cell_readvariableop_resource_0:	@?
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorF
2lstm_while_lstm_cell_split_readvariableop_resource:
??C
4lstm_while_lstm_cell_split_1_readvariableop_resource:	??
,lstm_while_lstm_cell_readvariableop_resource:	@???#lstm/while/lstm_cell/ReadVariableOp?%lstm/while/lstm_cell/ReadVariableOp_1?%lstm/while/lstm_cell/ReadVariableOp_2?%lstm/while/lstm_cell/ReadVariableOp_3?)lstm/while/lstm_cell/split/ReadVariableOp?+lstm/while/lstm_cell/split_1/ReadVariableOp?
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape?
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype020
.lstm/while/TensorArrayV2Read/TensorListGetItem?
$lstm/while/lstm_cell/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/ones_like/Shape?
$lstm/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/ones_like/Const?
lstm/while/lstm_cell/ones_likeFill-lstm/while/lstm_cell/ones_like/Shape:output:0-lstm/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2 
lstm/while/lstm_cell/ones_like?
"lstm/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"lstm/while/lstm_cell/dropout/Const?
 lstm/while/lstm_cell/dropout/MulMul'lstm/while/lstm_cell/ones_like:output:0+lstm/while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2"
 lstm/while/lstm_cell/dropout/Mul?
"lstm/while/lstm_cell/dropout/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm/while/lstm_cell/dropout/Shape?
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform+lstm/while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2Ƃ22;
9lstm/while/lstm_cell/dropout/random_uniform/RandomUniform?
+lstm/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+lstm/while/lstm_cell/dropout/GreaterEqual/y?
)lstm/while/lstm_cell/dropout/GreaterEqualGreaterEqualBlstm/while/lstm_cell/dropout/random_uniform/RandomUniform:output:04lstm/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2+
)lstm/while/lstm_cell/dropout/GreaterEqual?
!lstm/while/lstm_cell/dropout/CastCast-lstm/while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2#
!lstm/while/lstm_cell/dropout/Cast?
"lstm/while/lstm_cell/dropout/Mul_1Mul$lstm/while/lstm_cell/dropout/Mul:z:0%lstm/while/lstm_cell/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout/Mul_1?
$lstm/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_1/Const?
"lstm/while/lstm_cell/dropout_1/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_1/Mul?
$lstm/while/lstm_cell/dropout_1/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_1/Shape?
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??"2=
;lstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_1/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_1/GreaterEqual?
#lstm/while/lstm_cell/dropout_1/CastCast/lstm/while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_1/Cast?
$lstm/while/lstm_cell/dropout_1/Mul_1Mul&lstm/while/lstm_cell/dropout_1/Mul:z:0'lstm/while/lstm_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_1/Mul_1?
$lstm/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_2/Const?
"lstm/while/lstm_cell/dropout_2/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_2/Mul?
$lstm/while/lstm_cell/dropout_2/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_2/Shape?
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_2/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_2/GreaterEqual?
#lstm/while/lstm_cell/dropout_2/CastCast/lstm/while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_2/Cast?
$lstm/while/lstm_cell/dropout_2/Mul_1Mul&lstm/while/lstm_cell/dropout_2/Mul:z:0'lstm/while/lstm_cell/dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_2/Mul_1?
$lstm/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_3/Const?
"lstm/while/lstm_cell/dropout_3/MulMul'lstm/while/lstm_cell/ones_like:output:0-lstm/while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2$
"lstm/while/lstm_cell/dropout_3/Mul?
$lstm/while/lstm_cell/dropout_3/ShapeShape'lstm/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_3/Shape?
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2??02=
;lstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_3/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2-
+lstm/while/lstm_cell/dropout_3/GreaterEqual?
#lstm/while/lstm_cell/dropout_3/CastCast/lstm/while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2%
#lstm/while/lstm_cell/dropout_3/Cast?
$lstm/while/lstm_cell/dropout_3/Mul_1Mul&lstm/while/lstm_cell/dropout_3/Mul:z:0'lstm/while/lstm_cell/dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2&
$lstm/while/lstm_cell/dropout_3/Mul_1?
&lstm/while/lstm_cell/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:2(
&lstm/while/lstm_cell/ones_like_1/Shape?
&lstm/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&lstm/while/lstm_cell/ones_like_1/Const?
 lstm/while/lstm_cell/ones_like_1Fill/lstm/while/lstm_cell/ones_like_1/Shape:output:0/lstm/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2"
 lstm/while/lstm_cell/ones_like_1?
$lstm/while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_4/Const?
"lstm/while/lstm_cell/dropout_4/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_4/Mul?
$lstm/while/lstm_cell/dropout_4/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_4/Shape?
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_4/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_4/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_4/GreaterEqual?
#lstm/while/lstm_cell/dropout_4/CastCast/lstm/while/lstm_cell/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_4/Cast?
$lstm/while/lstm_cell/dropout_4/Mul_1Mul&lstm/while/lstm_cell/dropout_4/Mul:z:0'lstm/while/lstm_cell/dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_4/Mul_1?
$lstm/while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_5/Const?
"lstm/while/lstm_cell/dropout_5/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_5/Mul?
$lstm/while/lstm_cell/dropout_5/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_5/Shape?
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_5/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_5/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_5/GreaterEqual?
#lstm/while/lstm_cell/dropout_5/CastCast/lstm/while/lstm_cell/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_5/Cast?
$lstm/while/lstm_cell/dropout_5/Mul_1Mul&lstm/while/lstm_cell/dropout_5/Mul:z:0'lstm/while/lstm_cell/dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_5/Mul_1?
$lstm/while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_6/Const?
"lstm/while/lstm_cell/dropout_6/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_6/Mul?
$lstm/while/lstm_cell/dropout_6/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_6/Shape?
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2=
;lstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_6/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_6/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_6/GreaterEqual?
#lstm/while/lstm_cell/dropout_6/CastCast/lstm/while/lstm_cell/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_6/Cast?
$lstm/while/lstm_cell/dropout_6/Mul_1Mul&lstm/while/lstm_cell/dropout_6/Mul:z:0'lstm/while/lstm_cell/dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_6/Mul_1?
$lstm/while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$lstm/while/lstm_cell/dropout_7/Const?
"lstm/while/lstm_cell/dropout_7/MulMul)lstm/while/lstm_cell/ones_like_1:output:0-lstm/while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/dropout_7/Mul?
$lstm/while/lstm_cell/dropout_7/ShapeShape)lstm/while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
:2&
$lstm/while/lstm_cell/dropout_7/Shape?
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??G2=
;lstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform?
-lstm/while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2/
-lstm/while/lstm_cell/dropout_7/GreaterEqual/y?
+lstm/while/lstm_cell/dropout_7/GreaterEqualGreaterEqualDlstm/while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:06lstm/while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2-
+lstm/while/lstm_cell/dropout_7/GreaterEqual?
#lstm/while/lstm_cell/dropout_7/CastCast/lstm/while/lstm_cell/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2%
#lstm/while/lstm_cell/dropout_7/Cast?
$lstm/while/lstm_cell/dropout_7/Mul_1Mul&lstm/while/lstm_cell/dropout_7/Mul:z:0'lstm/while/lstm_cell/dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/dropout_7/Mul_1?
lstm/while/lstm_cell/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0&lstm/while/lstm_cell/dropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul?
lstm/while/lstm_cell/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_1?
lstm/while/lstm_cell/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_2?
lstm/while/lstm_cell/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm/while/lstm_cell/mul_3?
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm/while/lstm_cell/split/split_dim?
)lstm/while/lstm_cell/split/ReadVariableOpReadVariableOp4lstm_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)lstm/while/lstm_cell/split/ReadVariableOp?
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:01lstm/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm/while/lstm_cell/split?
lstm/while/lstm_cell/MatMulMatMullstm/while/lstm_cell/mul:z:0#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul?
lstm/while/lstm_cell/MatMul_1MatMullstm/while/lstm_cell/mul_1:z:0#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_1?
lstm/while/lstm_cell/MatMul_2MatMullstm/while/lstm_cell/mul_2:z:0#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_2?
lstm/while/lstm_cell/MatMul_3MatMullstm/while/lstm_cell/mul_3:z:0#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_3?
&lstm/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&lstm/while/lstm_cell/split_1/split_dim?
+lstm/while/lstm_cell/split_1/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02-
+lstm/while/lstm_cell/split_1/ReadVariableOp?
lstm/while/lstm_cell/split_1Split/lstm/while/lstm_cell/split_1/split_dim:output:03lstm/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm/while/lstm_cell/split_1?
lstm/while/lstm_cell/BiasAddBiasAdd%lstm/while/lstm_cell/MatMul:product:0%lstm/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/BiasAdd?
lstm/while/lstm_cell/BiasAdd_1BiasAdd'lstm/while/lstm_cell/MatMul_1:product:0%lstm/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_1?
lstm/while/lstm_cell/BiasAdd_2BiasAdd'lstm/while/lstm_cell/MatMul_2:product:0%lstm/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_2?
lstm/while/lstm_cell/BiasAdd_3BiasAdd'lstm/while/lstm_cell/MatMul_3:product:0%lstm/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2 
lstm/while/lstm_cell/BiasAdd_3?
lstm/while/lstm_cell/mul_4Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_4?
lstm/while/lstm_cell/mul_5Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_5?
lstm/while/lstm_cell/mul_6Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_6?
lstm/while/lstm_cell/mul_7Mullstm_while_placeholder_2(lstm/while/lstm_cell/dropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_7?
#lstm/while/lstm_cell/ReadVariableOpReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02%
#lstm/while/lstm_cell/ReadVariableOp?
(lstm/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(lstm/while/lstm_cell/strided_slice/stack?
*lstm/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice/stack_1?
*lstm/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm/while/lstm_cell/strided_slice/stack_2?
"lstm/while/lstm_cell/strided_sliceStridedSlice+lstm/while/lstm_cell/ReadVariableOp:value:01lstm/while/lstm_cell/strided_slice/stack:output:03lstm/while/lstm_cell/strided_slice/stack_1:output:03lstm/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2$
"lstm/while/lstm_cell/strided_slice?
lstm/while/lstm_cell/MatMul_4MatMullstm/while/lstm_cell/mul_4:z:0+lstm/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_4?
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/BiasAdd:output:0'lstm/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add}
lstm/while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const?
lstm/while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_1?
lstm/while/lstm_cell/Mul_8Mullstm/while/lstm_cell/add:z:0#lstm/while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_8?
lstm/while/lstm_cell/Add_1Addlstm/while/lstm_cell/Mul_8:z:0%lstm/while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_1?
,lstm/while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,lstm/while/lstm_cell/clip_by_value/Minimum/y?
*lstm/while/lstm_cell/clip_by_value/MinimumMinimumlstm/while/lstm_cell/Add_1:z:05lstm/while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2,
*lstm/while/lstm_cell/clip_by_value/Minimum?
$lstm/while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$lstm/while/lstm_cell/clip_by_value/y?
"lstm/while/lstm_cell/clip_by_valueMaximum.lstm/while/lstm_cell/clip_by_value/Minimum:z:0-lstm/while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2$
"lstm/while/lstm_cell/clip_by_value?
%lstm/while/lstm_cell/ReadVariableOp_1ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_1?
*lstm/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2,
*lstm/while/lstm_cell/strided_slice_1/stack?
,lstm/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_1/stack_1?
,lstm/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_1/stack_2?
$lstm/while/lstm_cell/strided_slice_1StridedSlice-lstm/while/lstm_cell/ReadVariableOp_1:value:03lstm/while/lstm_cell/strided_slice_1/stack:output:05lstm/while/lstm_cell/strided_slice_1/stack_1:output:05lstm/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_1?
lstm/while/lstm_cell/MatMul_5MatMullstm/while/lstm_cell/mul_5:z:0-lstm/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_5?
lstm/while/lstm_cell/add_2AddV2'lstm/while/lstm_cell/BiasAdd_1:output:0'lstm/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_2?
lstm/while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const_2?
lstm/while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_3?
lstm/while/lstm_cell/Mul_9Mullstm/while/lstm_cell/add_2:z:0%lstm/while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_9?
lstm/while/lstm_cell/Add_3Addlstm/while/lstm_cell/Mul_9:z:0%lstm/while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_3?
.lstm/while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.lstm/while/lstm_cell/clip_by_value_1/Minimum/y?
,lstm/while/lstm_cell/clip_by_value_1/MinimumMinimumlstm/while/lstm_cell/Add_3:z:07lstm/while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2.
,lstm/while/lstm_cell/clip_by_value_1/Minimum?
&lstm/while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&lstm/while/lstm_cell/clip_by_value_1/y?
$lstm/while/lstm_cell/clip_by_value_1Maximum0lstm/while/lstm_cell/clip_by_value_1/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/clip_by_value_1?
lstm/while/lstm_cell/mul_10Mul(lstm/while/lstm_cell/clip_by_value_1:z:0lstm_while_placeholder_3*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_10?
%lstm/while/lstm_cell/ReadVariableOp_2ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_2?
*lstm/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_2/stack?
,lstm/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2.
,lstm/while/lstm_cell/strided_slice_2/stack_1?
,lstm/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_2/stack_2?
$lstm/while/lstm_cell/strided_slice_2StridedSlice-lstm/while/lstm_cell/ReadVariableOp_2:value:03lstm/while/lstm_cell/strided_slice_2/stack:output:05lstm/while/lstm_cell/strided_slice_2/stack_1:output:05lstm/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_2?
lstm/while/lstm_cell/MatMul_6MatMullstm/while/lstm_cell/mul_6:z:0-lstm/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_6?
lstm/while/lstm_cell/add_4AddV2'lstm/while/lstm_cell/BiasAdd_2:output:0'lstm/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_4?
lstm/while/lstm_cell/TanhTanhlstm/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh?
lstm/while/lstm_cell/mul_11Mul&lstm/while/lstm_cell/clip_by_value:z:0lstm/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_11?
lstm/while/lstm_cell/add_5AddV2lstm/while/lstm_cell/mul_10:z:0lstm/while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_5?
%lstm/while/lstm_cell/ReadVariableOp_3ReadVariableOp.lstm_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02'
%lstm/while/lstm_cell/ReadVariableOp_3?
*lstm/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2,
*lstm/while/lstm_cell/strided_slice_3/stack?
,lstm/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm/while/lstm_cell/strided_slice_3/stack_1?
,lstm/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,lstm/while/lstm_cell/strided_slice_3/stack_2?
$lstm/while/lstm_cell/strided_slice_3StridedSlice-lstm/while/lstm_cell/ReadVariableOp_3:value:03lstm/while/lstm_cell/strided_slice_3/stack:output:05lstm/while/lstm_cell/strided_slice_3/stack_1:output:05lstm/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2&
$lstm/while/lstm_cell/strided_slice_3?
lstm/while/lstm_cell/MatMul_7MatMullstm/while/lstm_cell/mul_7:z:0-lstm/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/MatMul_7?
lstm/while/lstm_cell/add_6AddV2'lstm/while/lstm_cell/BiasAdd_3:output:0'lstm/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/add_6?
lstm/while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm/while/lstm_cell/Const_4?
lstm/while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm/while/lstm_cell/Const_5?
lstm/while/lstm_cell/Mul_12Mullstm/while/lstm_cell/add_6:z:0%lstm/while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Mul_12?
lstm/while/lstm_cell/Add_7Addlstm/while/lstm_cell/Mul_12:z:0%lstm/while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Add_7?
.lstm/while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.lstm/while/lstm_cell/clip_by_value_2/Minimum/y?
,lstm/while/lstm_cell/clip_by_value_2/MinimumMinimumlstm/while/lstm_cell/Add_7:z:07lstm/while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2.
,lstm/while/lstm_cell/clip_by_value_2/Minimum?
&lstm/while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&lstm/while/lstm_cell/clip_by_value_2/y?
$lstm/while/lstm_cell/clip_by_value_2Maximum0lstm/while/lstm_cell/clip_by_value_2/Minimum:z:0/lstm/while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2&
$lstm/while/lstm_cell/clip_by_value_2?
lstm/while/lstm_cell/Tanh_1Tanhlstm/while/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/Tanh_1?
lstm/while/lstm_cell/mul_13Mul(lstm/while/lstm_cell/clip_by_value_2:z:0lstm/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm/while/lstm_cell/mul_13?
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype021
/lstm/while/TensorArrayV2Write/TensorListSetItemf
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add/y}
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm/while/addj
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm/while/add_1/y?
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm/while/add_1?
lstm/while/IdentityIdentitylstm/while/add_1:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity?
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_1?
lstm/while/Identity_2Identitylstm/while/add:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_2?
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm/while/Identity_3?
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_13:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_4?
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_5:z:0$^lstm/while/lstm_cell/ReadVariableOp&^lstm/while/lstm_cell/ReadVariableOp_1&^lstm/while/lstm_cell/ReadVariableOp_2&^lstm/while/lstm_cell/ReadVariableOp_3*^lstm/while/lstm_cell/split/ReadVariableOp,^lstm/while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
lstm/while/Identity_5"3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"^
,lstm_while_lstm_cell_readvariableop_resource.lstm_while_lstm_cell_readvariableop_resource_0"n
4lstm_while_lstm_cell_split_1_readvariableop_resource6lstm_while_lstm_cell_split_1_readvariableop_resource_0"j
2lstm_while_lstm_cell_split_readvariableop_resource4lstm_while_lstm_cell_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"?
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2J
#lstm/while/lstm_cell/ReadVariableOp#lstm/while/lstm_cell/ReadVariableOp2N
%lstm/while/lstm_cell/ReadVariableOp_1%lstm/while/lstm_cell/ReadVariableOp_12N
%lstm/while/lstm_cell/ReadVariableOp_2%lstm/while/lstm_cell/ReadVariableOp_22N
%lstm/while/lstm_cell/ReadVariableOp_3%lstm/while/lstm_cell/ReadVariableOp_32V
)lstm/while/lstm_cell/split/ReadVariableOp)lstm/while/lstm_cell/split/ReadVariableOp2Z
+lstm/while/lstm_cell/split_1/ReadVariableOp+lstm/while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?u
?
!__inference__traced_restore_60334
file_prefix:
%assignvariableop_embedding_embeddings:???1
assignvariableop_1_dense_kernel:@+
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: <
(assignvariableop_8_lstm_lstm_cell_kernel:
??E
2assignvariableop_9_lstm_lstm_cell_recurrent_kernel:	@?6
'assignvariableop_10_lstm_lstm_cell_bias:	?#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: D
/assignvariableop_15_adam_embedding_embeddings_m:???9
'assignvariableop_16_adam_dense_kernel_m:@3
%assignvariableop_17_adam_dense_bias_m:D
0assignvariableop_18_adam_lstm_lstm_cell_kernel_m:
??M
:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_m:	@?=
.assignvariableop_20_adam_lstm_lstm_cell_bias_m:	?D
/assignvariableop_21_adam_embedding_embeddings_v:???9
'assignvariableop_22_adam_dense_kernel_v:@3
%assignvariableop_23_adam_dense_bias_v:D
0assignvariableop_24_adam_lstm_lstm_cell_kernel_v:
??M
:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_v:	@?=
.assignvariableop_26_adam_lstm_lstm_cell_bias_v:	?
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp(assignvariableop_8_lstm_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp2assignvariableop_9_lstm_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_lstm_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_lstm_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_lstm_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_lstm_lstm_cell_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_lstm_lstm_cell_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
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
?

?
@__inference_dense_layer_call_and_return_conditional_losses_56936

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_56195

inputs

states
states_11
split_readvariableop_resource:
??.
split_1_readvariableop_resource:	?*
readvariableop_resource:	@?
identity

identity_1

identity_2??ReadVariableOp?ReadVariableOp_1?ReadVariableOp_2?ReadVariableOp_3?split/ReadVariableOp?split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const?
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2ǂ?2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/Const?
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2՜?2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/GreaterEqual?
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/Cast?
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/Const?
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_2/GreaterEqual?
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_2/Cast?
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/Const?
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/Shape?
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*
seed???)*
seed2???2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_3/GreaterEqual/y?
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/GreaterEqual?
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/Cast?
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like_1/Const?
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_4/Const?
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/Shape?
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_4/GreaterEqual/y?
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_4/GreaterEqual?
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_4/Cast?
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_5/Const?
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/Shape?
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2??|2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_5/GreaterEqual/y?
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_5/GreaterEqual?
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_5/Cast?
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_6/Const?
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/Shape?
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2???2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_6/GreaterEqual/y?
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_6/GreaterEqual?
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_6/Cast?
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_7/Const?
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/Shape?
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*
seed???)*
seed2?2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout_7/GreaterEqual/y?
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout_7/GreaterEqual?
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_7/Cast?
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:??????????2
mul_3d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
??*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
splite
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:?????????@2
MatMulk
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:?????????@2

MatMul_1k
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:?????????@2

MatMul_2k
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:?????????@2

MatMul_3h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2	
split_1s
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:?????????@2	
BiasAddy
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:?????????@2
	BiasAdd_1y
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:?????????@2
	BiasAdd_2y
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:?????????@2
	BiasAdd_3d
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_4d
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_5d
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_6d
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2
mul_7y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slices
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_4k
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1`
Mul_8Muladd:z:0Const:output:0*
T0*'
_output_shapes
:?????????@2
Mul_8d
Add_1Add	Mul_8:z:0Const_1:output:0*
T0*'
_output_shapes
:?????????@2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value}
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_1u
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_5q
add_2AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3d
Mul_9Mul	add_2:z:0Const_2:output:0*
T0*'
_output_shapes
:?????????@2
Mul_9d
Add_3Add	Mul_9:z:0Const_3:output:0*
T0*'
_output_shapes
:?????????@2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_1h
mul_10Mulclip_by_value_1:z:0states_1*
T0*'
_output_shapes
:?????????@2
mul_10}
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack?
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_2u
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_6q
add_4AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
add_4Q
TanhTanh	add_4:z:0*
T0*'
_output_shapes
:?????????@2
Tanhf
mul_11Mulclip_by_value:z:0Tanh:y:0*
T0*'
_output_shapes
:?????????@2
mul_11a
add_5AddV2
mul_10:z:0
mul_11:z:0*
T0*'
_output_shapes
:?????????@2
add_5}
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@?*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2
strided_slice_3/stack?
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1?
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2?
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
strided_slice_3u
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2

MatMul_7q
add_6AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5f
Mul_12Mul	add_6:z:0Const_4:output:0*
T0*'
_output_shapes
:?????????@2
Mul_12e
Add_7Add
Mul_12:z:0Const_5:output:0*
T0*'
_output_shapes
:?????????@2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
clip_by_value_2U
Tanh_1Tanh	add_5:z:0*
T0*'
_output_shapes
:?????????@2
Tanh_1j
mul_13Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
mul_13?
IdentityIdentity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity
mul_13:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity	add_5:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates:OK
'
_output_shapes
:?????????@
 
_user_specified_namestates
?
?
while_cond_58480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_58480___redundant_placeholder03
/while_while_cond_58480___redundant_placeholder13
/while_while_cond_58480___redundant_placeholder23
/while_while_cond_58480___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_56943

inputs$
embedding_56622:???

lstm_56918:
??

lstm_56920:	?

lstm_56922:	@?
dense_56937:@
dense_56939:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_56622*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_566212#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_56918
lstm_56920
lstm_56922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_569172
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_56937dense_56939*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_569362
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_57457

inputs$
embedding_57441:???

lstm_57444:
??

lstm_57446:	?

lstm_57448:	@?
dense_57451:@
dense_57453:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_57441*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_566212#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_57444
lstm_57446
lstm_57448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_574022
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_57451dense_57453*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_569362
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?D
?
?__inference_lstm_layer_call_and_return_conditional_losses_56342

inputs#
lstm_cell_56260:
??
lstm_cell_56262:	?"
lstm_cell_56264:	@?
identity??!lstm_cell/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56260lstm_cell_56262lstm_cell_56264*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_561952#
!lstm_cell/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56260lstm_cell_56262lstm_cell_56264*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_56273*
condR
while_cond_56272*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0"^lstm_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
԰
?
?__inference_lstm_layer_call_and_return_conditional_losses_58636
inputs_0;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_58481*
condR
while_cond_58480*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
)__inference_lstm_cell_layer_call_fn_60122

inputs
states_0
states_1
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_559142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??????????:?????????@:?????????@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????@
"
_user_specified_name
states/1
?
?
$__inference_lstm_layer_call_fn_59815

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_574022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?>
?
__inference__traced_save_60243
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :???:@:: : : : : :
??:	@?:?: : : : :???:@::
??:	@?:?:???:@::
??:	@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&	"
 
_output_shapes
:
??:%
!

_output_shapes
:	@?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:???:$ 

_output_shapes

:@: 

_output_shapes
::&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:!

_output_shapes	
:?:'#
!
_output_shapes
:???:$ 

_output_shapes

:@: 

_output_shapes
::&"
 
_output_shapes
:
??:%!

_output_shapes
:	@?:!

_output_shapes	
:?:

_output_shapes
: 
?%
?
while_body_56273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_56297_0:
??&
while_lstm_cell_56299_0:	?*
while_lstm_cell_56301_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_56297:
??$
while_lstm_cell_56299:	?(
while_lstm_cell_56301:	@???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56297_0while_lstm_cell_56299_0while_lstm_cell_56301_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????@:?????????@:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_561952)
'while/lstm_cell/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/lstm_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2(^while/lstm_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_56297while_lstm_cell_56297_0"0
while_lstm_cell_56299while_lstm_cell_56299_0"0
while_lstm_cell_56301while_lstm_cell_56301_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
??
?	
while_body_59195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
??@
1while_lstm_cell_split_1_readvariableop_resource_0:	?<
)while_lstm_cell_readvariableop_resource_0:	@?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
??>
/while_lstm_cell_split_1_readvariableop_resource:	?:
'while_lstm_cell_readvariableop_resource:	@???while/lstm_cell/ReadVariableOp? while/lstm_cell/ReadVariableOp_1? while/lstm_cell/ReadVariableOp_2? while/lstm_cell/ReadVariableOp_3?$while/lstm_cell/split/ReadVariableOp?&while/lstm_cell/split_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2!
while/lstm_cell/ones_like/Shape?
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/lstm_cell/ones_like/Const?
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/ones_like?
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2#
!while/lstm_cell/ones_like_1/Shape?
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!while/lstm_cell/ones_like_1/Const?
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/ones_like_1?
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul?
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_1?
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_2?
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell/mul_3?
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
while/lstm_cell/split/split_dim?
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02&
$while/lstm_cell/split/ReadVariableOp?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
while/lstm_cell/split?
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul?
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_1?
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_2?
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_3?
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!while/lstm_cell/split_1/split_dim?
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:?*
dtype02(
&while/lstm_cell/split_1/ReadVariableOp?
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
while/lstm_cell/split_1?
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd?
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_1?
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_2?
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/BiasAdd_3?
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_4?
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_5?
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_6?
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_7?
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02 
while/lstm_cell/ReadVariableOp?
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2%
#while/lstm_cell/strided_slice/stack?
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice/stack_1?
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%while/lstm_cell/strided_slice/stack_2?
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
while/lstm_cell/strided_slice?
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_4?
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/adds
while/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Constw
while/lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_1?
while/lstm_cell/Mul_8Mulwhile/lstm_cell/add:z:0while/lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_8?
while/lstm_cell/Add_1Addwhile/lstm_cell/Mul_8:z:0 while/lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_1?
'while/lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'while/lstm_cell/clip_by_value/Minimum/y?
%while/lstm_cell/clip_by_value/MinimumMinimumwhile/lstm_cell/Add_1:z:00while/lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2'
%while/lstm_cell/clip_by_value/Minimum?
while/lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
while/lstm_cell/clip_by_value/y?
while/lstm_cell/clip_by_valueMaximum)while/lstm_cell/clip_by_value/Minimum:z:0(while/lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/clip_by_value?
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_1?
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2'
%while/lstm_cell/strided_slice_1/stack?
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_1/stack_1?
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_1/stack_2?
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_1?
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_5?
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_2w
while/lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_2w
while/lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_3?
while/lstm_cell/Mul_9Mulwhile/lstm_cell/add_2:z:0 while/lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_9?
while/lstm_cell/Add_3Addwhile/lstm_cell/Mul_9:z:0 while/lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_3?
)while/lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_1/Minimum/y?
'while/lstm_cell/clip_by_value_1/MinimumMinimumwhile/lstm_cell/Add_3:z:02while/lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_1/Minimum?
!while/lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_1/y?
while/lstm_cell/clip_by_value_1Maximum+while/lstm_cell/clip_by_value_1/Minimum:z:0*while/lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_1?
while/lstm_cell/mul_10Mul#while/lstm_cell/clip_by_value_1:z:0while_placeholder_3*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_10?
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_2?
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_2/stack?
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2)
'while/lstm_cell/strided_slice_2/stack_1?
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_2/stack_2?
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_2?
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_6?
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_4?
while/lstm_cell/TanhTanhwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh?
while/lstm_cell/mul_11Mul!while/lstm_cell/clip_by_value:z:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_11?
while/lstm_cell/add_5AddV2while/lstm_cell/mul_10:z:0while/lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_5?
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@?*
dtype02"
 while/lstm_cell/ReadVariableOp_3?
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2'
%while/lstm_cell/strided_slice_3/stack?
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2)
'while/lstm_cell/strided_slice_3/stack_1?
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell/strided_slice_3/stack_2?
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2!
while/lstm_cell/strided_slice_3?
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/MatMul_7?
while/lstm_cell/add_6AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/add_6w
while/lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/lstm_cell/Const_4w
while/lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/lstm_cell/Const_5?
while/lstm_cell/Mul_12Mulwhile/lstm_cell/add_6:z:0 while/lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Mul_12?
while/lstm_cell/Add_7Addwhile/lstm_cell/Mul_12:z:0 while/lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Add_7?
)while/lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)while/lstm_cell/clip_by_value_2/Minimum/y?
'while/lstm_cell/clip_by_value_2/MinimumMinimumwhile/lstm_cell/Add_7:z:02while/lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2)
'while/lstm_cell/clip_by_value_2/Minimum?
!while/lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!while/lstm_cell/clip_by_value_2/y?
while/lstm_cell/clip_by_value_2Maximum+while/lstm_cell/clip_by_value_2/Minimum:z:0*while/lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2!
while/lstm_cell/clip_by_value_2?
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/Tanh_1?
while/lstm_cell/mul_13Mul#while/lstm_cell/clip_by_value_2:z:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
while/lstm_cell/mul_13?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_13:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell/mul_13:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell/add_5:z:0^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????@:?????????@: : : : : 2@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_57527
embedding_input$
embedding_57511:???

lstm_57514:
??

lstm_57516:	?

lstm_57518:	@?
dense_57521:@
dense_57523:
identity??dense/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?lstm/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_57511*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_566212#
!embedding/StatefulPartitionedCall?
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_57514
lstm_57516
lstm_57518*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_574022
lstm/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_57521dense_57523*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_569362
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?	
?
*__inference_sequential_layer_call_fn_57489
embedding_input
unknown:???
	unknown_0:
??
	unknown_1:	?
	unknown_2:	@?
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_574572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
̰
?
?__inference_lstm_layer_call_and_return_conditional_losses_59350

inputs;
'lstm_cell_split_readvariableop_resource:
??8
)lstm_cell_split_1_readvariableop_resource:	?4
!lstm_cell_readvariableop_resource:	@?
identity??lstm_cell/ReadVariableOp?lstm_cell/ReadVariableOp_1?lstm_cell/ReadVariableOp_2?lstm_cell/ReadVariableOp_3?lstm_cell/split/ReadVariableOp? lstm_cell/split_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????@2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2~
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like/Shape{
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like/Const?
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/ones_likex
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell/ones_like_1/Shape
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
lstm_cell/ones_like_1/Const?
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/ones_like_1?
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul?
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_1?
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_2?
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell/mul_3x
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell/split/split_dim?
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lstm_cell/split/ReadVariableOp?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	?@:	?@:	?@:	?@*
	num_split2
lstm_cell/split?
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul?
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_1?
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_2?
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_3|
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell/split_1/split_dim?
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 lstm_cell/split_1/ReadVariableOp?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split2
lstm_cell/split_1?
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd?
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_1?
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_2?
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:?????????@2
lstm_cell/BiasAdd_3?
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_4?
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_5?
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_6?
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_7?
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp?
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
lstm_cell/strided_slice/stack?
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice/stack_1?
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2!
lstm_cell/strided_slice/stack_2?
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice?
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_4?
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/addg
lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Constk
lstm_cell/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_1?
lstm_cell/Mul_8Mullstm_cell/add:z:0lstm_cell/Const:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_8?
lstm_cell/Add_1Addlstm_cell/Mul_8:z:0lstm_cell/Const_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_1?
!lstm_cell/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!lstm_cell/clip_by_value/Minimum/y?
lstm_cell/clip_by_value/MinimumMinimumlstm_cell/Add_1:z:0*lstm_cell/clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2!
lstm_cell/clip_by_value/Minimum{
lstm_cell/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value/y?
lstm_cell/clip_by_valueMaximum#lstm_cell/clip_by_value/Minimum:z:0"lstm_cell/clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value?
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_1?
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   2!
lstm_cell/strided_slice_1/stack?
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_1/stack_1?
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_1/stack_2?
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_1?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_5?
lstm_cell/add_2AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_2k
lstm_cell/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_2k
lstm_cell/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_3?
lstm_cell/Mul_9Mullstm_cell/add_2:z:0lstm_cell/Const_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_9?
lstm_cell/Add_3Addlstm_cell/Mul_9:z:0lstm_cell/Const_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_3?
#lstm_cell/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_1/Minimum/y?
!lstm_cell/clip_by_value_1/MinimumMinimumlstm_cell/Add_3:z:0,lstm_cell/clip_by_value_1/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_1/Minimum
lstm_cell/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_1/y?
lstm_cell/clip_by_value_1Maximum%lstm_cell/clip_by_value_1/Minimum:z:0$lstm_cell/clip_by_value_1/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_1?
lstm_cell/mul_10Mullstm_cell/clip_by_value_1:z:0zeros_1:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_10?
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_2?
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_2/stack?
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   2#
!lstm_cell/strided_slice_2/stack_1?
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_2/stack_2?
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_2?
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_6?
lstm_cell/add_4AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_4o
lstm_cell/TanhTanhlstm_cell/add_4:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh?
lstm_cell/mul_11Mullstm_cell/clip_by_value:z:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_11?
lstm_cell/add_5AddV2lstm_cell/mul_10:z:0lstm_cell/mul_11:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_5?
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@?*
dtype02
lstm_cell/ReadVariableOp_3?
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?   2!
lstm_cell/strided_slice_3/stack?
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2#
!lstm_cell/strided_slice_3/stack_1?
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell/strided_slice_3/stack_2?
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask2
lstm_cell/strided_slice_3?
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/MatMul_7?
lstm_cell/add_6AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/add_6k
lstm_cell/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
lstm_cell/Const_4k
lstm_cell/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell/Const_5?
lstm_cell/Mul_12Mullstm_cell/add_6:z:0lstm_cell/Const_4:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Mul_12?
lstm_cell/Add_7Addlstm_cell/Mul_12:z:0lstm_cell/Const_5:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Add_7?
#lstm_cell/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#lstm_cell/clip_by_value_2/Minimum/y?
!lstm_cell/clip_by_value_2/MinimumMinimumlstm_cell/Add_7:z:0,lstm_cell/clip_by_value_2/Minimum/y:output:0*
T0*'
_output_shapes
:?????????@2#
!lstm_cell/clip_by_value_2/Minimum
lstm_cell/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_cell/clip_by_value_2/y?
lstm_cell/clip_by_value_2Maximum%lstm_cell/clip_by_value_2/Minimum:z:0$lstm_cell/clip_by_value_2/y:output:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/clip_by_value_2s
lstm_cell/Tanh_1Tanhlstm_cell/add_5:z:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/Tanh_1?
lstm_cell/mul_13Mullstm_cell/clip_by_value_2:z:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:?????????@2
lstm_cell/mul_13?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????@:?????????@: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_59195*
condR
while_cond_59194*K
output_shapes:
8: : : : :?????????@:?????????@: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????@   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 24
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_32@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
$__inference_lstm_layer_call_fn_59804

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_569172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_57182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_57182___redundant_placeholder03
/while_while_cond_57182___redundant_placeholder13
/while_while_cond_57182___redundant_placeholder23
/while_while_cond_57182___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????@:?????????@: ::::: 
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
: :-)
'
_output_shapes
:?????????@:-)
'
_output_shapes
:?????????@:

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
T
embedding_inputA
!serving_default_embedding_input:0??????????????????9
dense0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?,
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
Y_default_save_signature
*Z&call_and_return_all_conditional_losses
[__call__"?)
_tf_keras_sequential?){"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 20000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null]}, "float32", "embedding_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}, "shared_object_id": 0}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 20000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 2}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"?
_tf_keras_layer?{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 20000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*^&call_and_return_all_conditional_losses
___call__"?
_tf_keras_rnn_layer?
{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 128]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
iter

beta_1

beta_2
	decay
learning_rate
mMmNmO mP!mQ"mR
vSvTvU vV!vW"vX"
	optimizer
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
?
trainable_variables
regularization_losses
#non_trainable_variables
	variables
$layer_regularization_losses

%layers
&metrics
'layer_metrics
[__call__
Y_default_save_signature
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
,
bserving_default"
signature_map
):'???2embedding/embeddings
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
?
trainable_variables
regularization_losses
(non_trainable_variables
	variables
)layer_regularization_losses

*layers
+metrics
,layer_metrics
]__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
?	
-
state_size

 kernel
!recurrent_kernel
"bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "shared_object_id": 6}
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
?

2states
trainable_variables
regularization_losses
3non_trainable_variables
	variables
4layer_regularization_losses

5layers
6metrics
7layer_metrics
___call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
:@2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses
8non_trainable_variables
	variables
9layer_regularization_losses

:layers
;metrics
<layer_metrics
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
):'
??2lstm/lstm_cell/kernel
2:0	@?2lstm/lstm_cell/recurrent_kernel
": ?2lstm/lstm_cell/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
?
.trainable_variables
/regularization_losses
?non_trainable_variables
0	variables
@layer_regularization_losses

Alayers
Bmetrics
Clayer_metrics
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
?
	Dtotal
	Ecount
F	variables
G	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
?
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 12}
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
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
H0
I1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
.:,???2Adam/embedding/embeddings/m
#:!@2Adam/dense/kernel/m
:2Adam/dense/bias/m
.:,
??2Adam/lstm/lstm_cell/kernel/m
7:5	@?2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%?2Adam/lstm/lstm_cell/bias/m
.:,???2Adam/embedding/embeddings/v
#:!@2Adam/dense/kernel/v
:2Adam/dense/bias/v
.:,
??2Adam/lstm/lstm_cell/kernel/v
7:5	@?2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%?2Adam/lstm/lstm_cell/bias/v
?2?
 __inference__wrapped_model_55768?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/
embedding_input??????????????????
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_57858
E__inference_sequential_layer_call_and_return_conditional_losses_58292
E__inference_sequential_layer_call_and_return_conditional_losses_57508
E__inference_sequential_layer_call_and_return_conditional_losses_57527?
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
?2?
*__inference_sequential_layer_call_fn_56958
*__inference_sequential_layer_call_fn_58309
*__inference_sequential_layer_call_fn_58326
*__inference_sequential_layer_call_fn_57489?
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
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_58336?
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
?2?
)__inference_embedding_layer_call_fn_58343?
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
?2?
?__inference_lstm_layer_call_and_return_conditional_losses_58636
?__inference_lstm_layer_call_and_return_conditional_losses_59057
?__inference_lstm_layer_call_and_return_conditional_losses_59350
?__inference_lstm_layer_call_and_return_conditional_losses_59771?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_lstm_layer_call_fn_59782
$__inference_lstm_layer_call_fn_59793
$__inference_lstm_layer_call_fn_59804
$__inference_lstm_layer_call_fn_59815?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_59826?
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
?2?
%__inference_dense_layer_call_fn_59835?
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
#__inference_signature_wrapper_57552embedding_input"?
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
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_59938
D__inference_lstm_cell_layer_call_and_return_conditional_losses_60105?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
?2?
)__inference_lstm_cell_layer_call_fn_60122
)__inference_lstm_cell_layer_call_fn_60139?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
 __inference__wrapped_model_55768z
 "!A?>
7?4
2?/
embedding_input??????????????????
? "-?*
(
dense?
dense??????????
@__inference_dense_layer_call_and_return_conditional_losses_59826\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? x
%__inference_dense_layer_call_fn_59835O/?,
%?"
 ?
inputs?????????@
? "???????????
D__inference_embedding_layer_call_and_return_conditional_losses_58336r
8?5
.?+
)?&
inputs??????????????????
? "3?0
)?&
0???????????????????
? ?
)__inference_embedding_layer_call_fn_58343e
8?5
.?+
)?&
inputs??????????????????
? "&?#????????????????????
D__inference_lstm_cell_layer_call_and_return_conditional_losses_59938? "!??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_60105? "!??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "s?p
i?f
?
0/0?????????@
E?B
?
0/1/0?????????@
?
0/1/1?????????@
? ?
)__inference_lstm_cell_layer_call_fn_60122? "!??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p 
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
)__inference_lstm_cell_layer_call_fn_60139? "!??~
w?t
!?
inputs??????????
K?H
"?
states/0?????????@
"?
states/1?????????@
p
? "c?`
?
0?????????@
A?>
?
1/0?????????@
?
1/1?????????@?
?__inference_lstm_layer_call_and_return_conditional_losses_58636~ "!P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_59057~ "!P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_59350w "!I?F
??<
.?+
inputs???????????????????

 
p 

 
? "%?"
?
0?????????@
? ?
?__inference_lstm_layer_call_and_return_conditional_losses_59771w "!I?F
??<
.?+
inputs???????????????????

 
p

 
? "%?"
?
0?????????@
? ?
$__inference_lstm_layer_call_fn_59782q "!P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "??????????@?
$__inference_lstm_layer_call_fn_59793q "!P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "??????????@?
$__inference_lstm_layer_call_fn_59804j "!I?F
??<
.?+
inputs???????????????????

 
p 

 
? "??????????@?
$__inference_lstm_layer_call_fn_59815j "!I?F
??<
.?+
inputs???????????????????

 
p

 
? "??????????@?
E__inference_sequential_layer_call_and_return_conditional_losses_57508z
 "!I?F
??<
2?/
embedding_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_57527z
 "!I?F
??<
2?/
embedding_input??????????????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_57858q
 "!@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_58292q
 "!@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_56958m
 "!I?F
??<
2?/
embedding_input??????????????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_57489m
 "!I?F
??<
2?/
embedding_input??????????????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_58309d
 "!@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_58326d
 "!@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
#__inference_signature_wrapper_57552?
 "!T?Q
? 
J?G
E
embedding_input2?/
embedding_input??????????????????"-?*
(
dense?
dense?????????