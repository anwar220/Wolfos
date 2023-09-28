# classes2.dex

.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPort$EnableUsbDataWhileDockedStatus;,
        Landroid/hardware/usb/UsbPort$ResetUsbPortStatus;,
        Landroid/hardware/usb/UsbPort$EnableLimitPowerTransferStatus;,
        Landroid/hardware/usb/UsbPort$EnableUsbDataStatus;
    }
.end annotation


# static fields
.field public static final ENABLE_LIMIT_POWER_TRANSFER_ERROR_INTERNAL:I = 0x1

.field public static final ENABLE_LIMIT_POWER_TRANSFER_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final ENABLE_LIMIT_POWER_TRANSFER_ERROR_OTHER:I = 0x4

.field public static final ENABLE_LIMIT_POWER_TRANSFER_ERROR_PORT_MISMATCH:I = 0x3

.field public static final ENABLE_LIMIT_POWER_TRANSFER_SUCCESS:I = 0x0

.field public static final ENABLE_USB_DATA_ERROR_INTERNAL:I = 0x1

.field public static final ENABLE_USB_DATA_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final ENABLE_USB_DATA_ERROR_OTHER:I = 0x4

.field public static final ENABLE_USB_DATA_ERROR_PORT_MISMATCH:I = 0x3

.field public static final ENABLE_USB_DATA_SUCCESS:I = 0x0

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_ERROR_DATA_ENABLED:I = 0x4

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_ERROR_INTERNAL:I = 0x1

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_ERROR_OTHER:I = 0x5

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_ERROR_PORT_MISMATCH:I = 0x3

.field public static final ENABLE_USB_DATA_WHILE_DOCKED_SUCCESS:I = 0x0

.field private static final NUM_DATA_ROLES:I = 0x3

.field private static final POWER_ROLE_OFFSET:I = 0x0

.field public static final RESET_USB_PORT_ERROR_INTERNAL:I = 0x1

.field public static final RESET_USB_PORT_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final RESET_USB_PORT_ERROR_OTHER:I = 0x4

.field public static final RESET_USB_PORT_ERROR_PORT_MISMATCH:I = 0x3

.field public static final RESET_USB_PORT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbPort"

.field private static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSupportedContaminantProtectionModes:I

.field private final mSupportedModes:I

.field private final mSupportsEnableContaminantPresenceDetection:Z

.field private final mSupportsEnableContaminantPresenceProtection:Z

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    iput p4, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    iput-boolean p5, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iput-boolean p6, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    return-void
.end method

.method public static checkDataRole(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkMode(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "portMode"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkPowerRole(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static checkRoles(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "powerRole"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    const-string v2, "dataRole"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method public static combineRolesAsBit(II)I
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static contaminantPresenceStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x3
    const-string v0, "detected"

    return-object v0

    :pswitch_b  #0x2
    const-string v0, "not detected"

    return-object v0

    :pswitch_e  #0x1
    const-string v0, "disabled"

    return-object v0

    :pswitch_11  #0x0
    const-string v0, "not-supported"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_e  #00000001
        :pswitch_b  #00000002
        :pswitch_8  #00000003
    .end packed-switch
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "device"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "host"

    return-object v0

    :pswitch_e  #0x0
    const-string v0, "no-data"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_a

    const-string v1, "none"

    return-object v1

    :cond_a
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_16

    const-string v1, "dual, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_16
    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_20

    const-string v1, "dfp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_20
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    const-string v1, "ufp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_2a
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    const-string v1, "audio_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    const-string v1, "debug_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4a
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static powerBrickConnectionStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "disconnected"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "connected"

    return-object v0

    :pswitch_e  #0x0
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public static powerRoleToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x2
    const-string v0, "sink"

    return-object v0

    :pswitch_b  #0x1
    const-string v0, "source"

    return-object v0

    :pswitch_e  #0x0
    const-string v0, "no-power"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_b  #00000001
        :pswitch_8  #00000002
    .end packed-switch
.end method

.method public static roleCombinationsToString(I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_b
    if-eqz p0, :cond_38

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    not-int v3, v3

    and-int/2addr p0, v3

    div-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x0

    rem-int/lit8 v4, v2, 0x3

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_24

    :cond_1f
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_38
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static usbDataStatusToString(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_a

    const-string v1, "unknown"

    return-object v1

    :cond_a
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    const-string v1, "enabled"

    return-object v1

    :cond_12
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    const-string v1, "disabled-overheat, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    const-string v1, "disabled-contaminant, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_31

    const-string v1, "disabled-dock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3c

    const-string v1, "disabled-force, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_47

    const-string v1, "disabled-debug, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public enableContaminantDetection(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbManager;->enableContaminantDetection(Landroid/hardware/usb/UsbPort;Z)V

    return-void
.end method

.method public enableLimitPowerTransfer(Z)I
    .registers 6

    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLimitPowerTransfer opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableLimitPowerTransfer(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    const/4 v3, 0x4

    return v3

    :pswitch_49  #0x3
    const/4 v3, 0x3

    return v3

    :pswitch_4b  #0x2
    const/4 v3, 0x2

    return v3

    :pswitch_4d  #0x1
    const/4 v3, 0x1

    return v3

    :pswitch_4f  #0x0
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4f  #00000000
        :pswitch_4d  #00000001
        :pswitch_4b  #00000002
        :pswitch_49  #00000003
    .end packed-switch
.end method

.method public enableUsbData(Z)I
    .registers 6

    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableUsbData(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    :cond_44
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    const/4 v3, 0x4

    return v3

    :pswitch_4d  #0x3
    const/4 v3, 0x3

    return v3

    :pswitch_4f  #0x2
    const/4 v3, 0x2

    return v3

    :pswitch_51  #0x1
    return v3

    :pswitch_52  #0x0
    const/4 v3, 0x0

    return v3

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_51  #00000001
        :pswitch_4f  #00000002
        :pswitch_4d  #00000003
    .end packed-switch
.end method

.method public enableUsbDataWhileDocked()I
    .registers 6

    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_42

    const/4 v2, 0x4

    return v2

    :cond_42
    new-instance v2, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p0, v0, v2}, Landroid/hardware/usb/UsbManager;->enableUsbDataWhileDocked(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_62

    const/4 v4, 0x5

    return v4

    :pswitch_5a  #0x3
    const/4 v4, 0x3

    return v4

    :pswitch_5c  #0x2
    const/4 v4, 0x2

    return v4

    :pswitch_5e  #0x1
    const/4 v4, 0x1

    return v4

    :pswitch_60  #0x0
    const/4 v4, 0x0

    return v4

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_60  #00000000
        :pswitch_5e  #00000001
        :pswitch_5c  #00000002
        :pswitch_5a  #00000003
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Landroid/hardware/usb/UsbPortStatus;
    .registers 2

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedContaminantProtectionModes()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    return v0
.end method

.method public getSupportedModes()I
    .registers 2

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public isModeSupported(I)Z
    .registers 3

    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public resetUsbPort(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsbPort opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1, p2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/usb/UsbManager;->resetUsbPort(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    return-void
.end method

.method public setRoles(II)V
    .registers 4

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    return-void
.end method

.method public supportsEnableContaminantPresenceDetection()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    return v0
.end method

.method public supportsEnableContaminantPresenceProtection()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportedContaminantProtectionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportsEnableContaminantPresenceProtection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportsEnableContaminantPresenceDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
