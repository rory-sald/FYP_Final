��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
v
dense_5708/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_5708/bias
o
#dense_5708/bias/Read/ReadVariableOpReadVariableOpdense_5708/bias*
_output_shapes
:*
dtype0
~
dense_5708/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_5708/kernel
w
%dense_5708/kernel/Read/ReadVariableOpReadVariableOpdense_5708/kernel*
_output_shapes

:*
dtype0
v
dense_5707/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_5707/bias
o
#dense_5707/bias/Read/ReadVariableOpReadVariableOpdense_5707/bias*
_output_shapes
:*
dtype0
~
dense_5707/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_5707/kernel
w
%dense_5707/kernel/Read/ReadVariableOpReadVariableOpdense_5707/kernel*
_output_shapes

:*
dtype0
v
dense_5706/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_5706/bias
o
#dense_5706/bias/Read/ReadVariableOpReadVariableOpdense_5706/bias*
_output_shapes
:*
dtype0
~
dense_5706/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_5706/kernel
w
%dense_5706/kernel/Read/ReadVariableOpReadVariableOpdense_5706/kernel*
_output_shapes

:*
dtype0
�
 serving_default_dense_5706_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_5706_inputdense_5706/kerneldense_5706/biasdense_5707/kerneldense_5707/biasdense_5708/kerneldense_5708/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_18733889

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
1
2
3
#4
$5*
.
0
1
2
3
#4
$5*
* 
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 
O
2
_variables
3_iterations
4_learning_rate
5_update_step_xla*

6serving_default* 

0
1*

0
1*
* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

<trace_0* 

