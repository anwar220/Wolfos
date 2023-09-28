# classes2.dex

.class public final Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdopterId:I

.field private mCecVersion:I

.field private mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

.field private mDeviceId:I

.field private mDevicePowerStatus:I

.field private mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private final mHdmiDeviceType:I

.field private mLogicalAddress:I

.field private mPhysicalAddress:I

.field private mPortId:I

.field private mVendorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Landroid/hardware/hdmi/DeviceFeatures;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    return p0
.end method

.method private constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    const v1, 0xffffff

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    if-nez p1, :cond_2b

    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    goto :goto_2f

    :cond_2b
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    :goto_2f
    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    const v1, 0xffffff

    iput v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmHdmiDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mHdmiDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmPhysicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmPortId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmLogicalAddress(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceType(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmCecVersion(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmVendorId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDisplayName(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDevicePowerStatus(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmAdopterId(Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->-$$Nest$fgetmDeviceFeatures(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/HdmiDeviceInfo$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;Landroid/hardware/hdmi/HdmiDeviceInfo-IA;)V

    return-object v0
.end method

.method public setAdopterId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mAdopterId:I

    return-object p0
.end method

.method public setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mCecVersion:I

    return-object p0
.end method

.method public setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method

.method public setDeviceId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceId:I

    return-object p0
.end method

.method public setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDevicePowerStatus:I

    return-object p0
.end method

.method public setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceType:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mLogicalAddress:I

    return-object p0
.end method

.method public setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPhysicalAddress:I

    return-object p0
.end method

.method public setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mPortId:I

    return-object p0
.end method

.method public setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mVendorId:I

    return-object p0
.end method

.method public updateDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->update(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method
