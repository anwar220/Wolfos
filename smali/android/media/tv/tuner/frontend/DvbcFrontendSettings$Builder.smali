# classes2.dex

.class public Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnnex:I

.field private mBandwidth:I

.field private mFrequency:J

.field private mInnerFec:J

.field private mInterleaveMode:I

.field private mModulation:I

.field private mOuterFec:I

.field private mSpectralInversion:I

.field private mSymbolRate:I


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    iput v2, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;
    .registers 15

    new-instance v13, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    iget-wide v4, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    iget v6, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    iget v9, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    iget v10, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    iget v11, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings;-><init>(JIJIIIIIILandroid/media/tv/tuner/frontend/DvbcFrontendSettings-IA;)V

    return-object v13
.end method

.method public setAnnex(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mAnnex:I

    return-object p0
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4

    const v0, 0x10001

    const-string v1, "setBandwidth"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mBandwidth:I

    :cond_d
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInnerFec:J

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setOuterFec(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mOuterFec:I

    return-object p0
.end method

.method public setSpectralInversion(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSpectralInversion:I

    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method

.method public setTimeInterleaveMode(I)Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;
    .registers 4

    const v0, 0x10001

    const-string v1, "setTimeInterleaveMode"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbcFrontendSettings$Builder;->mInterleaveMode:I

    :cond_d
    return-object p0
.end method