=trace_0* 
a[
VARIABLE_VALUEdense_5706/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5706/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ctrace_0* 

Dtrace_0* 
a[
VARIABLE_VALUEdense_5707/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5707/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Jtrace_0* 

Ktrace_0* 
a[
VARIABLE_VALUEdense_5708/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_5708/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

L0*
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

30*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
8
M	variables
N	keras_api
	Ototal
	Pcount*

O0
P1*

M	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_5706/kerneldense_5706/biasdense_5707/kerneldense_5707/biasdense_5708/kerneldense_5708/bias	iterationlearning_ratetotalcountConst*
Tin
2*
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
!__inference__traced_save_18734113
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5706/kerneldense_5706/biasdense_5707/kerneldense_5707/biasdense_5708/kerneldense_5708/bias	iterationlearning_ratetotalcount*
Tin
2*
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_18734153Ѫ
�

�
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733731
dense_5706_input%
dense_5706_18733715:!
dense_5706_18733717:%
dense_5707_18733720:!
dense_5707_18733722:%
dense_5708_18733725:!
dense_5708_18733727:
identity��"dense_5706/StatefulPartitionedCall�"dense_5707/StatefulPartitionedCall�"dense_5708/StatefulPartitionedCall�
"dense_5706/StatefulPartitionedCallStatefulPartitionedCalldense_5706_inputdense_5706_18733715dense_5706_18733717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672�
"dense_5707/StatefulPartitionedCallStatefulPartitionedCall+dense_5706/StatefulPartitionedCall:output:0dense_5707_18733720dense_5707_18733722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689�
"dense_5708/StatefulPartitionedCallStatefulPartitionedCall+dense_5707/StatefulPartitionedCall:output:0dense_5708_18733725dense_5708_18733727*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705z
IdentityIdentity+dense_5708/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5706/StatefulPartitionedCall#^dense_5707/StatefulPartitionedCall#^dense_5708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"dense_5706/StatefulPartitionedCall"dense_5706/StatefulPartitionedCall2H
"dense_5707/StatefulPartitionedCall"dense_5707/StatefulPartitionedCall2H
"dense_5708/StatefulPartitionedCall"dense_5708/StatefulPartitionedCall:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�
�
-__inference_dense_5708_layer_call_fn_18734020

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733991

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2__inference_sequential_1702_layer_call_fn_18733906

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�.
�
$__inference__traced_restore_18734153
file_prefix4
"assignvariableop_dense_5706_kernel:0
"assignvariableop_1_dense_5706_bias:6
$assignvariableop_2_dense_5707_kernel:0
"assignvariableop_3_dense_5707_bias:6
$assignvariableop_4_dense_5708_kernel:0
"assignvariableop_5_dense_5708_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: "
assignvariableop_8_total: "
assignvariableop_9_count: 
identity_11��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_dense_5706_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_5706_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_5707_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_5707_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_5708_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_5708_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
H__inference_dense_5708_layer_call_and_return_conditional_losses_18734030

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�$
�
#__inference__wrapped_model_18733657
dense_5706_inputK
9sequential_1702_dense_5706_matmul_readvariableop_resource:H
:sequential_1702_dense_5706_biasadd_readvariableop_resource:K
9sequential_1702_dense_5707_matmul_readvariableop_resource:H
:sequential_1702_dense_5707_biasadd_readvariableop_resource:K
9sequential_1702_dense_5708_matmul_readvariableop_resource:H
:sequential_1702_dense_5708_biasadd_readvariableop_resource:
identity��1sequential_1702/dense_5706/BiasAdd/ReadVariableOp�0sequential_1702/dense_5706/MatMul/ReadVariableOp�1sequential_1702/dense_5707/BiasAdd/ReadVariableOp�0sequential_1702/dense_5707/MatMul/ReadVariableOp�1sequential_1702/dense_5708/BiasAdd/ReadVariableOp�0sequential_1702/dense_5708/MatMul/ReadVariableOp�
0sequential_1702/dense_5706/MatMul/ReadVariableOpReadVariableOp9sequential_1702_dense_5706_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
!sequential_1702/dense_5706/MatMulMatMuldense_5706_input8sequential_1702/dense_5706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_1702/dense_5706/BiasAdd/ReadVariableOpReadVariableOp:sequential_1702_dense_5706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_1702/dense_5706/BiasAddBiasAdd+sequential_1702/dense_5706/MatMul:product:09sequential_1702/dense_5706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1702/dense_5706/ReluRelu+sequential_1702/dense_5706/BiasAdd:output:0*
T0*'
_output_shapes
:����������
0sequential_1702/dense_5707/MatMul/ReadVariableOpReadVariableOp9sequential_1702_dense_5707_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
!sequential_1702/dense_5707/MatMulMatMul-sequential_1702/dense_5706/Relu:activations:08sequential_1702/dense_5707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_1702/dense_5707/BiasAdd/ReadVariableOpReadVariableOp:sequential_1702_dense_5707_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_1702/dense_5707/BiasAddBiasAdd+sequential_1702/dense_5707/MatMul:product:09sequential_1702/dense_5707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1702/dense_5707/ReluRelu+sequential_1702/dense_5707/BiasAdd:output:0*
T0*'
_output_shapes
:����������
0sequential_1702/dense_5708/MatMul/ReadVariableOpReadVariableOp9sequential_1702_dense_5708_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
!sequential_1702/dense_5708/MatMulMatMul-sequential_1702/dense_5707/Relu:activations:08sequential_1702/dense_5708/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1sequential_1702/dense_5708/BiasAdd/ReadVariableOpReadVariableOp:sequential_1702_dense_5708_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"sequential_1702/dense_5708/BiasAddBiasAdd+sequential_1702/dense_5708/MatMul:product:09sequential_1702/dense_5708/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_1702/dense_5708/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_1702/dense_5706/BiasAdd/ReadVariableOp1^sequential_1702/dense_5706/MatMul/ReadVariableOp2^sequential_1702/dense_5707/BiasAdd/ReadVariableOp1^sequential_1702/dense_5707/MatMul/ReadVariableOp2^sequential_1702/dense_5708/BiasAdd/ReadVariableOp1^sequential_1702/dense_5708/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2f
1sequential_1702/dense_5706/BiasAdd/ReadVariableOp1sequential_1702/dense_5706/BiasAdd/ReadVariableOp2d
0sequential_1702/dense_5706/MatMul/ReadVariableOp0sequential_1702/dense_5706/MatMul/ReadVariableOp2f
1sequential_1702/dense_5707/BiasAdd/ReadVariableOp1sequential_1702/dense_5707/BiasAdd/ReadVariableOp2d
0sequential_1702/dense_5707/MatMul/ReadVariableOp0sequential_1702/dense_5707/MatMul/ReadVariableOp2f
1sequential_1702/dense_5708/BiasAdd/ReadVariableOp1sequential_1702/dense_5708/BiasAdd/ReadVariableOp2d
0sequential_1702/dense_5708/MatMul/ReadVariableOp0sequential_1702/dense_5708/MatMul/ReadVariableOp:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�
�
2__inference_sequential_1702_layer_call_fn_18733923

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733789

inputs%
dense_5706_18733773:!
dense_5706_18733775:%
dense_5707_18733778:!
dense_5707_18733780:%
dense_5708_18733783:!
dense_5708_18733785:
identity��"dense_5706/StatefulPartitionedCall�"dense_5707/StatefulPartitionedCall�"dense_5708/StatefulPartitionedCall�
"dense_5706/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5706_18733773dense_5706_18733775*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672�
"dense_5707/StatefulPartitionedCallStatefulPartitionedCall+dense_5706/StatefulPartitionedCall:output:0dense_5707_18733778dense_5707_18733780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689�
"dense_5708/StatefulPartitionedCallStatefulPartitionedCall+dense_5707/StatefulPartitionedCall:output:0dense_5708_18733783dense_5708_18733785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705z
IdentityIdentity+dense_5708/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5706/StatefulPartitionedCall#^dense_5707/StatefulPartitionedCall#^dense_5708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"dense_5706/StatefulPartitionedCall"dense_5706/StatefulPartitionedCall2H
"dense_5707/StatefulPartitionedCall"dense_5707/StatefulPartitionedCall2H
"dense_5708/StatefulPartitionedCall"dense_5708/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
2__inference_sequential_1702_layer_call_fn_18733768
dense_5706_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5706_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733753

inputs%
dense_5706_18733737:!
dense_5706_18733739:%
dense_5707_18733742:!
dense_5707_18733744:%
dense_5708_18733747:!
dense_5708_18733749:
identity��"dense_5706/StatefulPartitionedCall�"dense_5707/StatefulPartitionedCall�"dense_5708/StatefulPartitionedCall�
"dense_5706/StatefulPartitionedCallStatefulPartitionedCallinputsdense_5706_18733737dense_5706_18733739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672�
"dense_5707/StatefulPartitionedCallStatefulPartitionedCall+dense_5706/StatefulPartitionedCall:output:0dense_5707_18733742dense_5707_18733744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689�
"dense_5708/StatefulPartitionedCallStatefulPartitionedCall+dense_5707/StatefulPartitionedCall:output:0dense_5708_18733747dense_5708_18733749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705z
IdentityIdentity+dense_5708/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5706/StatefulPartitionedCall#^dense_5707/StatefulPartitionedCall#^dense_5708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"dense_5706/StatefulPartitionedCall"dense_5706/StatefulPartitionedCall2H
"dense_5707/StatefulPartitionedCall"dense_5707/StatefulPartitionedCall2H
"dense_5708/StatefulPartitionedCall"dense_5708/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
2__inference_sequential_1702_layer_call_fn_18733804
dense_5706_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5706_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�

�
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733971

inputs;
)dense_5706_matmul_readvariableop_resource:8
*dense_5706_biasadd_readvariableop_resource:;
)dense_5707_matmul_readvariableop_resource:8
*dense_5707_biasadd_readvariableop_resource:;
)dense_5708_matmul_readvariableop_resource:8
*dense_5708_biasadd_readvariableop_resource:
identity��!dense_5706/BiasAdd/ReadVariableOp� dense_5706/MatMul/ReadVariableOp�!dense_5707/BiasAdd/ReadVariableOp� dense_5707/MatMul/ReadVariableOp�!dense_5708/BiasAdd/ReadVariableOp� dense_5708/MatMul/ReadVariableOp�
 dense_5706/MatMul/ReadVariableOpReadVariableOp)dense_5706_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_5706/MatMulMatMulinputs(dense_5706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5706/BiasAdd/ReadVariableOpReadVariableOp*dense_5706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5706/BiasAddBiasAdddense_5706/MatMul:product:0)dense_5706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5706/ReluReludense_5706/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 dense_5707/MatMul/ReadVariableOpReadVariableOp)dense_5707_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5707/MatMulMatMuldense_5706/Relu:activations:0(dense_5707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5707/BiasAdd/ReadVariableOpReadVariableOp*dense_5707_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5707/BiasAddBiasAdddense_5707/MatMul:product:0)dense_5707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5707/ReluReludense_5707/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 dense_5708/MatMul/ReadVariableOpReadVariableOp)dense_5708_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5708/MatMulMatMuldense_5707/Relu:activations:0(dense_5708/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5708/BiasAdd/ReadVariableOpReadVariableOp*dense_5708_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5708/BiasAddBiasAdddense_5708/MatMul:product:0)dense_5708/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5708/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5706/BiasAdd/ReadVariableOp!^dense_5706/MatMul/ReadVariableOp"^dense_5707/BiasAdd/ReadVariableOp!^dense_5707/MatMul/ReadVariableOp"^dense_5708/BiasAdd/ReadVariableOp!^dense_5708/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2F
