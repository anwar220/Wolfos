# classes2.dex

.class public final Landroid/hardware/usb/UsbPortStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContaminantDetectionStatus:I

.field private mContaminantProtectionStatus:I

.field private mCurrentDataRole:I

.field private mCurrentMode:I

.field private mCurrentPowerRole:I

.field private mPowerBrickConnectionStatus:I

.field private mPowerTransferLimited:Z

.field private mSupportedRoleCombinations:I

.field private mUsbDataStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/usb/UsbPortStatus;
    .registers 12

    new-instance v10, Landroid/hardware/usb/UsbPortStatus;

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iget v3, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iget v4, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    iget v5, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iget v6, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iget v7, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iget-boolean v8, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    iget v9, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI)V

    return-object v0
.end method

.method public setContaminantStatus(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    return-object p0
.end method

.method public setCurrentMode(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    return-object p0
.end method

.method public setCurrentRoles(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    return-object p0
.end method

.method public setPowerBrickConnectionStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    return-object p0
.end method

.method public setPowerTransferLimited(Z)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    return-object p0
.end method

.method public setSupportedRoleCombinations(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    return-object p0
.end method

.method public setUsbDataStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    return-object p0
.end method
