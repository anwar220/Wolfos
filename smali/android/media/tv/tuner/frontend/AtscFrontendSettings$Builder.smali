# classes2.dex

.class public Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFrequency:J

.field private mModulation:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/frontend/AtscFrontendSettings;
    .registers 6

    new-instance v0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings;-><init>(JILandroid/media/tv/tuner/frontend/AtscFrontendSettings-IA;)V

    return-object v0
.end method

.method public setFrequency(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mFrequency:J

    return-object p0
.end method

.method public setModulation(I)Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendSettings$Builder;->mModulation:I

    return-object p0
.end method
