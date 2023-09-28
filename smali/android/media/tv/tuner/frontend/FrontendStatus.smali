# classes2.dex

.class public Landroid/media/tv/tuner/frontend/FrontendStatus;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendRollOff;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendGuardInterval;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendTransmissionMode;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendBandwidth;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendInterleaveMode;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendModulation;,
        Landroid/media/tv/tuner/frontend/FrontendStatus$FrontendStatusType;
    }
.end annotation


# static fields
.field public static final FRONTEND_STATUS_TYPE_AGC:I = 0xe

.field public static final FRONTEND_STATUS_TYPE_ATSC3_ALL_PLP_INFO:I = 0x29

.field public static final FRONTEND_STATUS_TYPE_ATSC3_PLP_INFO:I = 0x15

.field public static final FRONTEND_STATUS_TYPE_BANDWIDTH:I = 0x19

.field public static final FRONTEND_STATUS_TYPE_BER:I = 0x2

.field public static final FRONTEND_STATUS_TYPE_BERS:I = 0x17

.field public static final FRONTEND_STATUS_TYPE_CODERATES:I = 0x18

.field public static final FRONTEND_STATUS_TYPE_DEMOD_LOCK:I = 0x0

.field public static final FRONTEND_STATUS_TYPE_DVBT_CELL_IDS:I = 0x28

.field public static final FRONTEND_STATUS_TYPE_EWBS:I = 0xd

.field public static final FRONTEND_STATUS_TYPE_FEC:I = 0x8

.field public static final FRONTEND_STATUS_TYPE_FREQ_OFFSET:I = 0x12

.field public static final FRONTEND_STATUS_TYPE_GUARD_INTERVAL:I = 0x1a

.field public static final FRONTEND_STATUS_TYPE_HIERARCHY:I = 0x13

.field public static final FRONTEND_STATUS_TYPE_INTERLEAVINGS:I = 0x1e

.field public static final FRONTEND_STATUS_TYPE_ISDBT_MODE:I = 0x25

.field public static final FRONTEND_STATUS_TYPE_ISDBT_PARTIAL_RECEPTION_FLAG:I = 0x26

.field public static final FRONTEND_STATUS_TYPE_ISDBT_SEGMENTS:I = 0x1f

.field public static final FRONTEND_STATUS_TYPE_IS_LINEAR:I = 0x23

.field public static final FRONTEND_STATUS_TYPE_IS_MISO_ENABLED:I = 0x22

.field public static final FRONTEND_STATUS_TYPE_IS_SHORT_FRAMES_ENABLED:I = 0x24

.field public static final FRONTEND_STATUS_TYPE_LAYER_ERROR:I = 0x10

.field public static final FRONTEND_STATUS_TYPE_LNA:I = 0xf

.field public static final FRONTEND_STATUS_TYPE_LNB_VOLTAGE:I = 0xb

.field public static final FRONTEND_STATUS_TYPE_MER:I = 0x11

.field public static final FRONTEND_STATUS_TYPE_MODULATION:I = 0x9

.field public static final FRONTEND_STATUS_TYPE_MODULATIONS_EXT:I = 0x16

.field public static final FRONTEND_STATUS_TYPE_PER:I = 0x3

.field public static final FRONTEND_STATUS_TYPE_PLP_ID:I = 0xc

.field public static final FRONTEND_STATUS_TYPE_PRE_BER:I = 0x4

.field public static final FRONTEND_STATUS_TYPE_RF_LOCK:I = 0x14

.field public static final FRONTEND_STATUS_TYPE_ROLL_OFF:I = 0x21

.field public static final FRONTEND_STATUS_TYPE_SIGNAL_QUALITY:I = 0x5

.field public static final FRONTEND_STATUS_TYPE_SIGNAL_STRENGTH:I = 0x6

.field public static final FRONTEND_STATUS_TYPE_SNR:I = 0x1

.field public static final FRONTEND_STATUS_TYPE_SPECTRAL:I = 0xa

.field public static final FRONTEND_STATUS_TYPE_STREAM_IDS:I = 0x27

.field public static final FRONTEND_STATUS_TYPE_SYMBOL_RATE:I = 0x7

.field public static final FRONTEND_STATUS_TYPE_T2_SYSTEM_ID:I = 0x1d

.field public static final FRONTEND_STATUS_TYPE_TRANSMISSION_MODE:I = 0x1b

.field public static final FRONTEND_STATUS_TYPE_TS_DATA_RATES:I = 0x20

.field public static final FRONTEND_STATUS_TYPE_UEC:I = 0x1c


# instance fields
.field private mAgc:Ljava/lang/Integer;

.field private mAllPlpInfo:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

.field private mBandwidth:Ljava/lang/Integer;

.field private mBer:Ljava/lang/Integer;

