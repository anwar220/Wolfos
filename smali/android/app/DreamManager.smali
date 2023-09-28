# classes.dex

.class public Landroid/app/DreamManager;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/service/dreams/IDreamManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iput-object p1, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areDreamsSupported()Z
    .registers 3

    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDreaming()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isScreensaverEnabled()Z
    .registers 5

    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :try_start_6
    iget-object v1, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eqz p1, :cond_12

    move-object v3, v0

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    return-void
.end method

.method public setDreamOverlay(Landroid/content/ComponentName;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1}, Landroid/service/dreams/IDreamManager;->registerDreamOverlayService(Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public setScreensaverEnabled(Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/DreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "screensaver_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public startDream(Landroid/content/ComponentName;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public stopDream()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/app/DreamManager;->mService:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method
