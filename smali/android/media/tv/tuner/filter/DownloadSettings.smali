# classes2.dex

.class public Landroid/media/tv/tuner/filter/DownloadSettings;
.super Landroid/media/tv/tuner/filter/Settings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    }
.end annotation


# instance fields
.field private final mDownloadId:I

.field private final mUseDownloadId:Z


# direct methods
.method private constructor <init>(IZI)V
    .registers 5

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mUseDownloadId:Z

    iput p3, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    return-void
.end method

.method synthetic constructor <init>(IZILandroid/media/tv/tuner/filter/DownloadSettings-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/filter/DownloadSettings;-><init>(IZI)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/DownloadSettings$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/DownloadSettings$Builder;-><init>(ILandroid/media/tv/tuner/filter/DownloadSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getDownloadId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mDownloadId:I

    return v0
.end method

.method public useDownloadId()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/DownloadSettings;->mUseDownloadId:Z

    return v0
.end method