.field private mBers:[I

.field private mCodeRates:[I

.field private mDvbtCellIds:[I

.field private mFreqOffset:Ljava/lang/Long;

.field private mGuardInterval:Ljava/lang/Integer;

.field private mHierarchy:Ljava/lang/Integer;

.field private mInnerFec:Ljava/lang/Long;

.field private mInterleaving:[I

.field private mInversion:Ljava/lang/Integer;

.field private mIsDemodLocked:Ljava/lang/Boolean;

.field private mIsEwbs:Ljava/lang/Boolean;

.field private mIsLayerErrors:[Z

.field private mIsLinear:Ljava/lang/Boolean;

.field private mIsLnaOn:Ljava/lang/Boolean;

.field private mIsMisoEnabled:Ljava/lang/Boolean;

.field private mIsRfLocked:Ljava/lang/Boolean;

.field private mIsShortFrames:Ljava/lang/Boolean;

.field private mIsdbtMode:Ljava/lang/Integer;

.field private mIsdbtPartialReceptionFlag:Ljava/lang/Integer;

.field private mIsdbtSegment:[I

.field private mLnbVoltage:Ljava/lang/Integer;

.field private mMer:Ljava/lang/Integer;

.field private mModulation:Ljava/lang/Integer;

.field private mModulationsExt:[I

.field private mPer:Ljava/lang/Integer;

.field private mPerBer:Ljava/lang/Integer;

.field private mPlpId:Ljava/lang/Integer;

.field private mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

.field private mRollOff:Ljava/lang/Integer;

.field private mSignalQuality:Ljava/lang/Integer;

.field private mSignalStrength:Ljava/lang/Integer;

.field private mSnr:Ljava/lang/Integer;

.field private mStreamIds:[I

.field private mSymbolRate:Ljava/lang/Integer;

.field private mSystemId:Ljava/lang/Integer;

.field private mTransmissionMode:Ljava/lang/Integer;

.field private mTsDataRate:[I

.field private mUec:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgc()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAgc:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Agc status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllAtsc3PlpInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x20000

    const-string v1, "Atsc3PlpInfo all status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mAllPlpInfo:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    if-nez v0, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Atsc3PlpInfo all status is empty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAtsc3PlpTuningInfo()[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpInfo:[Landroid/media/tv/tuner/frontend/FrontendStatus$Atsc3PlpTuningInfo;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Atsc3PlpTuningInfo status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBandwidth()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getBandwidth status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBandwidth:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBer()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ber status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBers()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getBers status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mBers:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bers status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCodeRates()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getCodeRates status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mCodeRates:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CodeRates status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDvbtCellIds()[I
    .registers 3

    const/high16 v0, 0x20000

    const-string v1, "dvbt cell ids status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mDvbtCellIds:[I

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dvbt cell ids are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedModulations()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getExtendedModulations status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulationsExt:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedModulations status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFreqOffset()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendStatus;->getFreqOffsetLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFreqOffsetLong()J
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mFreqOffset:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FreqOffset status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGuardInterval()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getGuardInterval status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mGuardInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GuardInterval status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHierarchy()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mHierarchy:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchy status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInnerFec()J
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInnerFec:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InnerFec status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInterleaving()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getInterleaving status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInterleaving:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interleaving status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIsdbtMode()I
    .registers 3

    const/high16 v0, 0x20000

    const-string v1, "IsdbtMode status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtMode:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtMode status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIsdbtPartialReceptionFlag()I
    .registers 3

    const/high16 v0, 0x20000

    const-string v1, "IsdbtPartialReceptionFlag status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtPartialReceptionFlag:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtPartialReceptionFlag status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIsdbtSegment()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getIsdbtSegment status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsdbtSegment:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IsdbtSegment status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayerErrors()[Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLayerErrors:[Z

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayerErrors status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLnbVoltage()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mLnbVoltage:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LnbVoltage status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMer()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mMer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mer status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModulation()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mModulation:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Modulation status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPer()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Per status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPerBer()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPerBer:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PerBer status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlpId()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mPlpId:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlpId status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRollOff()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getRollOff status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mRollOff:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RollOff status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignalQuality()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SignalQuality status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignalStrength()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSignalStrength:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SignalStrength status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSnr()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSnr:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snr status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpectralInversion()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mInversion:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpectralInversion status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamIds()[I
    .registers 3

    const/high16 v0, 0x20000

    const-string v1, "stream ids status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mStreamIds:[I

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream ids are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSymbolRate()I
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSymbolRate:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SymbolRate status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSystemId()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getSystemId status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mSystemId:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SystemId status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransmissionMode()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getTransmissionMode status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTransmissionMode:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TransmissionMode status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTsDataRate()[I
    .registers 3

    const v0, 0x10001

    const-string v1, "getTsDataRate status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mTsDataRate:[I

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TsDataRate status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUec()I
    .registers 3

    const v0, 0x10001

    const-string v1, "getUec status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mUec:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uec status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDemodLocked()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsDemodLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DemodLocked status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEwbs()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsEwbs:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ewbs status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLinear()Z
    .registers 3

    const v0, 0x10001

    const-string v1, "isLinear status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLinear:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isLinear status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isLnaOn()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsLnaOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LnaOn status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMisoEnabled()Z
    .registers 3

    const v0, 0x10001

    const-string v1, "isMisoEnabled status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsMisoEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isMisoEnabled status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRfLocked()Z
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsRfLocked:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isRfLocked status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isShortFramesEnabled()Z
    .registers 3

    const v0, 0x10001

    const-string v1, "isShortFramesEnabled status"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    iget-object v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatus;->mIsShortFrames:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isShortFramesEnabled status is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
