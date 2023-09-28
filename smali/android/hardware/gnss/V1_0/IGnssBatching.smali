# classes2.dex

.class public interface abstract Landroid/hardware/gnss/V1_0/IGnssBatching;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/V1_0/IGnssBatching$Stub;,
        Landroid/hardware/gnss/V1_0/IGnssBatching$Proxy;,
        Landroid/hardware/gnss/V1_0/IGnssBatching$Options;,
        Landroid/hardware/gnss/V1_0/IGnssBatching$Flag;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.gnss@1.0::IGnssBatching"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    const-string v1, "android.hardware.gnss@1.0::IGnssBatching"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/hardware/gnss/V1_0/IGnssBatching;

    if-eqz v3, :cond_15

    move-object v0, v2

    check-cast v0, Landroid/hardware/gnss/V1_0/IGnssBatching;

    return-object v0

    :cond_15
    new-instance v3, Landroid/hardware/gnss/V1_0/IGnssBatching$Proxy;

    invoke-direct {v3, p0}, Landroid/hardware/gnss/V1_0/IGnssBatching$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_1a
    invoke-interface {v3}, Landroid/hardware/gnss/V1_0/IGnssBatching;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    return-object v3

    :cond_35
    goto :goto_22

    :cond_36
    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->getService(Ljava/lang/String;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.hardware.gnss@1.0::IGnssBatching"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.gnss@1.0::IGnssBatching"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->getService(Ljava/lang/String;Z)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract cleanup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBatchSize()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/hardware/gnss/V1_0/IGnssBatchingCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start(Landroid/hardware/gnss/V1_0/IGnssBatching$Options;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
