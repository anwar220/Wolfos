# classes3.dex

.class public final Landroid/telephony/CallQuality$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/CallQuality;
    .registers 4

    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0}, Landroid/telephony/CallQuality;-><init>()V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmDownlinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmUplinkCallQualityLevel(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCallDuration(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmitted(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsTransmittedLost(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpPacketsNotReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRelativeJitter(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxRelativeJitter(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmAverageRoundTripTime(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmCodecType(Landroid/telephony/CallQuality;I)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRtpInactivityDetected(Landroid/telephony/CallQuality;Z)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmTxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    iget-boolean v1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmRxSilenceDetected(Landroid/telephony/CallQuality;Z)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumVoiceFrames(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumNoDataFrames(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumDroppedRtpPackets(Landroid/telephony/CallQuality;I)V

    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMinPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    iget-wide v1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    invoke-static {v0, v1, v2}, Landroid/telephony/CallQuality;->-$$Nest$fputmMaxPlayoutDelayMillis(Landroid/telephony/CallQuality;J)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpSidPacketsReceived(Landroid/telephony/CallQuality;I)V

    iget v1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    invoke-static {v0, v1}, Landroid/telephony/CallQuality;->-$$Nest$fputmNumRtpDuplicatePackets(Landroid/telephony/CallQuality;I)V

    return-object v0
.end method

.method public setAverageRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRelativeJitter:I

    return-object p0
.end method

.method public setAverageRoundTripTimeMillis(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mAverageRoundTripTime:I

    return-object p0
.end method

.method public setCallDurationMillis(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCallDuration:I

    return-object p0
.end method

.method public setCodecType(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mCodecType:I

    return-object p0
.end method

.method public setDownlinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mDownlinkCallQualityLevel:I

    return-object p0
.end method

.method public setIncomingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRxSilenceDetected:Z

    return-object p0
.end method

.method public setMaxPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxPlayoutDelayMillis:J

    return-object p0
.end method

.method public setMaxRelativeJitter(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mMaxRelativeJitter:I

    return-object p0
.end method

.method public setMinPlayoutDelayMillis(J)Landroid/telephony/CallQuality$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telephony/CallQuality$Builder;->mMinPlayoutDelayMillis:J

    return-object p0
.end method

.method public setNumDroppedRtpPackets(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumDroppedRtpPackets:I

    return-object p0
.end method

.method public setNumNoDataFrames(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumNoDataFrames:I

    return-object p0
.end method

.method public setNumRtpDuplicatePackets(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpDuplicatePackets:I

    return-object p0
.end method

.method public setNumRtpPacketsNotReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsNotReceived:I

    return-object p0
.end method

.method public setNumRtpPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsReceived:I

    return-object p0
.end method

.method public setNumRtpPacketsTransmitted(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmitted:I

    return-object p0
.end method

.method public setNumRtpPacketsTransmittedLost(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpPacketsTransmittedLost:I

    return-object p0
.end method

.method public setNumRtpSidPacketsReceived(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumRtpSidPacketsReceived:I

    return-object p0
.end method

.method public setNumVoiceFrames(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mNumVoiceFrames:I

    return-object p0
.end method

.method public setOutgoingSilenceDetectedAtCallSetup(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mTxSilenceDetected:Z

    return-object p0
.end method

.method public setRtpInactivityDetected(Z)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/CallQuality$Builder;->mRtpInactivityDetected:Z

    return-object p0
.end method

.method public setUplinkCallQualityLevel(I)Landroid/telephony/CallQuality$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/CallQuality$Builder;->mUplinkCallQualityLevel:I

    return-object p0
.end method
