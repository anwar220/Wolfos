# classes2.dex

.class public Landroid/net/VpnService$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Landroid/net/VpnService;)V
    .registers 4

    iput-object p1, p0, Landroid/net/VpnService$Builder;->this$0:Landroid/net/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-void
.end method

.method private addRoute(Landroid/net/IpPrefix;I)Landroid/net/VpnService$Builder;
    .registers 6

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/VpnService;->-$$Nest$smcheck(Ljava/net/InetAddress;I)V

    new-instance v0, Landroid/net/RouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/net/VpnService$Builder;->findRouteIndexByDestination(Landroid/net/RouteInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_1e
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_23
    return-object p0
.end method

.method private findRouteIndexByDestination(Landroid/net/RouteInfo;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private verifyApp(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    nop

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    :try_start_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .registers 4

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .registers 5

    invoke-static {p1, p2}, Landroid/net/VpnService;->-$$Nest$smcheck(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-nez v0, :cond_20

    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    :cond_18
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addDisallowedApplication already called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    if-nez v0, :cond_20

    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    :cond_18
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAllowedApplication already called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .registers 3

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    .registers 4

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_1b
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRoute(Landroid/net/IpPrefix;)Landroid/net/VpnService$Builder;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/VpnService$Builder;->addRoute(Landroid/net/IpPrefix;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .registers 4

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .registers 5

    invoke-static {p1, p2}, Landroid/net/VpnService;->-$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V

    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/VpnService$Builder;->addRoute(Landroid/net/IpPrefix;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowBypass()Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    return-object p0
.end method

.method public allowFamily(I)Landroid/net/VpnService$Builder;
    .registers 5

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    goto :goto_12

    :cond_a
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    :goto_12
    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is neither "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    :try_start_c
    invoke-static {}, Landroid/net/VpnService;->-$$Nest$smgetService()Landroid/net/IVpnManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public excludeRoute(Landroid/net/IpPrefix;)Landroid/net/VpnService$Builder;
    .registers 3

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Landroid/net/VpnService$Builder;->addRoute(Landroid/net/IpPrefix;I)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public routes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setBlocking(Z)Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->proxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method public setMetered(Z)Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->isMetered:Z

    return-object p0
.end method

.method public setMtu(I)Landroid/net/VpnService$Builder;
    .registers 4

    if-lez p1, :cond_7

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad mtu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    return-object p0
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;
    .registers 4

    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, [Landroid/net/Network;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Network;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    return-object p0
.end method
