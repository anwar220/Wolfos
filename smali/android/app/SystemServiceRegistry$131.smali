# classes.dex

.class Landroid/app/SystemServiceRegistry$131;
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
        "Landroid/content/pm/verify/domain/DomainVerificationManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/content/pm/verify/domain/DomainVerificationManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string v0, "domain_verification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/domain/IDomainVerificationManager;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;-><init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$131;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/verify/domain/DomainVerificationManager;

    move-result-object p1

    return-object p1
.end method
