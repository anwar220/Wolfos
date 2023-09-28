# classes2.dex

.class final Landroid/location/provider/LocationProviderBase$Service;
.super Landroid/location/provider/ILocationProvider$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/LocationProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/provider/LocationProviderBase;


# direct methods
.method public static synthetic $r8$lambda$9y01bOLerFspp7sMBso73eRcOII(Landroid/location/provider/LocationProviderBase$Service;)V
    .registers 1

    invoke-direct {p0}, Landroid/location/provider/LocationProviderBase$Service;->onFlushComplete()V

    return-void
.end method

.method constructor <init>(Landroid/location/provider/LocationProviderBase;)V
    .registers 2

    iput-object p1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-direct {p0}, Landroid/location/provider/ILocationProvider$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$flush$1(Ljava/lang/RuntimeException;)V
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic lambda$sendExtraCommand$2(Ljava/lang/RuntimeException;)V
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic lambda$setRequest$0(Ljava/lang/RuntimeException;)V
    .registers 2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private onFlushComplete()V
    .registers 4

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    if-eqz v0, :cond_12

    :try_start_6
    invoke-interface {v0}, Landroid/location/provider/ILocationProviderManager;->onFlushComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    new-instance v1, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda1;-><init>(Landroid/location/provider/LocationProviderBase$Service;)V

    invoke-virtual {v0, v1}, Landroid/location/provider/LocationProviderBase;->onFlush(Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_24

    :catch_b
    move-exception v0

    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda2;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_24
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1, p2}, Landroid/location/provider/LocationProviderBase;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda3;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method

.method public setLocationProviderManager(Landroid/location/provider/ILocationProviderManager;)V
    .registers 6

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v0, v0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-boolean v1, v1, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    iget-object v3, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v3, v3, Landroid/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/location/provider/ILocationProviderManager;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_14} :catch_17
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception v1

    goto :goto_25

    :catch_17
    move-exception v1

    :try_start_18
    iget-object v2, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v2, v2, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iput-object p1, v1, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_15

    throw v1
.end method

.method public setRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    invoke-virtual {v0, p1}, Landroid/location/provider/LocationProviderBase;->onSetRequest(Landroid/location/provider/ProviderRequest;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/location/provider/LocationProviderBase$Service;->this$0:Landroid/location/provider/LocationProviderBase;

    iget-object v1, v1, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/location/provider/LocationProviderBase$Service$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method
