# classes.dex

.class Landroid/app/SystemServiceRegistry$16;
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
        "Landroid/net/TetheringManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method

.method static synthetic lambda$createService$0()Landroid/os/IBinder;
    .registers 1

    const-string/jumbo v0, "tethering"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/TetheringManager;
    .registers 4

    new-instance v0, Landroid/net/TetheringManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$16$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$16$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/net/TetheringManager;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$16;->createService(Landroid/app/ContextImpl;)Landroid/net/TetheringManager;

    move-result-object p1

    return-object p1
.end method
