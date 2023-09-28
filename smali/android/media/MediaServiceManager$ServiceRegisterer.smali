# classes2.dex

.class public final Landroid/media/MediaServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final mLazyStart:Z

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/media/MediaServiceManager$ServiceRegisterer;->mLazyStart:Z

    return-void
.end method


# virtual methods
.method public get()Landroid/os/IBinder;
    .registers 2

    iget-boolean v0, p0, Landroid/media/MediaServiceManager$ServiceRegisterer;->mLazyStart:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/MediaServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/media/MediaServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
