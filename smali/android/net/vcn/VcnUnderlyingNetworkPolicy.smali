# classes2.dex

.class public final Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnUnderlyingNetworkPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string v0, "vcnNetworkPolicyResult"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/vcn/VcnNetworkPolicyResult;Landroid/net/vcn/VcnUnderlyingNetworkPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V

    return-void
.end method

.method public constructor <init>(ZLandroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mergedNetworkCapabilities must be nonnull"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-direct {v0, p1, p2}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    iget-object v2, v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnNetworkPolicyResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
