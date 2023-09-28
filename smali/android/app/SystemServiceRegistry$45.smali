# classes.dex

.class Landroid/app/SystemServiceRegistry$45;
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
        "Landroid/app/usage/StorageStatsManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/app/usage/StorageStatsManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    nop

    const-string/jumbo v0, "storagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IStorageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;

    move-result-object v0

    new-instance v1, Landroid/app/usage/StorageStatsManager;

    invoke-direct {v1, p1, v0}, Landroid/app/usage/StorageStatsManager;-><init>(Landroid/content/Context;Landroid/app/usage/IStorageStatsManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$45;->createService(Landroid/app/ContextImpl;)Landroid/app/usage/StorageStatsManager;

    move-result-object p1

    return-object p1
.end method