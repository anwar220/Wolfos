# classes3.dex

.class public final Landroid/telephony/CallQuality;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallQuality$Builder;,
        Landroid/telephony/CallQuality$CallQualityLevel;
    }
.end annotation


# static fields
.field public static final CALL_QUALITY_BAD:I = 0x4

.field public static final CALL_QUALITY_EXCELLENT:I = 0x0

.field public static final CALL_QUALITY_FAIR:I = 0x2

.field public static final CALL_QUALITY_GOOD:I = 0x1

.field public static final CALL_QUALITY_NOT_AVAILABLE:I = 0x5

.field public static final CALL_QUALITY_POOR:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAverageRelativeJitter:I

.field private mAverageRoundTripTime:I

.field private mCallDuration:I

.field private mCodecType:I

.field private mDownlinkCallQualityLevel:I

.field private mMaxPlayoutDelayMillis:J

.field private mMaxRelativeJitter:I

.field private mMinPlayoutDelayMillis:J

.field private mNumDroppedRtpPackets:I

.field private mNumNoDataFrames:I

.field private mNumRtpDuplicatePackets:I

.field private mNumRtpPacketsNotReceived:I

.field private mNumRtpPacketsReceived:I

.field private mNumRtpPacketsTransmitted:I

.field private mNumRtpPacketsTransmittedLost:I

.field private mNumRtpSidPacketsReceived:I

.field private mNumVoiceFrames:I

.field private mRtpInactivityDetected:Z

.field private mRxSilenceDetected:Z

.field private mTxSilenceDetected:Z

.field private mUplinkCallQualityLevel:I


# direct methods
.method static bridge synthetic -$$Nest$fputmAverageRelativeJitter(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAverageRoundTripTime(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallDuration(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCodecType(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDownlinkCallQualityLevel(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxRelativeJitter(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMinPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumDroppedRtpPackets(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumNoDataFrames(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpDuplicatePackets(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpPacketsNotReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpPacketsReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpPacketsTransmitted(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpPacketsTransmittedLost(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumRtpSidPacketsReceived(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumVoiceFrames(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRtpInactivityDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRxSilenceDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTxSilenceDetected(Landroid/telephony/CallQuality;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUplinkCallQualityLevel(Landroid/telephony/CallQuality;I)V
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CallQuality$1;

    invoke-direct {v0}, Landroid/telephony/CallQuality$1;-><init>()V

    sput-object v0, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .registers 27

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Landroid/telephony/CallQuality;-><init>(IIIIIIIIIIIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIZZZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    iput p2, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    iput p3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    iput p4, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    iput p5, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    iput p6, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    iput p7, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    iput p8, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    iput p9, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    iput p10, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    iput p11, p0, Landroid/telephony/CallQuality;->mCodecType:I

    iput-boolean p12, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    iput-boolean p13, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    iput-boolean p14, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

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

    const/4 v0, 0x0

    if-eqz p1, :cond_9e

    instance-of v1, p1, Landroid/telephony/CallQuality;

    if-eqz v1, :cond_9e

    invoke-virtual {p0}, Landroid/telephony/CallQuality;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_13

    goto/16 :goto_9e

    :cond_13
    const/4 v1, 0x1

    if-ne p0, p1, :cond_17

    return v1

    :cond_17
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallQuality;

    iget v3, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    iget v4, v2, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCallDuration:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    iget v4, v2, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    iget v4, v2, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mCodecType:I

    iget v4, v2, Landroid/telephony/CallQuality;->mCodecType:I

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    if-ne v3, v4, :cond_9d

    iget-boolean v3, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    iget-boolean v4, v2, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    if-ne v3, v4, :cond_9d

    iget-wide v3, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    iget-wide v5, v2, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget-wide v3, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    iget-wide v5, v2, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    if-ne v3, v4, :cond_9d

    iget v3, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    iget v4, v2, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    if-ne v3, v4, :cond_9d

    move v0, v1

    :cond_9d
    return v0

    :cond_9e
    :goto_9e
    return v0
.end method

.method public getAverageRelativeJitter()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    return v0
.end method

.method public getAverageRoundTripTime()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    return v0
.end method

.method public getCallDuration()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    return v0
.end method

.method public getCodecType()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    return v0
.end method

.method public getDownlinkCallQualityLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    return v0
.end method

.method public getMaxPlayoutDelayMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    return-wide v0
.end method

.method public getMaxRelativeJitter()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    return v0
.end method

.method public getMinPlayoutDelayMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    return-wide v0
.end method

.method public getNumDroppedRtpPackets()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    return v0
.end method

.method public getNumNoDataFrames()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    return v0
.end method

.method public getNumRtpDuplicatePackets()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    return v0
.end method

.method public getNumRtpPacketsNotReceived()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    return v0
.end method

.method public getNumRtpPacketsReceived()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    return v0
.end method

.method public getNumRtpPacketsTransmitted()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    return v0
.end method

.method public getNumRtpPacketsTransmittedLost()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    return v0
.end method

.method public getNumRtpSidPacketsReceived()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    return v0
.end method

.method public getNumVoiceFrames()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    return v0
.end method

.method public getUplinkCallQualityLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIncomingSilenceDetectedAtCallSetup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    return v0
.end method

.method public isOutgoingSilenceDetectedAtCallSetup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    return v0
.end method

.method public isRtpInactivityDetected()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallQuality: {downlinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uplinkCallQualityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsTransmitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsTransmittedLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpPacketsNotReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " averageRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxRelativeJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " averageRoundTripTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rtpInactivityDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSilenceDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numVoiceFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numNoDataFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numDroppedRtpPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minPlayoutDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxPlayoutDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpSidPacketsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRtpDuplicatePackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/telephony/CallQuality;->mDownlinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mUplinkCallQualityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mCallDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmitted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsTransmittedLost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpPacketsNotReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mMaxRelativeJitter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mAverageRoundTripTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRtpInactivityDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mRxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/CallQuality;->mTxSilenceDetected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumVoiceFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumNoDataFrames:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumDroppedRtpPackets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMinPlayoutDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/CallQuality;->mMaxPlayoutDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpSidPacketsReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallQuality;->mNumRtpDuplicatePackets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
