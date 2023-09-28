# classes.dex

.class public Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualDevice"
.end annotation


# instance fields
.field private final mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final mActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/companion/virtual/IVirtualDeviceManager;

.field private mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

.field private final mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private constructor <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    new-instance v6, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;

    invoke-direct {v6, p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)V

    iput-object v6, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method private getVirtualDisplayFlags(I)I
    .registers 3

    or-int/lit16 v0, p1, 0x9c9

    return v0
.end method

.method private getVirtualDisplayName()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDevice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 5

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11

    nop

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    :cond_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .registers 11

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-nez v0, :cond_13

    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/audio/VirtualAudioDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    :cond_13
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-object v0
.end method

.method public createVirtualDisplay(IIILandroid/view/Surface;ILjava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 13

    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getVirtualDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    invoke-direct {p0, p5}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getVirtualDisplayFlags(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v0

    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v1, p7, p6}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    :try_start_1e
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I

    move-result v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_38

    nop

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/content/Context;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    return-object v4

    :catch_38
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public createVirtualKeyboard(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualKeyboard;
    .registers 13

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/IVirtualDevice;->createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V

    new-instance v1, Landroid/hardware/input/VirtualKeyboard;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualMouse(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualMouse;
    .registers 13

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualMouse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/IVirtualDevice;->createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V

    new-instance v1, Landroid/hardware/input/VirtualMouse;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualMouse;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createVirtualTouchscreen(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualTouchscreen;
    .registers 14

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualTouchscreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    move-object v8, v1

    invoke-interface/range {v2 .. v8}, Landroid/companion/virtual/IVirtualDevice;->createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V

    new-instance v2, Landroid/hardware/input/VirtualTouchscreen;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v2, v3, v0}, Landroid/hardware/input/VirtualTouchscreen;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object v2

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/companion/virtual/IVirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_18
    return-void
.end method

.method public removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setShowPointerIcon(Z)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->setShowPointerIcon(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
