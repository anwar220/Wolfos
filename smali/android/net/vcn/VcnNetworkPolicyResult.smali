# classes2.dex

.class public final Landroid/net/vcn/VcnNetworkPolicyResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnNetworkPolicyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsTearDownRequested:Z

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnNetworkPolicyResult$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnNetworkPolicyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLandroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "networkCapabilities must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean p1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    iput-object p2, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/net/vcn/VcnNetworkPolicyResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    iget-boolean v3, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    iget-boolean v4, v1, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnNetworkPolicyResult { mIsTeardownRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkCapabilities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mIsTearDownRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/vcn/VcnNetworkPolicyResult;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
