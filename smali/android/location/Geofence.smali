# classes2.dex

.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExpirationRealtimeMs:J

.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(DDFJ)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide v4, -0x3fa9800000000000L  # -90.0

    const-wide v6, 0x4056800000000000L  # 90.0

    const-string v8, "latitude"

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const-wide v11, -0x3f99800000000000L  # -180.0

    const-wide v13, 0x4066800000000000L  # 180.0

    const-string v15, "latitude"

    move-wide/from16 v9, p3

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_32

    move v2, v3

    goto :goto_33

    :cond_32
    move v2, v4

    :goto_33
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "invalid radius: %f"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/location/Geofence;->mLatitude:D

    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/location/Geofence;->mLongitude:D

    iput v1, v0, Landroid/location/Geofence;->mRadius:F

    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    return-void
.end method

.method public static createCircle(DDFJ)Landroid/location/Geofence;
    .registers 16

    new-instance v8, Landroid/location/Geofence;

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/location/Geofence;-><init>(DDFJ)V

    return-object v8
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
    instance-of v1, p1, Landroid/location/Geofence;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/Geofence;

    iget-wide v3, v1, Landroid/location/Geofence;->mLatitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_34

    iget-wide v3, v1, Landroid/location/Geofence;->mLongitude:D

    iget-wide v5, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_34

    iget v3, v1, Landroid/location/Geofence;->mRadius:F

    iget v4, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_34

    iget-wide v3, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    iget-wide v5, v1, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    return v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v0

    return v0
.end method

.method public isExpired(J)Z
    .registers 5

    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geofence[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_54

    invoke-virtual {p0}, Landroid/location/Geofence;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, " expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_4a
    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_54
    :goto_54
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/Geofence;->mExpirationRealtimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
