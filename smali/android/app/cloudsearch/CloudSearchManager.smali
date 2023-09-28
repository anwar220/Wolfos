# classes.dex

.class public Landroid/app/cloudsearch/CloudSearchManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;,
        Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    }
.end annotation


# instance fields
.field private final mService:Landroid/app/cloudsearch/ICloudSearchManager;


# direct methods
.method public constructor <init>(Landroid/app/cloudsearch/ICloudSearchManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    return-void
.end method


# virtual methods
.method public search(Landroid/app/cloudsearch/SearchRequest;Ljava/util/concurrent/Executor;Landroid/app/cloudsearch/CloudSearchManager$CallBack;)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/cloudsearch/SearchRequest;

    new-instance v2, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/cloudsearch/SearchRequest;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;-><init>(Landroid/app/cloudsearch/CloudSearchManager;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/CloudSearchManager$CallBack;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, v2}, Landroid/app/cloudsearch/ICloudSearchManager;->search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_24

    nop

    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
