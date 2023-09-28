# classes2.dex

.class public Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mConstellation:I

.field private mFrequency:J

.field private mGuardInterval:I

.field private mHierarchy:I

.field private mHpCodeRate:I

.field private mIsHighPriority:Z

.field private mIsMiso:Z

.field private mLpCodeRate:I

.field private mPlpGroupId:I

.field private mPlpId:I

.field private mPlpMode:I

.field private mStandard:I

.field private mTransmissionMode:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    iput-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;
    .registers 21

    move-object/from16 v0, p0

    new-instance v18, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;

    move-object/from16 v1, v18

    iget-wide v2, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    iget v4, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    iget v5, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    iget v6, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    iget v7, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    iget v8, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    iget v9, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    iget v10, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    iget-boolean v11, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    iget v12, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    iget-boolean v13, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    iget v14, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    iget v15, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    move-object/from16 v19, v1

    iget v1, v0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    move/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;-><init>(JIIIIIIIZIZIIILandroid/media/tv/tuner/frontend/DvbtFrontendSettings-IA;)V

    return-object v18
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public setConstellation(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4

    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedConstellation(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x10001

    const-string v1, "set Constellation Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mConstellation:I

    :cond_13
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setGuardInterval(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mGuardInterval:I

    return-object p0
.end method

.method public setHierarchy(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHierarchy:I

    return-object p0
.end method

.method public setHighPriority(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsHighPriority:Z

    return-object p0
.end method

.method public setHighPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mHpCodeRate:I

    return-object p0
.end method

.method public setLowPriorityCodeRate(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mLpCodeRate:I

    return-object p0
.end method

.method public setMiso(Z)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mIsMiso:Z

    return-object p0
.end method

.method public setPlpGroupId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpGroupId:I

    return-object p0
.end method

.method public setPlpId(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpId:I

    return-object p0
.end method

.method public setPlpMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mPlpMode:I

    return-object p0
.end method

.method public setStandard(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mStandard:I

    return-object p0
.end method

.method public setTransmissionMode(I)Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;
    .registers 4

    invoke-static {p1}, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings;->-$$Nest$smisExtendedTransmissionMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x10001

    const-string v1, "set TransmissionMode Ext"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendSettings$Builder;->mTransmissionMode:I

    :cond_13
    return-object p0
.end method
