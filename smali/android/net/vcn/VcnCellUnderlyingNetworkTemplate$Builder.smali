# classes2.dex

.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredMatchCriteria:I

.field private mMinEntryDownstreamBandwidthKbps:I

.field private mMinEntryUpstreamBandwidthKbps:I

.field private mMinExitDownstreamBandwidthKbps:I

.field private mMinExitUpstreamBandwidthKbps:I

.field private mOpportunisticMatchCriteria:I

.field private mRoamingMatchCriteria:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .registers 13

    new-instance v11, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v7, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget v8, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iget v9, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILandroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V

    return-object v11
.end method

.method public setMetered(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3

    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    return-object p0
.end method

.method public setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    return-object p0
.end method

.method public setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    return-object p0
.end method

.method public setOperatorPlmnIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3

    const-string v0, "setOpportunistic"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    return-object p0
.end method

.method public setRoaming(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3

    const-string v0, "setRoaming"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    return-object p0
.end method

.method public setSimSpecificCarrierIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    const-string v0, "simSpecificCarrierIds is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
