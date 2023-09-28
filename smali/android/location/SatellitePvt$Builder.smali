# classes2.dex

.class public final Landroid/location/SatellitePvt$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

.field private mEphemerisSource:I

.field private mFlags:I

.field private mIonoDelayMeters:D

.field private mIssueOfDataClock:I

.field private mIssueOfDataEphemeris:I

.field private mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

.field private mTimeOfClockSeconds:J

.field private mTimeOfEphemerisSeconds:J

.field private mTropoDelayMeters:D

.field private mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    return-void
.end method

.method private updateFlags()V
    .registers 2

    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    :cond_13
    return-void
.end method


# virtual methods
.method public build()Landroid/location/SatellitePvt;
    .registers 21

    move-object/from16 v0, p0

    new-instance v18, Landroid/location/SatellitePvt;

    move-object/from16 v1, v18

    iget v2, v0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    iget-object v3, v0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    iget-object v4, v0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    iget-object v5, v0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    iget-wide v6, v0, Landroid/location/SatellitePvt$Builder;->mIonoDelayMeters:D

    iget-wide v8, v0, Landroid/location/SatellitePvt$Builder;->mTropoDelayMeters:D

    iget-wide v10, v0, Landroid/location/SatellitePvt$Builder;->mTimeOfClockSeconds:J

    iget-wide v12, v0, Landroid/location/SatellitePvt$Builder;->mTimeOfEphemerisSeconds:J

    iget v14, v0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataClock:I

    iget v15, v0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataEphemeris:I

    move-object/from16 v19, v1

    iget v1, v0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    move/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V

    return-object v18
.end method

.method public setClockInfo(Landroid/location/SatellitePvt$ClockInfo;)Landroid/location/SatellitePvt$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    return-object p0
.end method

.method public setEphemerisSource(I)Landroid/location/SatellitePvt$Builder;
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mEphemerisSource:I

    return-object p0
.end method

.method public setIonoDelayMeters(D)Landroid/location/SatellitePvt$Builder;
    .registers 4

    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mIonoDelayMeters:D

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setIssueOfDataClock(I)Landroid/location/SatellitePvt$Builder;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const-string v2, "issueOfDataClock"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataClock:I

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setIssueOfDataEphemeris(I)Landroid/location/SatellitePvt$Builder;
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const-string v2, "issueOfDataEphemeris"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/location/SatellitePvt$Builder;->mIssueOfDataEphemeris:I

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setPositionEcef(Landroid/location/SatellitePvt$PositionEcef;)Landroid/location/SatellitePvt$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    return-object p0
.end method

.method public setTimeOfClockSeconds(J)Landroid/location/SatellitePvt$Builder;
    .registers 4

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTimeOfClockSeconds:J

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setTimeOfEphemerisSeconds(J)Landroid/location/SatellitePvt$Builder;
    .registers 4

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTimeOfEphemerisSeconds:J

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setTropoDelayMeters(D)Landroid/location/SatellitePvt$Builder;
    .registers 4

    iput-wide p1, p0, Landroid/location/SatellitePvt$Builder;->mTropoDelayMeters:D

    iget v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput v0, p0, Landroid/location/SatellitePvt$Builder;->mFlags:I

    return-object p0
.end method

.method public setVelocityEcef(Landroid/location/SatellitePvt$VelocityEcef;)Landroid/location/SatellitePvt$Builder;
    .registers 2

    iput-object p1, p0, Landroid/location/SatellitePvt$Builder;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    invoke-direct {p0}, Landroid/location/SatellitePvt$Builder;->updateFlags()V

    return-object p0
.end method
