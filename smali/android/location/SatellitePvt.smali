# classes2.dex

.class public final Landroid/location/SatellitePvt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/SatellitePvt$Builder;,
        Landroid/location/SatellitePvt$ClockInfo;,
        Landroid/location/SatellitePvt$VelocityEcef;,
        Landroid/location/SatellitePvt$PositionEcef;,
        Landroid/location/SatellitePvt$EphemerisSource;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt;",
            ">;"
        }
    .end annotation
.end field

.field public static final EPHEMERIS_SOURCE_DEMODULATED:I = 0x0

.field public static final EPHEMERIS_SOURCE_OTHER:I = 0x3

.field public static final EPHEMERIS_SOURCE_SERVER_LONG_TERM:I = 0x2

.field public static final EPHEMERIS_SOURCE_SERVER_NORMAL:I = 0x1

.field private static final HAS_IONO:I = 0x2

.field private static final HAS_ISSUE_OF_DATA_CLOCK:I = 0x8

.field private static final HAS_ISSUE_OF_DATA_EPHEMERIS:I = 0x10

.field private static final HAS_POSITION_VELOCITY_CLOCK_INFO:I = 0x1

.field private static final HAS_TIME_OF_CLOCK:I = 0x20

.field private static final HAS_TIME_OF_EPHEMERIS:I = 0x40

.field private static final HAS_TROPO:I = 0x4


# instance fields
.field private final mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

.field private final mEphemerisSource:I

.field private final mFlags:I

.field private final mIonoDelayMeters:D

.field private final mIssueOfDataClock:I

.field private final mIssueOfDataEphemeris:I

.field private final mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

.field private final mTimeOfClockSeconds:J

.field private final mTimeOfEphemerisSeconds:J

.field private final mTropoDelayMeters:D

.field private final mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/SatellitePvt$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIII)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/SatellitePvt;->mFlags:I

    iput-object p2, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    iput-object p3, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    iput-object p4, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    iput-wide p5, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    iput-wide p7, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    iput-wide p9, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    iput-wide p11, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    iput p13, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    iput p14, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    iput p15, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIII)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClockInfo()Landroid/location/SatellitePvt$ClockInfo;
    .registers 2

    iget-object v0, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    return-object v0
.end method

.method public getEphemerisSource()I
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    return v0
.end method

.method public getIonoDelayMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    return-wide v0
.end method

.method public getIssueOfDataClock()I
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    return v0
.end method

.method public getIssueOfDataEphemeris()I
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    return v0
.end method

.method public getPositionEcef()Landroid/location/SatellitePvt$PositionEcef;
    .registers 2

    iget-object v0, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    return-object v0
.end method

.method public getTimeOfClockSeconds()J
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    return-wide v0
.end method

.method public getTimeOfEphemerisSeconds()J
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    return-wide v0
.end method

.method public getTropoDelayMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    return-wide v0
.end method

.method public getVelocityEcef()Landroid/location/SatellitePvt$VelocityEcef;
    .registers 2

    iget-object v0, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    return-object v0
.end method

.method public hasIono()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasIssueOfDataClock()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasIssueOfDataEphemeris()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPositionVelocityClockInfo()Z
    .registers 3

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasTimeOfClockSeconds()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasTimeOfEphemerisSeconds()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasTropo()Z
    .registers 2

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatellitePvt[Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PositionEcef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VelocityEcef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ClockInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IonoDelayMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TropoDelayMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeOfClockSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeOfEphemerisSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IssueOfDataClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IssueOfDataEphemeris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EphemerisSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/SatellitePvt;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/SatellitePvt;->mPositionEcef:Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/location/SatellitePvt;->mVelocityEcef:Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/location/SatellitePvt;->mClockInfo:Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mIonoDelayMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTropoDelayMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfClockSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/SatellitePvt;->mTimeOfEphemerisSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataClock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/SatellitePvt;->mIssueOfDataEphemeris:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/SatellitePvt;->mEphemerisSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
