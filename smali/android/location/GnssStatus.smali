# classes2.dex

.class public final Landroid/location/GnssStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssStatus$GnssSvInfo;,
        Landroid/location/GnssStatus$Builder;,
        Landroid/location/GnssStatus$ConstellationType;,
        Landroid/location/GnssStatus$Callback;
    }
.end annotation


# static fields
.field public static final CONSTELLATION_BEIDOU:I = 0x5

.field public static final CONSTELLATION_COUNT:I = 0x8

.field public static final CONSTELLATION_GALILEO:I = 0x6

.field public static final CONSTELLATION_GLONASS:I = 0x3

.field public static final CONSTELLATION_GPS:I = 0x1

.field public static final CONSTELLATION_IRNSS:I = 0x7

.field public static final CONSTELLATION_QZSS:I = 0x4

.field public static final CONSTELLATION_SBAS:I = 0x2

.field private static final CONSTELLATION_TYPE_MASK:I = 0xf

.field private static final CONSTELLATION_TYPE_SHIFT_WIDTH:I = 0x8

.field public static final CONSTELLATION_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final SVID_FLAGS_HAS_ALMANAC_DATA:I = 0x2

.field private static final SVID_FLAGS_HAS_BASEBAND_CN0:I = 0x10

.field private static final SVID_FLAGS_HAS_CARRIER_FREQUENCY:I = 0x8

.field private static final SVID_FLAGS_HAS_EPHEMERIS_DATA:I = 0x1

.field private static final SVID_FLAGS_NONE:I = 0x0

.field private static final SVID_FLAGS_USED_IN_FIX:I = 0x4

.field private static final SVID_SHIFT_WIDTH:I = 0xc


# instance fields
.field private final mAzimuths:[F

.field private final mBasebandCn0DbHzs:[F

.field private final mCarrierFrequencies:[F

.field private final mCn0DbHzs:[F

.field private final mElevations:[F

.field private final mSvCount:I

.field private final mSvidWithFlags:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssStatus$1;

    invoke-direct {v0}, Landroid/location/GnssStatus$1;-><init>()V

    sput-object v0, Landroid/location/GnssStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I[I[F[F[F[F[F)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/GnssStatus;->mSvCount:I

    iput-object p2, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iput-object p3, p0, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    iput-object p4, p0, Landroid/location/GnssStatus;->mElevations:[F

    iput-object p5, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    iput-object p6, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    iput-object p7, p0, Landroid/location/GnssStatus;->mBasebandCn0DbHzs:[F

    return-void
.end method

.method synthetic constructor <init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[F)V

    return-void
.end method

.method public static constellationTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x7
    const-string v0, "IRNSS"

    return-object v0

    :pswitch_b  #0x6
    const-string v0, "GALILEO"

    return-object v0

    :pswitch_e  #0x5
    const-string v0, "BEIDOU"

    return-object v0

    :pswitch_11  #0x4
    const-string v0, "QZSS"

    return-object v0

    :pswitch_14  #0x3
    const-string v0, "GLONASS"

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "SBAS"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "GPS"

    return-object v0

    :pswitch_1d  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method

.method public static wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    array-length v2, p1

    if-lt v2, p0, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    array-length v2, p3

    if-lt v2, p0, :cond_18

    move v2, v0

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    array-length v2, p4

    if-lt v2, p0, :cond_21

    move v2, v0

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    array-length v2, p5

    if-lt v2, p0, :cond_2a

    move v2, v0

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    array-length v2, p6

    if-lt v2, p0, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/location/GnssStatus;

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[F)V

    return-object v0
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
    instance-of v1, p1, Landroid/location/GnssStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssStatus;

    iget v3, p0, Landroid/location/GnssStatus;->mSvCount:I

    iget v4, v1, Landroid/location/GnssStatus;->mSvCount:I

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    iget-object v4, v1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    iget-object v4, v1, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mElevations:[F

    iget-object v4, v1, Landroid/location/GnssStatus;->mElevations:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    iget-object v4, v1, Landroid/location/GnssStatus;->mAzimuths:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    iget-object v4, v1, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/location/GnssStatus;->mBasebandCn0DbHzs:[F

    iget-object v4, v1, Landroid/location/GnssStatus;->mBasebandCn0DbHzs:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v2

    :goto_51
    return v0
.end method

.method public getAzimuthDegrees(I)F
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    aget v0, v0, p1

    return v0
.end method

.method public getBasebandCn0DbHz(I)F
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mBasebandCn0DbHzs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getCarrierFrequencyHz(I)F
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    aget v0, v0, p1

    return v0
.end method

.method public getCn0DbHz(I)F
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    aget v0, v0, p1

    return v0
.end method

.method public getConstellationType(I)I
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getElevationDegrees(I)F
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mElevations:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSatelliteCount()I
    .registers 2

    iget v0, p0, Landroid/location/GnssStatus;->mSvCount:I

    return v0
.end method

.method public getSvid(I)I
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hasAlmanacData(I)Z
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasEphemerisData(I)Z
    .registers 4

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/GnssStatus;->mSvCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public usedInFix(I)Z
    .registers 3

    iget-object v0, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/GnssStatus;->mSvCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Landroid/location/GnssStatus;->mSvCount:I

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/location/GnssStatus;->mCn0DbHzs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/location/GnssStatus;->mElevations:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/location/GnssStatus;->mAzimuths:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/location/GnssStatus;->mCarrierFrequencies:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Landroid/location/GnssStatus;->mBasebandCn0DbHzs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_37
    return-void
.end method
