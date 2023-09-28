# classes2.dex

.class public abstract Landroid/hardware/hdmi/HdmiClient;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiClient"

.field private static final UNKNOWN_VENDOR_ID:I = 0xffffff


# instance fields
.field private mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    return-void
.end method

.method private static getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 4

    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/hdmi/HdmiClient$1;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;I)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 2

    new-instance v0, Landroid/hardware/hdmi/HdmiClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiClient$2;-><init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V

    return-object v0
.end method


# virtual methods
.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "getActiveSource threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getDeviceType()I
.end method

.method public selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)V
    .registers 7

    if-eqz p3, :cond_1f

    if-eqz p2, :cond_17

    :try_start_4
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1, p2, p3}, Landroid/hardware/hdmi/HdmiClient;->getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendKeyEvent(IZ)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "sendKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public sendVendorCommand(I[BZ)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->sendVendorCommand(II[BZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public sendVolumeKeyEvent(IZ)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/hdmi/IHdmiControlService;->sendVolumeKeyEvent(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "sendVolumeKeyEvent threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 3

    const v0, 0xffffff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/hdmi/HdmiClient;->setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V

    return-void
.end method

.method public setVendorCommandListener(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;I)V
    .registers 6

    if-eqz p1, :cond_23

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-nez v0, :cond_1b

    :try_start_6
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, v0, p2}, Landroid/hardware/hdmi/IHdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    iput-object v0, p0, Landroid/hardware/hdmi/HdmiClient;->mIHdmiVendorCommandListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "HdmiClient"

    const-string v2, "failed to set vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