!dense_5706/BiasAdd/ReadVariableOp!dense_5706/BiasAdd/ReadVariableOp2D
 dense_5706/MatMul/ReadVariableOp dense_5706/MatMul/ReadVariableOp2F
!dense_5707/BiasAdd/ReadVariableOp!dense_5707/BiasAdd/ReadVariableOp2D
 dense_5707/MatMul/ReadVariableOp dense_5707/MatMul/ReadVariableOp2F
!dense_5708/BiasAdd/ReadVariableOp!dense_5708/BiasAdd/ReadVariableOp2D
 dense_5708/MatMul/ReadVariableOp dense_5708/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_dense_5707_layer_call_fn_18734000

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_18733889
dense_5706_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_5706_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_18733657o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�R
�
!__inference__traced_save_18734113
file_prefix:
(read_disablecopyonread_dense_5706_kernel:6
(read_1_disablecopyonread_dense_5706_bias:<
*read_2_disablecopyonread_dense_5707_kernel:6
(read_3_disablecopyonread_dense_5707_bias:<
*read_4_disablecopyonread_dense_5708_kernel:6
(read_5_disablecopyonread_dense_5708_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: (
read_8_disablecopyonread_total: (
read_9_disablecopyonread_count: 
savev2_const
identity_21��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: z
Read/DisableCopyOnReadDisableCopyOnRead(read_disablecopyonread_dense_5706_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp(read_disablecopyonread_dense_5706_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_dense_5706_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_dense_5706_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_2/DisableCopyOnReadDisableCopyOnRead*read_2_disablecopyonread_dense_5707_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp*read_2_disablecopyonread_dense_5707_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_dense_5707_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_dense_5707_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_4/DisableCopyOnReadDisableCopyOnRead*read_4_disablecopyonread_dense_5708_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp*read_4_disablecopyonread_dense_5708_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_5/DisableCopyOnReadDisableCopyOnRead(read_5_disablecopyonread_dense_5708_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp(read_5_disablecopyonread_dense_5708_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_8/DisableCopyOnReadDisableCopyOnReadread_8_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpread_8_disablecopyonread_total^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_9/DisableCopyOnReadDisableCopyOnReadread_9_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpread_9_disablecopyonread_count^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733947

inputs;
)dense_5706_matmul_readvariableop_resource:8
*dense_5706_biasadd_readvariableop_resource:;
)dense_5707_matmul_readvariableop_resource:8
*dense_5707_biasadd_readvariableop_resource:;
)dense_5708_matmul_readvariableop_resource:8
*dense_5708_biasadd_readvariableop_resource:
identity��!dense_5706/BiasAdd/ReadVariableOp� dense_5706/MatMul/ReadVariableOp�!dense_5707/BiasAdd/ReadVariableOp� dense_5707/MatMul/ReadVariableOp�!dense_5708/BiasAdd/ReadVariableOp� dense_5708/MatMul/ReadVariableOp�
 dense_5706/MatMul/ReadVariableOpReadVariableOp)dense_5706_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_5706/MatMulMatMulinputs(dense_5706/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5706/BiasAdd/ReadVariableOpReadVariableOp*dense_5706_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5706/BiasAddBiasAdddense_5706/MatMul:product:0)dense_5706/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5706/ReluReludense_5706/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 dense_5707/MatMul/ReadVariableOpReadVariableOp)dense_5707_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5707/MatMulMatMuldense_5706/Relu:activations:0(dense_5707/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5707/BiasAdd/ReadVariableOpReadVariableOp*dense_5707_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5707/BiasAddBiasAdddense_5707/MatMul:product:0)dense_5707/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_5707/ReluReludense_5707/BiasAdd:output:0*
T0*'
_output_shapes
:����������
 dense_5708/MatMul/ReadVariableOpReadVariableOp)dense_5708_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_5708/MatMulMatMuldense_5707/Relu:activations:0(dense_5708/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!dense_5708/BiasAdd/ReadVariableOpReadVariableOp*dense_5708_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_5708/BiasAddBiasAdddense_5708/MatMul:product:0)dense_5708/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
IdentityIdentitydense_5708/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_5706/BiasAdd/ReadVariableOp!^dense_5706/MatMul/ReadVariableOp"^dense_5707/BiasAdd/ReadVariableOp!^dense_5707/MatMul/ReadVariableOp"^dense_5708/BiasAdd/ReadVariableOp!^dense_5708/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2F
!dense_5706/BiasAdd/ReadVariableOp!dense_5706/BiasAdd/ReadVariableOp2D
 dense_5706/MatMul/ReadVariableOp dense_5706/MatMul/ReadVariableOp2F
!dense_5707/BiasAdd/ReadVariableOp!dense_5707/BiasAdd/ReadVariableOp2D
 dense_5707/MatMul/ReadVariableOp dense_5707/MatMul/ReadVariableOp2F
!dense_5708/BiasAdd/ReadVariableOp!dense_5708/BiasAdd/ReadVariableOp2D
 dense_5708/MatMul/ReadVariableOp dense_5708/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_dense_5707_layer_call_and_return_conditional_losses_18734011

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733712
dense_5706_input%
dense_5706_18733673:!
dense_5706_18733675:%
dense_5707_18733690:!
dense_5707_18733692:%
dense_5708_18733706:!
dense_5708_18733708:
identity��"dense_5706/StatefulPartitionedCall�"dense_5707/StatefulPartitionedCall�"dense_5708/StatefulPartitionedCall�
"dense_5706/StatefulPartitionedCallStatefulPartitionedCalldense_5706_inputdense_5706_18733673dense_5706_18733675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672�
"dense_5707/StatefulPartitionedCallStatefulPartitionedCall+dense_5706/StatefulPartitionedCall:output:0dense_5707_18733690dense_5707_18733692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5707_layer_call_and_return_conditional_losses_18733689�
"dense_5708/StatefulPartitionedCallStatefulPartitionedCall+dense_5707/StatefulPartitionedCall:output:0dense_5708_18733706dense_5708_18733708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705z
IdentityIdentity+dense_5708/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^dense_5706/StatefulPartitionedCall#^dense_5707/StatefulPartitionedCall#^dense_5708/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2H
"dense_5706/StatefulPartitionedCall"dense_5706/StatefulPartitionedCall2H
"dense_5707/StatefulPartitionedCall"dense_5707/StatefulPartitionedCall2H
"dense_5708/StatefulPartitionedCall"dense_5708/StatefulPartitionedCall:Y U
'
_output_shapes
:���������
*
_user_specified_namedense_5706_input
�
�
-__inference_dense_5706_layer_call_fn_18733980

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733672o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
H__inference_dense_5708_layer_call_and_return_conditional_losses_18733705

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
dense_5706_input9
"serving_default_dense_5706_input:0���������>

dense_57080
StatefulPartitionedCall:0���������tensorflow/serving/predict:�j
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
1
2
3
#4
$5"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
*trace_0
+trace_1
,trace_2
-trace_32�
2__inference_sequential_1702_layer_call_fn_18733768
2__inference_sequential_1702_layer_call_fn_18733804
2__inference_sequential_1702_layer_call_fn_18733906
2__inference_sequential_1702_layer_call_fn_18733923�
���
FullArgSpec)
args!�
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
annotations� *
 z*trace_0z+trace_1z,trace_2z-trace_3
�
.trace_0
/trace_1
0trace_2
1trace_32�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733712
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733731
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733947
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733971�
���
FullArgSpec)
args!�
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
annotations� *
 z.trace_0z/trace_1z0trace_2z1trace_3
�B�
#__inference__wrapped_model_18733657dense_5706_input"�
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
j
2
_variables
3_iterations
4_learning_rate
5_update_step_xla"
experimentalOptimizer
,
6serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
<trace_02�
-__inference_dense_5706_layer_call_fn_18733980�
���
FullArgSpec
args�

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
annotations� *
 z<trace_0
�
=trace_02�
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733991�
���
FullArgSpec
args�

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
annotations� *
 z=trace_0
#:!2dense_5706/kernel
:2dense_5706/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ctrace_02�
-__inference_dense_5707_layer_call_fn_18734000�
���
FullArgSpec
args�

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
annotations� *
 zCtrace_0
�
Dtrace_02�
H__inference_dense_5707_layer_call_and_return_conditional_losses_18734011�
���
FullArgSpec
args�

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
annotations� *
 zDtrace_0
#:!2dense_5707/kernel
:2dense_5707/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Jtrace_02�
-__inference_dense_5708_layer_call_fn_18734020�
���
FullArgSpec
args�

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
annotations� *
 zJtrace_0
�
Ktrace_02�
H__inference_dense_5708_layer_call_and_return_conditional_losses_18734030�
���
FullArgSpec
args�

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
annotations� *
 zKtrace_0
#:!2dense_5708/kernel
:2dense_5708/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
L0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_sequential_1702_layer_call_fn_18733768dense_5706_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
2__inference_sequential_1702_layer_call_fn_18733804dense_5706_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
2__inference_sequential_1702_layer_call_fn_18733906inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
2__inference_sequential_1702_layer_call_fn_18733923inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733712dense_5706_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733731dense_5706_input"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733947inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
�B�
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733971inputs"�
���
FullArgSpec)
args!�
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
annotations� *
 
'
30"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
&__inference_signature_wrapper_18733889dense_5706_input"�
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
-__inference_dense_5706_layer_call_fn_18733980inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733991inputs"�
���
FullArgSpec
args�

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
-__inference_dense_5707_layer_call_fn_18734000inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_dense_5707_layer_call_and_return_conditional_losses_18734011inputs"�
���
FullArgSpec
args�

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
-__inference_dense_5708_layer_call_fn_18734020inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
H__inference_dense_5708_layer_call_and_return_conditional_losses_18734030inputs"�
���
FullArgSpec
args�

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
annotations� *
 
N
M	variables
N	keras_api
	Ototal
	Pcount"
_tf_keras_metric
.
O0
P1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count�
#__inference__wrapped_model_18733657|#$9�6
/�,
*�'
dense_5706_input���������
� "7�4
2

dense_5708$�!

dense_5708����������
H__inference_dense_5706_layer_call_and_return_conditional_losses_18733991c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_dense_5706_layer_call_fn_18733980X/�,
%�"
 �
inputs���������
� "!�
unknown����������
H__inference_dense_5707_layer_call_and_return_conditional_losses_18734011c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_dense_5707_layer_call_fn_18734000X/�,
%�"
 �
inputs���������
� "!�
unknown����������
H__inference_dense_5708_layer_call_and_return_conditional_losses_18734030c#$/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
-__inference_dense_5708_layer_call_fn_18734020X#$/�,
%�"
 �
inputs���������
� "!�
unknown����������
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733712y#$A�>
7�4
*�'
dense_5706_input���������
p

 
� ",�)
"�
tensor_0���������
� �
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733731y#$A�>
7�4
*�'
dense_5706_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733947o#$7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
M__inference_sequential_1702_layer_call_and_return_conditional_losses_18733971o#$7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
2__inference_sequential_1702_layer_call_fn_18733768n#$A�>
7�4
*�'
dense_5706_input���������
p

 
� "!�
unknown����������
2__inference_sequential_1702_layer_call_fn_18733804n#$A�>
7�4
*�'
dense_5706_input���������
p 

 
� "!�
unknown����������
2__inference_sequential_1702_layer_call_fn_18733906d#$7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
2__inference_sequential_1702_layer_call_fn_18733923d#$7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
&__inference_signature_wrapper_18733889�#$M�J
� 
C�@
>
dense_5706_input*�'
dense_5706_input���������"7�4
2

dense_5708$�!

dense_5708���������