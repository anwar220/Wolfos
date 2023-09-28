# classes2.dex

.class public Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAftFlag:I

.field private mFrequency:J

.field private mSifStandard:I

.field private mSignalType:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
    .registers 9

    new-instance v7, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;-><init>(JIIILandroid/media/tv/tuner/frontend/AnalogFrontendSettings-IA;)V

    return-object v7
.end method

.method public setAftFlag(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 4

    const v0, 0x10001

    const-string v1, "setAftFlag"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    :cond_d
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setSifStandard(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    return-object p0
.end method

.method public setSignalType(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    return-object p0
.end method
