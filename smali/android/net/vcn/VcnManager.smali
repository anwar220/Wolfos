# classes2.dex

.class public Landroid/net/vcn/VcnManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;,
        Landroid/net/vcn/VcnManager$VcnStatusCallback;,
        Landroid/net/vcn/VcnManager$VcnErrorCode;,
        Landroid/net/vcn/VcnManager$VcnStatusCode;,
        Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;
    }
.end annotation


# static fields
.field private static final REGISTERED_POLICY_LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final VCN_ERROR_CODE_CONFIG_ERROR:I = 0x1

.field public static final VCN_ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final VCN_ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final VCN_NETWORK_SELECTION_WIFI_ENTRY_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_entry_rssi_threshold"

.field public static final VCN_NETWORK_SELECTION_WIFI_EXIT_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_exit_rssi_threshold"

.field public static final VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

.field public static final VCN_STATUS_CODE_ACTIVE:I = 0x2

.field public static final VCN_STATUS_CODE_INACTIVE:I = 0x1

.field public static final VCN_STATUS_CODE_NOT_CONFIGURED:I = 0x0

.field public static final VCN_STATUS_CODE_SAFE_MODE:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/vcn/IVcnManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/net/vcn/VcnManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->TAG:Ljava/lang/String;

    const-string v0, "vcn_network_selection_wifi_entry_rssi_threshold"

    const-string v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    const-string v0, "missing service"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/IVcnManagementService;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    return-void
.end method

.method public static getAllPolicyListeners()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder-IA;)V

    sget-object v1, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    :try_start_18
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    nop

    return-void

    :catch_1f
    move-exception v1

    sget-object v2, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "listener is already registered with VcnManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addVcnUnderlyingNetworkPolicyListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method

.method public applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0

    new-instance v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->isTeardownRequested()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    return-object v1
.end method

.method public clearVcnConfig(Landroid/os/ParcelUuid;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_5
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/vcn/IVcnManagementService;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_10} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_18
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConfiguredSubscriptionGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/vcn/IVcnManagementService;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

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

.method public getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 5

    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_a
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v0, p1, p2}, Landroid/net/vcn/IVcnManagementService;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerVcnStatusCallback(Landroid/os/ParcelUuid;Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .registers 7

    const-string v0, "subscriptionGroup must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p3

    :try_start_10
    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_3a

    new-instance v0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    invoke-direct {v0, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V

    invoke-static {p3, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_42

    :try_start_1e
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/net/vcn/IVcnManagementService;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_30
    .catchall {:try_start_1e .. :try_end_2d} :catchall_42

    nop

    :try_start_2e
    monitor-exit p3

    return-void

    :catch_30
    move-exception v0

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback is already registered with VcnManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_42
    move-exception v0

    monitor-exit p3
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_42

    throw v0
.end method

.method public removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    if-nez v0, :cond_10

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method

.method public setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_a
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/vcn/IVcnManagementService;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterVcnStatusCallback(Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .registers 5

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_2b

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/vcn/IVcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_20
    .catchall {:try_start_f .. :try_end_18} :catchall_1e

    :try_start_18
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    nop

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2b

    return-void

    :catchall_1e
    move-exception v1

    goto :goto_26

    :catch_20
    move-exception v1

    :try_start_21
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    :goto_26
    :try_start_26
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    nop

    throw v1

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw v0
.end method
