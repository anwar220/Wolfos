# classes.dex

.class Landroid/app/SystemServiceRegistry$102;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/cloudsearch/CloudSearchManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/cloudsearch/CloudSearchManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string v0, "cloudsearch"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_13

    :cond_a
    new-instance v1, Landroid/app/cloudsearch/CloudSearchManager;

    invoke-static {v0}, Landroid/app/cloudsearch/ICloudSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/cloudsearch/ICloudSearchManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/cloudsearch/CloudSearchManager;-><init>(Landroid/app/cloudsearch/ICloudSearchManager;)V

    :goto_13
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$102;->createService(Landroid/app/ContextImpl;)Landroid/app/cloudsearch/CloudSearchManager;

    move-result-object p1

    return-object p1
.end method
