# classes2.dex

.class public Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/DownloadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDownloadId:I

.field private final mMainType:I

.field private mUseDownloadId:Z


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/tv/tuner/filter/DownloadSettings$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/DownloadSettings;
    .registers 6

    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    iget v3, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(IZILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V

    return-object v0
.end method

.method public setDownloadId(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mDownloadId:I

    return-object p0
.end method

.method public setUseDownloadId(Z)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 4

    const/high16 v0, 0x20000

    const-string v1, "setUseDownloadId"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;->mUseDownloadId:Z

    :cond_c
    return-object p0
.end method
