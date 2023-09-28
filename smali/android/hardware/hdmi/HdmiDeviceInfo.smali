# classes2.dex

.class public Landroid/hardware/hdmi/HdmiDeviceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final ADDR_INTERNAL:I = 0x0

.field public static final ADDR_INVALID:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_AUDIO_SYSTEM:I = 0x5

.field public static final DEVICE_INACTIVE:I = -0x1

.field public static final DEVICE_PLAYBACK:I = 0x4

.field public static final DEVICE_PURE_CEC_SWITCH:I = 0x6

.field public static final DEVICE_RECORDER:I = 0x1

.field public static final DEVICE_RESERVED:I = 0x2

.field public static final DEVICE_TUNER:I = 0x3

.field public static final DEVICE_TV:I = 0x0

.field public static final DEVICE_VIDEO_PROCESSOR:I = 0x7

.field private static final HDMI_DEVICE_TYPE_CEC:I = 0x0

.field private static final HDMI_DEVICE_TYPE_HARDWARE:I = 0x2

.field private static final HDMI_DEVICE_TYPE_INACTIVE:I = 0x64

.field private static final HDMI_DEVICE_TYPE_MHL:I = 0x1

.field public static final ID_INVALID:I = 0xffff

.field private static final ID_OFFSET_CEC:I = 0x0

.field private static final ID_OFFSET_HARDWARE:I = 0xc0

.field private static final ID_OFFSET_MHL:I = 0x80

.field public static final INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public static final PATH_INTERNAL:I = 0x0

.field public static final PATH_INVALID:I = 0xffff

.field public static final PORT_INVALID:I = -0x1

.field public static final VENDOR_ID_UNKNOWN:I = 0xffffff


# instance fields
.field private final mAdopterId:I

.field private final mCecVersion:I

.field private final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

.field private final mDeviceId:I

.field private final mDevicePowerStatus:I

.field private final mDeviceType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private final mId:I

.field private final mLogicalAddress:I

.field private final mPhysicalAddress:I

.field private final mPortId:I

.field private final mVendorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/DeviceFeatures;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$1;

    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    const-string v1, "Inactive"

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    sget-object v1, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return-void
.end method

.method private constructor <init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v1

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v2

    iput v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->-$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I

    move-result v3

    iput v3, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    packed-switch v0, :pswitch_data_6a

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_69

    :pswitch_54  #0x2
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForHardware(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_69

    :pswitch_5b  #0x1
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForMhlDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    goto :goto_69

    :pswitch_62  #0x0
    invoke-static {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    nop

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_62  #00000000
        :pswitch_5b  #00000001
        :pswitch_54  #00000002
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;Landroid/hardware/hdmi/HdmiDeviceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)V

    return-void
.end method

.method public static cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    return-object v0
.end method

.method public static hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 5

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static idForCecDevice(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x0

    return v0
.end method

.method public static idForHardware(I)I
    .registers 2

    add-int/lit16 v0, p0, 0xc0

    return v0
.end method

.method public static idForMhlDevice(I)I
    .registers 2

    add-int/lit16 v0, p0, 0x80

    return v0
.end method

.method public static mhlDevice(IIII)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 7

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    const-string v1, "Mobile"

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setAdopterId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    iget v3, v0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    if-ne v2, v3, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    nop

    :goto_52
    return v1
.end method

.method public getAdopterId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    return v0
.end method

.method public getCecVersion()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    return v0
.end method

.method public getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object v0
.end method

.method public getDeviceId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public getDevicePowerStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mId:I

    return v0
.end method

.method public getLogicalAddress()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    return v0
.end method

.method public getPhysicalAddress()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    return v0
.end method

.method public getPortId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    return v0
.end method

.method public getVendorId()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCecDevice()Z
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isInactivated()Z
    .registers 3

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isMhlDevice()Z
    .registers 3

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isSourceType()Z
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_12

    const/4 v3, 0x3

    if-ne v0, v3, :cond_13

    :cond_12
    move v1, v2

    :cond_13
    return v1

    :cond_14
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isMhlDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v2

    :cond_1b
    return v1
.end method

.method public toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    const-string v2, "0x%04X"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, " "

    sparse-switch v1, :sswitch_data_108

    const-string v1, ""

    return-object v1

    :sswitch_13
    const-string v1, "Inactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ca

    :sswitch_1a
    const-string v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ca

    :sswitch_21
    const-string v1, "MHL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adopter_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    :sswitch_5d
    const-string v1, "CEC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "0x%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cec_version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vendor_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "display_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "power_status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_ca
    const-string v1, "physical_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "port_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    if-nez v1, :cond_102

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v2}, Landroid/hardware/hdmi/DeviceFeatures;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_108
    .sparse-switch
        0x0 -> :sswitch_5d
        0x1 -> :sswitch_21
        0x2 -> :sswitch_1a
        0x64 -> :sswitch_13
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPhysicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mHdmiDeviceType:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    :pswitch_15  #0x1
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mAdopterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    :pswitch_20  #0x0
    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mLogicalAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDevicePowerStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo;->mCecVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_15  #00000001
    .end packed-switch
.end method
