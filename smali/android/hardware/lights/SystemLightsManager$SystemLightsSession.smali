# classes2.dex

.class public final Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;
.super Landroid/hardware/lights/LightsManager$LightsSession;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/SystemLightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemLightsSession"
.end annotation


# instance fields
.field private final mCloseGuard:Landroid/util/CloseGuard;

.field private mClosed:Z

.field final synthetic this$0:Landroid/hardware/lights/SystemLightsManager;


# direct methods
.method private constructor <init>(Landroid/hardware/lights/SystemLightsManager;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    const-string v1, "SystemLightsSession.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/lights/SystemLightsManager;Landroid/hardware/lights/SystemLightsManager$SystemLightsSession-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;-><init>(Landroid/hardware/lights/SystemLightsManager;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_20

    :try_start_4
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {v0}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->closeSession(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_20
    :goto_20
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public requestLights(Landroid/hardware/lights/LightsRequest;)V
    .registers 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->mClosed:Z

    if-nez v0, :cond_57

    :try_start_7
    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/lights/LightState;

    const/4 v4, 0x0

    :goto_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/LightState;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_43
    iget-object v4, p0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->this$0:Landroid/hardware/lights/SystemLightsManager;

    invoke-static {v4}, Landroid/hardware/lights/SystemLightsManager;->-$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/hardware/lights/ILightsManager;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_57
    :goto_57
    return-void
.end method
