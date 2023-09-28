# classes2.dex

.class public final Landroid/hardware/lights/SystemLightsManager;
.super Landroid/hardware/lights/LightsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LightsManager"


# instance fields
.field private final mService:Landroid/hardware/lights/ILightsManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Landroid/hardware/lights/SystemLightsManager;)Landroid/hardware/lights/ILightsManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    nop

    const-string v0, "lights"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/lights/ILightsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/lights/ILightsManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/lights/SystemLightsManager;-><init>(Landroid/content/Context;Landroid/hardware/lights/ILightsManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/lights/ILightsManager;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/hardware/lights/LightsManager;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/ILightsManager;

    iput-object v0, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    return-void
.end method


# virtual methods
.method public getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/lights/ILightsManager;->getLightState(I)Landroid/hardware/lights/LightState;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLights()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-interface {v0}, Landroid/hardware/lights/ILightsManager;->getLights()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSession()Landroid/hardware/lights/LightsManager$LightsSession;
    .registers 5

    :try_start_0
    new-instance v0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;-><init>(Landroid/hardware/lights/SystemLightsManager;Landroid/hardware/lights/SystemLightsManager$SystemLightsSession-IA;)V

    iget-object v1, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/hardware/lights/ILightsManager;->openSession(Landroid/os/IBinder;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;
    .registers 5

    :try_start_0
    new-instance v0, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/lights/SystemLightsManager$SystemLightsSession;-><init>(Landroid/hardware/lights/SystemLightsManager;Landroid/hardware/lights/SystemLightsManager$SystemLightsSession-IA;)V

    iget-object v1, p0, Landroid/hardware/lights/SystemLightsManager;->mService:Landroid/hardware/lights/ILightsManager;

    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/hardware/lights/ILightsManager;->openSession(Landroid/os/IBinder;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
