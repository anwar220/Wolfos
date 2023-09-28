# classes2.dex

.class public final Landroid/location/GnssExcessPathInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssExcessPathInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_ATTENUATION_MASK:I = 0x8

.field private static final HAS_EXCESS_PATH_LENGTH_MASK:I = 0x1

.field private static final HAS_EXCESS_PATH_LENGTH_UNC_MASK:I = 0x2

.field private static final HAS_REFLECTING_PLANE_MASK:I = 0x4


# instance fields
.field private final mAttenuationDb:F

.field private final mExcessPathLengthMeters:F

.field private final mExcessPathLengthUncertaintyMeters:F

.field private final mFlags:I

.field private final mReflectingPlane:Landroid/location/GnssReflectingPlane;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssExcessPathInfo$1;

    invoke-direct {v0}, Landroid/location/GnssExcessPathInfo$1;-><init>()V

    sput-object v0, Landroid/location/GnssExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IFFLandroid/location/GnssReflectingPlane;F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    iput p2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    iput p3, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    iput-object p4, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iput p5, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    return-void
.end method

.method synthetic constructor <init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/location/GnssExcessPathInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    move-object v0, p1

    check-cast v0, Landroid/location/GnssExcessPathInfo;

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    if-ne v2, v3, :cond_50

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    :cond_1e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    :cond_2e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    iget-object v3, v0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_3e
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    iget v3, v0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_50

    :cond_4e
    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    nop

    :goto_51
    return v1

    :cond_52
    return v1
.end method

.method public getAttenuationDb()F
    .registers 3

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttenuationDb() is not supported when hasAttenuation() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExcessPathLengthMeters()F
    .registers 3

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getExcessPathLengthMeters() is not supported when hasExcessPathLength() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExcessPathLengthUncertaintyMeters()F
    .registers 3

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getExcessPathLengthUncertaintyMeters() is not supported when hasExcessPathLengthUncertainty() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    return v0
.end method

.method public getReflectingPlane()Landroid/location/GnssReflectingPlane;
    .registers 3

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getReflectingPlane() is not supported when hasReflectingPlane() is false"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttenuation()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasExcessPathLength()Z
    .registers 3

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasExcessPathLengthUncertainty()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasReflectingPlane()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssExcessPathInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, " ExcessPathLengthMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, " ExcessPathLengthUncertaintyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, " ReflectingPlane="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, " AttenuationDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_10
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_1b
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasReflectingPlane()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/location/GnssExcessPathInfo;->mReflectingPlane:Landroid/location/GnssReflectingPlane;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssReflectingPlane;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_26
    invoke-virtual {p0}, Landroid/location/GnssExcessPathInfo;->hasAttenuation()Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p0, Landroid/location/GnssExcessPathInfo;->mAttenuationDb:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_31
    return-void
.end method
