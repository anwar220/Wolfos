# classes2.dex

.class public Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCodeRate:I

.field private mFrequency:J

.field private mModulation:I

.field private mRolloff:I

.field private mStreamId:I

.field private mStreamIdType:I

.field private mSymbolRate:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    const v0, 0xffff

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
    .registers 12

    new-instance v10, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/IsdbsFrontendSettings-IA;)V

    return-object v10
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method

.method public setRolloff(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    return-object p0
.end method

.method public setStreamId(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    return-object p0
.end method

.method public setStreamIdType(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    return-object p0
.end method

.method public setSymbolRate(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    return-object p0
.end method
