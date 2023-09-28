# classes2.dex

.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$Builder;,
        Landroid/hardware/usb/UsbPortStatus$PowerBrickConnectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbPortMode;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantProtectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantDetectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataRole;,
        Landroid/hardware/usb/UsbPortStatus$UsbPowerRole;
    }
.end annotation


# static fields
.field public static final CONTAMINANT_DETECTION_DETECTED:I = 0x3

.field public static final CONTAMINANT_DETECTION_DISABLED:I = 0x1

.field public static final CONTAMINANT_DETECTION_NOT_DETECTED:I = 0x2

.field public static final CONTAMINANT_DETECTION_NOT_SUPPORTED:I = 0x0

.field public static final CONTAMINANT_PROTECTION_DISABLED:I = 0x8

.field public static final CONTAMINANT_PROTECTION_FORCE_DISABLE:I = 0x4

.field public static final CONTAMINANT_PROTECTION_NONE:I = 0x0

.field public static final CONTAMINANT_PROTECTION_SINK:I = 0x1

.field public static final CONTAMINANT_PROTECTION_SOURCE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_ROLE_DEVICE:I = 0x2

.field public static final DATA_ROLE_HOST:I = 0x1

.field public static final DATA_ROLE_NONE:I = 0x0

.field public static final DATA_STATUS_DISABLED_CONTAMINANT:I = 0x4

.field public static final DATA_STATUS_DISABLED_DEBUG:I = 0x20

.field public static final DATA_STATUS_DISABLED_DOCK:I = 0x8

.field public static final DATA_STATUS_DISABLED_FORCE:I = 0x10

.field public static final DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final DATA_STATUS_ENABLED:I = 0x1

.field public static final DATA_STATUS_UNKNOWN:I = 0x0

.field public static final MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final MODE_DFP:I = 0x2

.field public static final MODE_DUAL:I = 0x3

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UFP:I = 0x1

.field public static final POWER_BRICK_STATUS_CONNECTED:I = 0x1

.field public static final POWER_BRICK_STATUS_DISCONNECTED:I = 0x2

.field public static final POWER_BRICK_STATUS_UNKNOWN:I = 0x0

.field public static final POWER_ROLE_NONE:I = 0x0

.field public static final POWER_ROLE_SINK:I = 0x2

.field public static final POWER_ROLE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbPortStatus"


# instance fields
.field private final mContaminantDetectionStatus:I

.field private final mContaminantProtectionStatus:I

.field private final mCurrentDataRole:I

.field private final mCurrentMode:I

.field private final mCurrentPowerRole:I

.field private final mPowerBrickConnectionStatus:I

.field private final mPowerTransferLimited:Z

.field private final mSupportedRoleCombinations:I

.field private final mUsbDataStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    iput-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    return-void
.end method

.method public constructor <init>(IIIIIIIZI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    iput p7, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    iput-boolean p8, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    iput p9, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContaminantDetectionStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    return v0
.end method

.method public getContaminantProtectionStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    return v0
.end method

.method public getCurrentDataRole()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    return v0
.end method

.method public getCurrentMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    return v0
.end method

.method public getCurrentPowerRole()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    return v0
.end method

.method public getPowerBrickConnectionStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    return v0
.end method

.method public getSupportedRoleCombinations()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return v0
.end method

.method public getUsbDataStatus()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    return v0
.end method

.method public isConnected()Z
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPowerTransferLimited()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    return v0
.end method

.method public isRoleCombinationSupported(II)Z
    .registers 5

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPortStatus{connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedRoleCombinations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contaminantDetectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contaminantProtectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usbDataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPowerTransferLimited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerBrickConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
