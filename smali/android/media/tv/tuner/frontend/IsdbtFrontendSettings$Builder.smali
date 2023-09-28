# classes2.dex

.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mFrequency:J

.field private mGuardInterval:I

.field private mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

.field private mMode:I

.field private mPartialReceptionFlag:I

.field private mServiceAreaId:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    new-array v1, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;
    .registers 12

    new-instance v10, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    iget-object v7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iget v8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings;-><init>(JIIII[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;ILandroid/media/tv/tuner/frontend/IsdbtFrontendSettings-IA;)V

    return-object v10
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    const-string v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_12
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_25

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_2e

    :cond_25
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getModulation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    :goto_2e
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_36
    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setGuardInterval(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mGuardInterval:I

    return-object p0
.end method

.method public setLayerSettings([Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 5

    const/high16 v0, 0x20000

    const-string v1, "setLayerSettings"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    array-length v0, p1

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    const/4 v0, 0x0

    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    return-object p0
.end method

.method public setMode(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mMode:I

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    const-string v1, "setModulation"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "IsdbtFrontendSettings"

    const-string v1, "Use IsdbtLayerSettings on HAL 2.0 or higher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_12
    invoke-static {}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->builder()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setModulation(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_25

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    iput-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    goto :goto_2e

    :cond_25
    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;->getCodeRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;

    :goto_2e
    iget-object v1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mLayerSettings:[Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    invoke-virtual {v0}, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings$Builder;->build()Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$IsdbtLayerSettings;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_36
    return-object p0
.end method

.method public setPartialReceptionFlag(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 4

    const/high16 v0, 0x20000

    const-string v1, "setPartialReceptionFlag"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mPartialReceptionFlag:I

    :cond_c
    return-object p0
.end method

.method public setServiceAreaId(I)Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendSettings$Builder;->mServiceAreaId:I

    return-object p0
.end method
