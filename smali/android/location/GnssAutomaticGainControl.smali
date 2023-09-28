# classes2.dex

.class public final Landroid/location/GnssAutomaticGainControl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAutomaticGainControl$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAutomaticGainControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarrierFrequencyHz:J

.field private final mConstellationType:I

.field private final mLevelDb:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssAutomaticGainControl$1;

    invoke-direct {v0}, Landroid/location/GnssAutomaticGainControl$1;-><init>()V

    sput-object v0, Landroid/location/GnssAutomaticGainControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    iput p3, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    iput-wide p4, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    return-void
.end method

.method synthetic constructor <init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/location/GnssAutomaticGainControl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAutomaticGainControl;

    iget-wide v3, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    iget-wide v5, v1, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_18

    return v2

    :cond_18
    iget v3, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    iget v4, v1, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    if-eq v3, v4, :cond_1f

    return v2

    :cond_1f
    iget-wide v3, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    iget-wide v5, v1, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public getCarrierFrequencyHz()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    return-wide v0
.end method

.method public getConstellationType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    return v0
.end method

.method public getLevelDb()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssAutomaticGainControl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Constellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    invoke-static {v2}, Landroid/location/GnssStatus;->constellationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CarrierFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mLevelDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssAutomaticGainControl;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssAutomaticGainControl;->mCarrierFrequencyHz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
