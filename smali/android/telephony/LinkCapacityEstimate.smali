# classes3.dex

.class public final Landroid/telephony/LinkCapacityEstimate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LinkCapacityEstimate$LceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID:I = -0x1

.field public static final LCE_TYPE_COMBINED:I = 0x2

.field public static final LCE_TYPE_PRIMARY:I = 0x0

.field public static final LCE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private final mDownlinkCapacityKbps:I

.field private final mType:I

.field private final mUplinkCapacityKbps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/LinkCapacityEstimate$1;

    invoke-direct {v0}, Landroid/telephony/LinkCapacityEstimate$1;-><init>()V

    sput-object v0, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    iput p3, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    iput p1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    instance-of v1, p1, Landroid/telephony/LinkCapacityEstimate;

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Landroid/telephony/LinkCapacityEstimate;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_2d

    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    return v1

    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/LinkCapacityEstimate;

    iget v3, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    iget v4, v2, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    iget v4, v2, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    iget v4, v2, Landroid/telephony/LinkCapacityEstimate;->mType:I

    if-ne v3, v4, :cond_2c

    move v0, v1

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public getDownlinkCapacityKbps()I
    .registers 2

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    return v0
.end method

.method public getUplinkCapacityKbps()I
    .registers 2

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownlinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUplinkCapacityKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mDownlinkCapacityKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mUplinkCapacityKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/LinkCapacityEstimate;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
