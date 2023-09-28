# classes2.dex

.class public final Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSubIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([I)V
    .registers 3

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    const-string v0, "subIds were null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    return-void
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 4

    instance-of v0, p1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    move-object v1, p1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0

    :cond_12
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

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
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    iget-object v2, v0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public getSubIds()[I
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnUnderlyingNetworkSpecifier ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSubIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;->mSubIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
