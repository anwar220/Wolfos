# classes2.dex

.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMeteredMatchCriteria:I

.field private mMinEntryDownstreamBandwidthKbps:I

.field private mMinEntryUpstreamBandwidthKbps:I

.field private mMinExitDownstreamBandwidthKbps:I

.field private mMinExitUpstreamBandwidthKbps:I

.field private final mSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .registers 10

    new-instance v8, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V

    return-object v8
.end method

.method public setMetered(I)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3

    const-string v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    return-object p0
.end method

.method public setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    return-object p0
.end method

.method public setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    return-object p0
.end method

.method public setSsids(Ljava/util/Set;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->-$$Nest$smvalidateSsids(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->mSsids:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
