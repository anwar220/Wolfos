# classes2.dex

.class public final Landroid/location/GnssReflectingPlane;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssReflectingPlane$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssReflectingPlane;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAltitudeMeters:D

.field private final mAzimuthDegrees:D

.field private final mLatitudeDegrees:D

.field private final mLongitudeDegrees:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssReflectingPlane$1;

    invoke-direct {v0}, Landroid/location/GnssReflectingPlane$1;-><init>()V

    sput-object v0, Landroid/location/GnssReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/location/GnssReflectingPlane$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmAltitudeMeters(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmAzimuthDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssReflectingPlane$Builder;Landroid/location/GnssReflectingPlane-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssReflectingPlane;-><init>(Landroid/location/GnssReflectingPlane$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/location/GnssReflectingPlane;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    move-object v0, p1

    check-cast v0, Landroid/location/GnssReflectingPlane;

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_32

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_32

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_32

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    :goto_33
    return v1

    :cond_34
    return v1
.end method

.method public getAltitudeMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    return-wide v0
.end method

.method public getAzimuthDegrees()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    return-wide v0
.end method

.method public getLatitudeDegrees()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public getLongitudeDegrees()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReflectingPlane["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " LatitudeDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " LongitudeDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " AltitudeMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " AzimuthDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
