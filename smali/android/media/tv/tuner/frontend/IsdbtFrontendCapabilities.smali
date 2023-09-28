# classes2.dex

.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mGuardIntervalCap:I

.field private final mIsFullSegmentSupported:Z

.field private final mIsSegmentAutoSupported:Z

.field private final mModeCap:I

.field private final mModulationCap:I

.field private final mTimeInterleaveCap:I


# direct methods
.method private constructor <init>(IIIIIIZZ)V
    .registers 9

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getGuardIntervalCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public getModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public getTimeInterleaveModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    return v0
.end method

.method public isFullSegmentSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    return v0
.end method

.method public isSegmentAutoSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    return v0
.end method
