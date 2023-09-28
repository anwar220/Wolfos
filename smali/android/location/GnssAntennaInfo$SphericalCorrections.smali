# classes2.dex

.class public final Landroid/location/GnssAntennaInfo$SphericalCorrections;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SphericalCorrections"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAntennaInfo$SphericalCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCorrectionUncertainties:[[D

.field private final mCorrections:[[D

.field private final mNumColumns:I

.field private final mNumRows:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssAntennaInfo$SphericalCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    const-class v0, D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v6, 0x0

    aput v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v3, v3, [I

    aput v2, v3, v5

    aput v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v1, :cond_44

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v2, :cond_41

    aget-object v6, v4, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    aget-object v6, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_44
    iput v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    iput v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    iput-object v4, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iput-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/location/GnssAntennaInfo$SphericalCorrections-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssAntennaInfo$SphericalCorrections;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([[D[[D)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_37

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_37

    array-length v0, p1

    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    const/4 v0, 0x0

    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_32

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ne v1, v2, :cond_2a

    aget-object v1, p2, v0

    array-length v1, v1

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x2

    if-lt v2, v1, :cond_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "correction and uncertainty arrays must all  have the same (greater than 2) number of columns"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    iput-object p1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iput-object p2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "correction and uncertainty arrays must have the same (non-zero) dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    instance-of v1, p1, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    iget v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    iget v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    iget v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    iget-object v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    iget-object v4, v1, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    return v0
.end method

.method public getCorrectionUncertaintiesArray()[[D
    .registers 2

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    return-object v0
.end method

.method public getCorrectionsArray()[[D
    .registers 2

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    return-object v0
.end method

.method public getDeltaPhi()D
    .registers 5

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x4066800000000000L  # 180.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getDeltaTheta()D
    .registers 5

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    int-to-double v0, v0

    const-wide v2, 0x4076800000000000L  # 360.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphericalCorrections{Corrections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CorrectionUncertainties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DeltaTheta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/GnssAntennaInfo$SphericalCorrections;->getDeltaTheta()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DeltaPhi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/GnssAntennaInfo$SphericalCorrections;->getDeltaPhi()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumRows:I

    if-ge v0, v1, :cond_2c

    const/4 v1, 0x0

    :goto_10
    iget v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mNumColumns:I

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrections:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v2, p0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->mCorrectionUncertainties:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2c
    return-void
.end method
