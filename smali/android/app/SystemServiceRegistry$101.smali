# classes.dex

.class Landroid/app/SystemServiceRegistry$101;
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
        "Landroid/app/smartspace/SmartspaceManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/app/smartspace/SmartspaceManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "smartspace"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_10

    :cond_b
    new-instance v1, Landroid/app/smartspace/SmartspaceManager;

    invoke-direct {v1, p1}, Landroid/app/smartspace/SmartspaceManager;-><init>(Landroid/content/Context;)V

    :goto_10
    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$101;->createService(Landroid/app/ContextImpl;)Landroid/app/smartspace/SmartspaceManager;

    move-result-object p1

    return-object p1
.end method
