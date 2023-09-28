# classes2.dex

.class public final Landroid/location/LocationRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdasGnssBypass:Z

.field private mBypass:Z

.field private mDurationMillis:J

.field private mHiddenFromAppOps:Z

.field private mIntervalMillis:J

.field private mLowPower:Z

.field private mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mQuality:I

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmQuality(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmDurationMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdates(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateDistanceMeters(Landroid/location/LocationRequest;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdateDelayMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmHideFromAppOps(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmAdasGnssBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmLowPower(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmWorkSource(Landroid/location/LocationRequest;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    :cond_63
    return-void
.end method


# virtual methods
.method public build()Landroid/location/LocationRequest;
    .registers 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    const-string v2, "passive location requests must have an explicit minimum update interval"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v1, Landroid/location/LocationRequest;

    move-object v3, v1

    const/4 v4, 0x0

    iget-wide v13, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    move-wide v5, v13

    iget v7, v0, Landroid/location/LocationRequest$Builder;->mQuality:I

    const-wide v8, 0x7fffffffffffffffL

    iget-wide v10, v0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    iget v12, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    move-wide/from16 v24, v5

    iget-wide v4, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget v15, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    iget-wide v4, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    move-wide/from16 v16, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    move/from16 v18, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    move/from16 v19, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    move/from16 v20, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    move/from16 v21, v4

    new-instance v4, Landroid/os/WorkSource;

    move-object/from16 v22, v4

    iget-object v5, v0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    const/16 v23, 0x0

    move-wide/from16 v5, v24

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v23}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V

    return-object v1
.end method

.method public clearMinUpdateIntervalMillis()Landroid/location/LocationRequest$Builder;
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    return-object p0
.end method

.method public setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    return-object p0
.end method

.method public setDurationMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "durationMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    return-object p0
.end method

.method public setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    return-object p0
.end method

.method public setIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    return-object p0
.end method

.method public setLowPower(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    return-object p0
.end method

.method public setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "maxUpdateDelayMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    return-object p0
.end method

.method public setMaxUpdates(I)Landroid/location/LocationRequest$Builder;
    .registers 5

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const-string v2, "maxUpdates"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    return-object p0
.end method

.method public setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "minUpdateDistanceMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    return-object p0
.end method

.method public setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "minUpdateIntervalMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest$Builder;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x68

    if-eq p1, v2, :cond_11

    const/16 v2, 0x66

    if-eq p1, v2, :cond_11

    const/16 v2, 0x64

    if-ne p1, v2, :cond_f

    goto :goto_11

    :cond_f
    move v2, v0

    goto :goto_12

    :cond_11
    :goto_11
    move v2, v1

    :goto_12
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "quality must be a defined QUALITY constant, not %d"

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    return-object p0
.end method

.method public setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;
    .registers 4

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    const/16 v0, 0xcb

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    goto :goto_21

    :pswitch_13  #0x2
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    goto :goto_21

    :pswitch_18  #0x1
    const/16 v0, 0x64

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    goto :goto_21

    :cond_1d
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    :goto_21
    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_13  #00000002
    .end packed-switch
.end method

.method public setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method
