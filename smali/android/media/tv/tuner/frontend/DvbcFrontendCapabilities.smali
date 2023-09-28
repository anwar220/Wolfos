# classes2.dex

.class public Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mAnnexCap:I

.field private final mFecCap:J

.field private final mModulationCap:I


# direct methods
.method private constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    return-void
.end method


# virtual methods
.method public getAnnexCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mAnnexCap:I

    return v0
.end method

.method public getCodeRateCapability()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    return-wide v0
.end method

.method public getFecCapability()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mFecCap:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    long-to-int v0, v0

    return v0
.end method

.method public getModulationCapability()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendCapabilities;->mModulationCap:I

    return v0
.end method
