# classes2.dex

.class public Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
.super Landroid/media/tv/tuner/filter/SectionSettings$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/tv/tuner/filter/SectionSettings$Builder<",
        "Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mTableId:I

.field private mVersion:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettings$Builder;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;
    .registers 11

    new-instance v9, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;

    iget v1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mCrcEnabled:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mIsRepeat:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mIsRaw:Z

    iget v5, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mBitWidthOfLengthField:I

    iget v6, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mTableId:I

    iget v7, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo;-><init>(IZZZIIILandroid/media/tv/tuner/filter/SectionSettingsWithTableInfo-IA;)V

    return-object v9
.end method

.method bridge synthetic self()Landroid/media/tv/tuner/filter/SectionSettings$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->self()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 1

    return-object p0
.end method

.method public setTableId(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mTableId:I

    return-object p0
.end method

.method public setVersion(I)Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/SectionSettingsWithTableInfo$Builder;->mVersion:I

    return-object p0
.end method
