# classes.dex

.class public final Landroid/app/GameManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameManager$GameMode;
    }
.end annotation


# static fields
.field public static final GAME_MODE_BATTERY:I = 0x3

.field public static final GAME_MODE_PERFORMANCE:I = 0x2

.field public static final GAME_MODE_STANDARD:I = 0x1

.field public static final GAME_MODE_UNSUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GameManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/IGameManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    nop

    const-string v0, "game"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    return-void
.end method


# virtual methods
.method public getAvailableGameModes(Ljava/lang/String;)[I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

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

.method public getGameMode()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IGameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGameMode(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGameModeInfo(Ljava/lang/String;)Landroid/app/GameModeInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAngleEnabled(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->isAngleEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyGraphicsEnvironmentSetup()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IGameManagerService;->notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGameMode(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->setGameServiceProvider(Ljava/lang/String;)V
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

.method public setGameState(Landroid/app/GameState;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IGameManagerService;->setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
