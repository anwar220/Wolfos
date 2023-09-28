# classes.dex

.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes"

.field public static final STRING_TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes"

.field public static final STRING_TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEADING:Ljava/lang/String; = "android.sensor.heading"

.field public static final STRING_TYPE_HEAD_TRACKER:Ljava/lang/String; = "android.sensor.head_tracker"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_HINGE_ANGLE:Ljava/lang/String; = "android.sensor.hinge_angle"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_LIMITED_AXES:I = 0x26

.field public static final TYPE_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:I = 0x28

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_LIMITED_AXES:I = 0x27

.field public static final TYPE_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:I = 0x29

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEADING:I = 0x2a

.field public static final TYPE_HEAD_TRACKER:I = 0x25

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_HINGE_ANGLE:I = 0x24

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mUuid:Ljava/util/UUID;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
        0x1
        0x6
        0x6
        0x6
        0x9
        0x9
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputSensorInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getVersion()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getHandle()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxRange()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getResolution()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getPower()F

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMinDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoReservedEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFifoMaxEventCount()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getStringType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getRequiredPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getMaxDelay()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mFlags:I

    invoke-virtual {p1}, Landroid/hardware/input/InputSensorInfo;->getId()I

    move-result v0

    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    new-instance v0, Ljava/util/UUID;

    iget v1, p0, Landroid/hardware/Sensor;->mId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-void
.end method

.method public static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .registers 5

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    const/16 v0, 0x11

    if-gt p1, v0, :cond_c

    const/4 v0, 0x3

    return v0

    :cond_c
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v1

    if-lt v0, v2, :cond_16

    const/16 v1, 0x10

    return v1

    :cond_16
    aget v1, v1, v0

    return v1
.end method

.method private setId(I)V
    .registers 2

    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    return-void
.end method

.method private setType(I)Z
    .registers 4

    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_bc

    :pswitch_6  #0x1a, 0x1c, 0x1d, 0x1e, 0x1f, 0x21
    const/4 v0, 0x0

    return v0

    :pswitch_8  #0x2a
    const-string v1, "android.sensor.heading"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_d  #0x29
    const-string v1, "android.sensor.gyroscope_limited_axes_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_12  #0x28
    const-string v1, "android.sensor.accelerometer_limited_axes_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_17  #0x27
    const-string v1, "android.sensor.gyroscope_limited_axes"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_1c  #0x26
    const-string v1, "android.sensor.accelerometer_limited_axes"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_21  #0x25
    const-string v1, "android.sensor.head_tracker"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_26  #0x24
    const-string v1, "android.sensor.hinge_angle"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_2b  #0x23
    const-string v1, "android.sensor.accelerometer_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_30  #0x22
    const-string v1, "android.sensor.low_latency_offbody_detect"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_35  #0x20
    const-string v1, "android.sensor.dynamic_sensor_meta"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_3a  #0x1b
    const-string v1, "android.sensor.device_orientation"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_3f  #0x19
    const-string v1, "android.sensor.pick_up_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_44  #0x18
    const-string v1, "android.sensor.glance_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_49  #0x17
    const-string v1, "android.sensor.wake_gesture"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_4e  #0x16
    const-string v1, "android.sensor.tilt_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_53  #0x15
    const-string v1, "android.sensor.heart_rate"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_58  #0x14
    const-string v1, "android.sensor.geomagnetic_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_5d  #0x13
    const-string v1, "android.sensor.step_counter"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_62  #0x12
    const-string v1, "android.sensor.step_detector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_67  #0x11
    const-string v1, "android.sensor.significant_motion"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_6c  #0x10
    const-string v1, "android.sensor.gyroscope_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_71  #0xf
    const-string v1, "android.sensor.game_rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_76  #0xe
    const-string v1, "android.sensor.magnetic_field_uncalibrated"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_7b  #0xd
    const-string v1, "android.sensor.ambient_temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_80  #0xc
    const-string v1, "android.sensor.relative_humidity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_85  #0xb
    const-string v1, "android.sensor.rotation_vector"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_8a  #0xa
    const-string v1, "android.sensor.linear_acceleration"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_8f  #0x9
    const-string v1, "android.sensor.gravity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_94  #0x8
    const-string v1, "android.sensor.proximity"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_99  #0x7
    const-string v1, "android.sensor.temperature"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_9e  #0x6
    const-string v1, "android.sensor.pressure"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_a3  #0x5
    const-string v1, "android.sensor.light"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_a8  #0x4
    const-string v1, "android.sensor.gyroscope"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_ad  #0x3
    const-string v1, "android.sensor.orientation"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_b2  #0x2
    const-string v1, "android.sensor.magnetic_field"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_b7  #0x1
    const-string v1, "android.sensor.accelerometer"

    iput-object v1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_b2  #00000002
        :pswitch_ad  #00000003
        :pswitch_a8  #00000004
        :pswitch_a3  #00000005
        :pswitch_9e  #00000006
        :pswitch_99  #00000007
        :pswitch_94  #00000008
        :pswitch_8f  #00000009
        :pswitch_8a  #0000000a
        :pswitch_85  #0000000b
        :pswitch_80  #0000000c
        :pswitch_7b  #0000000d
        :pswitch_76  #0000000e
        :pswitch_71  #0000000f
        :pswitch_6c  #00000010
        :pswitch_67  #00000011
        :pswitch_62  #00000012
        :pswitch_5d  #00000013
        :pswitch_58  #00000014
        :pswitch_53  #00000015
        :pswitch_4e  #00000016
        :pswitch_49  #00000017
        :pswitch_44  #00000018
        :pswitch_3f  #00000019
        :pswitch_6  #0000001a
        :pswitch_3a  #0000001b
        :pswitch_6  #0000001c
        :pswitch_6  #0000001d
        :pswitch_6  #0000001e
        :pswitch_6  #0000001f
        :pswitch_35  #00000020
        :pswitch_6  #00000021
        :pswitch_30  #00000022
        :pswitch_2b  #00000023
        :pswitch_26  #00000024
        :pswitch_21  #00000025
        :pswitch_1c  #00000026
        :pswitch_17  #00000027
        :pswitch_12  #00000028
        :pswitch_d  #00000029
        :pswitch_8  #0000002a
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .registers 6

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .registers 3

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-gt v0, v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    nop

    :goto_c
    return v1
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/hardware/Sensor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDataInjectionSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_18

    return v1

    :pswitch_6  #0x2
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :pswitch_f  #0x1
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public isDynamicSensor()Z
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isWakeUpSensor()Z
    .registers 3

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method setRange(FF)V
    .registers 3

    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
