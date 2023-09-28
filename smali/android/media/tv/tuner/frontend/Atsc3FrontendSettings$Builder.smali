# classes2.dex

.class public Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBandwidth:I

.field private mDemodOutputFormat:I

.field private mFrequency:J

.field private mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    iput v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    new-array v0, v0, [Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    iput-object v0, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;
    .registers 9

    new-instance v7, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    iget-object v5, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings;-><init>(JII[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings-IA;)V

    return-object v7
.end method

.method public setBandwidth(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mBandwidth:I

    return-object p0
.end method

.method public setDemodOutputFormat(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mDemodOutputFormat:I

    return-object p0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setPlpSettings([Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;)Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/frontend/Atsc3FrontendSettings$Builder;->mPlpSettings:[Landroid/media/tv/tuner/frontend/Atsc3PlpSettings;

    return-object p0
.end method
