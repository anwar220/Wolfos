# classes2.dex

.class public final Landroid/net/vcn/VcnGatewayConnectionConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnSupportedCapability;
    }
.end annotation


# static fields
.field public static final ALLOWED_CAPABILITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_MTU:I = 0x5dc

.field private static final DEFAULT_RETRY_INTERVALS_MS:[J

.field public static final DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPOSED_CAPABILITIES_KEY:Ljava/lang/String; = "mExposedCapabilities"

.field private static final GATEWAY_CONNECTION_NAME_KEY:Ljava/lang/String; = "mGatewayConnectionName"

.field private static final MAX_MTU_KEY:Ljava/lang/String; = "mMaxMtu"

.field private static final MAX_RETRY_INTERVAL_COUNT:I = 0xa

.field private static final MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

.field static final MIN_MTU_V6:I = 0x500

.field private static final RETRY_INTERVAL_MS_KEY:Ljava/lang/String; = "mRetryIntervalsMs"

.field private static final TUNNEL_CONNECTION_PARAMS_KEY:Ljava/lang/String; = "mTunnelConnectionParams"

.field public static final UNDERLYING_NETWORK_TEMPLATES_KEY:Ljava/lang/String; = "mUnderlyingNetworkTemplates"


# instance fields
.field private final mExposedCapabilities:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGatewayConnectionName:Ljava/lang/String;

.field private final mMaxMtu:I

.field private final mRetryIntervalsMs:[J

.field private mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final mUnderlyingNetworkTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J
    .registers 1

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckValidCapability(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smvalidateRetryInterval([J)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    sput-object v8, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xf

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sput-wide v10, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    new-array v0, v7, [J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    aput-wide v12, v0, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x2

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    aput-wide v12, v0, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    aput-wide v14, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1e

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    aput-wide v14, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v0, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    aput-wide v3, v0, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const/4 v1, 0x6

    aput-wide v3, v0, v1

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string v0, "mTunnelConnectionParams"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "tunnelConnectionParamsBundle was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    const-string v1, "mExposedCapabilities"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "mGatewayConnectionName"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    nop

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v1, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    nop

    const-string v2, "mUnderlyingNetworkTemplates"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_45

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    goto :goto_50

    :cond_45
    new-instance v3, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    :goto_50
    const-string v3, "mRetryIntervalsMs"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v3, "mMaxMtu"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JI)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;[JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iput-object p5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iput p6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_24
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JILandroid/net/vcn/VcnGatewayConnectionConfig-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JI)V

    return-void
.end method

.method private static checkValidCapability(I)V
    .registers 4

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private validate()V
    .registers 6

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v1, "gatewayConnectionName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const-string v1, "tunnel connection parameter was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    const-string v3, "exposedCapsBundle was null or empty"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    goto :goto_2a

    :cond_3e
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v3, "retryIntervalsMs was null"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    const-string v0, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static validateNetworkTemplateList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkPriorityRules is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    const-string v3, "Found null value VcnUnderlyingNetworkTemplate"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_e

    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found duplicate VcnUnderlyingNetworkTemplate"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    return-void
.end method

.method private static validateRetryInterval([J)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    array-length v1, p0

    if-lez v1, :cond_d

    array-length v1, p0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v2, "retryIntervalsMs was null, empty or exceed max interval count"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v1, p0

    sub-int/2addr v1, v0

    aget-wide v0, p0, v1

    sget-wide v2, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1e

    return-void

    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeating retry interval was too short, must be a minimum of 15 minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    if-ne v2, v3, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    nop

    :goto_44
    return v1
.end method

.method public getAllExposedCapabilities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExposedCapabilities()[I
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public getGatewayConnectionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxMtu()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    return v0
.end method

.method public getRetryIntervalsMillis()[J
    .registers 3

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object v0
.end method

.method public getVcnUnderlyingNetworkPriorities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 7

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    new-instance v4, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v4}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v5, "mGatewayConnectionName"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mTunnelConnectionParams"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string v4, "mExposedCapabilities"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string v4, "mUnderlyingNetworkTemplates"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v5, "mRetryIntervalsMs"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    iget v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const-string v5, "mMaxMtu"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
