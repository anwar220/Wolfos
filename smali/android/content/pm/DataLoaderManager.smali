# classes.dex

.class public Landroid/content/pm/DataLoaderManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field private final mService:Landroid/content/pm/IDataLoaderManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/IDataLoaderManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    return-void
.end method


# virtual methods
.method public bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IDataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

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

.method public unbindFromDataLoader(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->unbindFromDataLoader(I)V
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
