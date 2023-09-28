# classes2.dex

.class public abstract Landroid/location/provider/LocationProviderBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/LocationProviderBase$Service;,
        Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_FUSED_PROVIDER:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field public static final ACTION_NETWORK_PROVIDER:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"


# instance fields
.field volatile mAllowed:Z

.field final mAttributionTag:Ljava/lang/String;

.field final mBinder:Landroid/os/IBinder;

.field volatile mManager:Landroid/location/provider/ILocationProviderManager;

.field volatile mProperties:Landroid/location/provider/ProviderProperties;

.field final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mAttributionTag:Ljava/lang/String;

    new-instance v0, Landroid/location/provider/LocationProviderBase$Service;

    invoke-direct {v0, p0}, Landroid/location/provider/LocationProviderBase$Service;-><init>(Landroid/location/provider/LocationProviderBase;)V

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/provider/ProviderProperties;

    iput-object v0, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    return-void
.end method

.method private static stripExtras(Landroid/location/Location;)Landroid/location/Location;
    .registers 6

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string v1, "noGPSLocation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "coarseLocation"

    const-string v4, "indoorProbability"

    if-nez v2, :cond_1e

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_1e
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object p0, v2

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_3b
    return-object p0
.end method

.method private static stripExtras(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-static {v4}, Landroid/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v5

    if-eq v0, p0, :cond_20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_20
    if-eq v5, v4, :cond_46

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    if-lt v6, v2, :cond_3c

    goto :goto_43

    :cond_3c
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_43
    :goto_43
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_4a
    return-object v0
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getProperties()Landroid/location/provider/ProviderProperties;
    .registers 2

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    return-object v0
.end method

.method public isAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    return v0
.end method

.method public abstract onFlush(Landroid/location/provider/LocationProviderBase$OnFlushCompleteCallback;)V
.end method

.method public abstract onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSetRequest(Landroid/location/provider/ProviderRequest;)V
.end method

.method public reportLocation(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    if-eqz v0, :cond_19

    :try_start_4
    invoke-static {p1}, Landroid/location/provider/LocationProviderBase;->stripExtras(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocation(Landroid/location/Location;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_19

    :catch_c
    move-exception v1

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_19
    :goto_19
    return-void
.end method

.method public reportLocations(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    if-eqz v0, :cond_19

    :try_start_4
    invoke-static {p1}, Landroid/location/provider/LocationProviderBase;->stripExtras(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onReportLocations(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_19

    :catch_c
    move-exception v1

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_19
    :goto_19
    return-void
.end method

.method public setAllowed(Z)V
    .registers 5

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    if-ne v1, p1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iput-boolean p1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_24

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    if-eqz v0, :cond_23

    :try_start_10
    iget-boolean v1, p0, Landroid/location/provider/LocationProviderBase;->mAllowed:Z

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetAllowed(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    move-exception v1

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_23
    :goto_23
    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setProperties(Landroid/location/provider/ProviderProperties;)V
    .registers 5

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/ProviderProperties;

    iput-object v1, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_24

    iget-object v0, p0, Landroid/location/provider/LocationProviderBase;->mManager:Landroid/location/provider/ILocationProviderManager;

    if-eqz v0, :cond_23

    :try_start_10
    iget-object v1, p0, Landroid/location/provider/LocationProviderBase;->mProperties:Landroid/location/provider/ProviderProperties;

    invoke-interface {v0, v1}, Landroid/location/provider/ILocationProviderManager;->onSetProperties(Landroid/location/provider/ProviderProperties;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_23

    :catch_16
    move-exception v1

    iget-object v2, p0, Landroid/location/provider/LocationProviderBase;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_23
    :goto_23
    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method
