# classes2.dex

.class public final Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnGatewayConnectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExposedCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGatewayConnectionName:Ljava/lang/String;

.field private mMaxMtu:I

.field private mRetryIntervalsMs:[J

.field private final mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

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
.method public constructor <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-static {}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    const-string v0, "gatewayConnectionName was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "tunnelConnectionParams was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_37

    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MOBIKE must be configured for the provided IkeSessionParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4

    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/net/vcn/VcnGatewayConnectionConfig;
    .registers 10

    new-instance v8, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JILandroid/net/vcn/VcnGatewayConnectionConfig-IA;)V

    return-object v8
.end method

.method public removeExposedCapability(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4

    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smcheckValidCapability(I)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mExposedCapabilities:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setMaxMtu(I)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4

    const/16 v0, 0x500

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mMaxMtu:I

    return-object p0
.end method

.method public setRetryIntervalsMillis([J)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 2

    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateRetryInterval([J)V

    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mRetryIntervalsMs:[J

    return-object p0
.end method

.method public setVcnUnderlyingNetworkPriorities(Ljava/util/List;)Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)",
            "Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->-$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1b
    return-object p0
.end method
