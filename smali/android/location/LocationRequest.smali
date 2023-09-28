# classes2.dex

.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationRequest$Builder;,
        Landroid/location/LocationRequest$Quality;
    }
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_CITY:I = 0x68
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCURACY_FINE:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPLICIT_MIN_UPDATE_INTERVAL:J = -0x1L

.field private static final IMPLICIT_MIN_UPDATE_INTERVAL_FACTOR:D = 0.16666666666666666

.field public static final LOW_POWER_EXCEPTIONS:J = 0xa11c3b7L

.field public static final PASSIVE_INTERVAL:J = 0x7fffffffffffffffL

.field public static final POWER_HIGH:I = 0xcb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_LOW:I = 0xc9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_NONE:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUALITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final QUALITY_HIGH_ACCURACY:I = 0x64

.field public static final QUALITY_LOW_POWER:I = 0x68


# instance fields
.field private final mAdasGnssBypass:Z

.field private mBypass:Z

.field private mDurationMillis:J

.field private mExpireAtRealtimeMillis:J

.field private mHideFromAppOps:Z

.field private mIntervalMillis:J

.field private mLowPower:Z

.field private final mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdasGnssBypass(Landroid/location/LocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBypass(Landroid/location/LocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mBypass:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDurationMillis(Landroid/location/LocationRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHideFromAppOps(Landroid/location/LocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIntervalMillis(Landroid/location/LocationRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLowPower(Landroid/location/LocationRequest;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxUpdateDelayMillis(Landroid/location/LocationRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxUpdates(Landroid/location/LocationRequest;)I
    .registers 1

    iget p0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinUpdateDistanceMeters(Landroid/location/LocationRequest;)F
    .registers 1

    iget p0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinUpdateIntervalMillis(Landroid/location/LocationRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmQuality(Landroid/location/LocationRequest;)I
    .registers 1

    iget p0, p0, Landroid/location/LocationRequest;->mQuality:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkSource(Landroid/location/LocationRequest;)Landroid/os/WorkSource;
    .registers 1

    iget-object p0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;)V
    .registers 37

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/location/LocationRequest;->mIntervalMillis:J

    move/from16 v4, p4

    iput v4, v0, Landroid/location/LocationRequest;->mQuality:I

    move-wide/from16 v5, p10

    iput-wide v5, v0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    move-wide/from16 v7, p5

    iput-wide v7, v0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    move-wide/from16 v9, p7

    iput-wide v9, v0, Landroid/location/LocationRequest;->mDurationMillis:J

    move/from16 v11, p9

    iput v11, v0, Landroid/location/LocationRequest;->mMaxUpdates:I

    move/from16 v12, p12

    iput v12, v0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mBypass:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/location/LocationRequest;->mLowPower:Z

    invoke-static/range {p19 .. p19}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/os/WorkSource;

    iput-object v1, v0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;)V

    return-void
.end method

.method public static create()Landroid/location/LocationRequest;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_22

    :cond_14
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_22

    const-wide p1, 0x7ffffffffffffffeL

    :cond_22
    :goto_22
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_28

    const/4 p3, 0x0

    :cond_28
    new-instance v1, Landroid/location/LocationRequest$Builder;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    invoke-virtual {v1, p0}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    if-eqz p4, :cond_3c

    goto :goto_3f

    :cond_3c
    const v0, 0x7fffffff

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_14

    const-wide/16 p1, 0x0

    goto :goto_22

    :cond_14
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_22

    const-wide p1, 0x7ffffffffffffffeL

    :cond_22
    :goto_22
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_28

    const/4 p3, 0x0

    :cond_28
    const-string v1, "passive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0xc8

    goto :goto_40

    :cond_33
    const-string v1, "gps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/16 v1, 0x64

    goto :goto_40

    :cond_3e
    const/16 v1, 0x66

    :goto_40
    new-instance v2, Landroid/location/LocationRequest$Builder;

    invoke-direct {v2, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    if-eqz p4, :cond_50

    goto :goto_53

    :cond_50
    const v0, 0x7fffffff

    :goto_53
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
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
    const/4 v1, 0x0

    if-eqz p1, :cond_83

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_83

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/location/LocationRequest;

    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_81

    iget v3, p0, Landroid/location/LocationRequest;->mQuality:I

    iget v4, v2, Landroid/location/LocationRequest;->mQuality:I

    if-ne v3, v4, :cond_81

    iget-wide v3, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_81

    iget-wide v3, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_81

    iget v3, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    iget v4, v2, Landroid/location/LocationRequest;->mMaxUpdates:I

    if-ne v3, v4, :cond_81

    iget-wide v3, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_81

    iget v3, v2, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    iget v4, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_81

    iget-wide v3, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    iget-wide v5, v2, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_81

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-ne v3, v4, :cond_81

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-ne v3, v4, :cond_81

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mBypass:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mBypass:Z

    if-ne v3, v4, :cond_81

    iget-boolean v3, p0, Landroid/location/LocationRequest;->mLowPower:Z

    iget-boolean v4, v2, Landroid/location/LocationRequest;->mLowPower:Z

    if-ne v3, v4, :cond_81

    iget-object v3, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget-object v4, v2, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    iget-object v3, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, v2, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    goto :goto_82

    :cond_81
    move v0, v1

    :goto_82
    return v0

    :cond_83
    :goto_83
    return v1
.end method

.method public getDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    return-wide v0
.end method

.method public getExpirationRealtimeMs(J)J
    .registers 7

    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    const-wide v2, 0x7fffffffffffffffL

    sub-long/2addr v2, p1

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_13

    :cond_12
    add-long/2addr v0, p1

    :goto_13
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getExpireAt()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    return-wide v0
.end method

.method public getExpireIn()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastestInterval()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    return v0
.end method

.method public getInterval()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    return-wide v0
.end method

.method public getMaxUpdateDelayMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    return-wide v0
.end method

.method public getMaxUpdates()I
    .registers 2

    iget v0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    return v0
.end method

.method public getMinUpdateDistanceMeters()F
    .registers 2

    iget v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    return v0
.end method

.method public getMinUpdateIntervalMillis()J
    .registers 5

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    long-to-double v0, v0

    const-wide v2, 0x3fc5555555555555L  # 0.16666666666666666

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_13
    iget-wide v2, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumUpdates()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "fused"

    :goto_7
    return-object v0
.end method

.method public getQuality()I
    .registers 2

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAdasGnssBypass()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    return v0
.end method

.method public isBypass()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isHiddenFromAppOps()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public isLocationSettingsIgnored()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    return v0
.end method

.method public isLowPower()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    return v0
.end method

.method public isLowPowerMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v0

    return v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-wide p1, 0x7ffffffffffffffeL

    :cond_1a
    iput-wide p1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_24

    iput-wide p1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    :cond_24
    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mBypass:Z

    return-object p0
.end method

.method public setLowPowerMode(Z)Landroid/location/LocationRequest;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLowPower:Z

    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-lez p1, :cond_5

    iput p1, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sparse-switch p1, :sswitch_data_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    goto :goto_33

    :sswitch_24
    const/16 v0, 0x68

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    goto :goto_33

    :sswitch_29
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    goto :goto_33

    :sswitch_2e
    const/16 v0, 0x64

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    nop

    :goto_33
    return-object p0

    :sswitch_data_34
    .sparse-switch
        0x64 -> :sswitch_2e
        0x66 -> :sswitch_29
        0x68 -> :sswitch_24
        0xc8 -> :sswitch_1c
        0xc9 -> :sswitch_24
        0xcb -> :sswitch_2e
    .end sparse-switch
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "minDisplacementMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_45

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    packed-switch v1, :pswitch_data_106

    :pswitch_31  #0x65, 0x67
    goto :goto_44

    :pswitch_32  #0x68
    const-string v1, " LOW_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :pswitch_38  #0x66
    const-string v1, " BALANCED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :pswitch_3e  #0x64
    const-string v1, " HIGH_ACCURACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_44
    goto :goto_4a

    :cond_45
    const-string v1, "PASSIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5f

    const-string v1, ", expireAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-wide v1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6f

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_6f
    iget v1, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_81

    const-string v1, ", maxUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_81
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_99

    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_99

    const-string v1, ", minUpdateInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_99
    iget v1, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_ad

    const-string v1, ", minUpdateDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_ad
    iget-wide v1, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iget-wide v3, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_c2

    const-string v1, ", maxUpdateDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_c2
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLowPower:Z

    if-eqz v1, :cond_cb

    const-string v1, ", lowPower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cb
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-eqz v1, :cond_d4

    const-string v1, ", hiddenFromAppOps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d4
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    if-eqz v1, :cond_dd

    const-string v1, ", adasGnssBypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_dd
    iget-boolean v1, p0, Landroid/location/LocationRequest;->mBypass:Z

    if-eqz v1, :cond_e6

    const-string v1, ", bypass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e6
    iget-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fb

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_fb
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_106
    .packed-switch 0x64
        :pswitch_3e  #00000064
        :pswitch_31  #00000065
        :pswitch_38  #00000066
        :pswitch_31  #00000067
        :pswitch_32  #00000068
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAtRealtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mMaxUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMinUpdateIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mMinUpdateDistanceMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mMaxUpdateDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAdasGnssBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
