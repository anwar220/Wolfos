# classes.dex

.class public Landroid/apphibernation/AppHibernationManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppHibernationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    nop

    const-string v0, "app_hibernation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/apphibernation/IAppHibernationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;

    move-result-object v0

    iput-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    return-void
.end method


# virtual methods
.method public getHibernatingPackagesForUser()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/apphibernation/IAppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

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

.method public getHibernationStatsForUser()Ljava/util/Map;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHibernationStatsForUser(Ljava/util/Set;)Ljava/util/Map;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/apphibernation/IAppHibernationService;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isHibernatingForUser(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/apphibernation/IAppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

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

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {v0, p1}, Landroid/apphibernation/IAppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setHibernatingForUser(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    iget-object v1, p0, Landroid/apphibernation/AppHibernationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V
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

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/apphibernation/AppHibernationManager;->mIAppHibernationService:Landroid/apphibernation/IAppHibernationService;

    invoke-interface {v0, p1, p2}, Landroid/apphibernation/IAppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V
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
