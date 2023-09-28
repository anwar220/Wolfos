# classes2.dex

.class public final Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mBandwidthCap:I

.field private final mCodeRateCap:I

.field private final mGuardIntervalCap:I

.field private final mModulationCap:I

.field private final mTimeInterleaveModeCap:I

.field private final mTransmissionModeCap:I


# direct methods
.method private constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    iput p2, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    iput p3, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    iput p4, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    iput p5, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    iput p6, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    return-void
.end method


# virtual methods
.method public getBandwidthCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public getCodeRateCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public getGuardIntervalCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public getTimeInterleaveModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTimeInterleaveModeCap:I

    return v0
.end method

.method public getTransmissionModeCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DtmbFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method
