# classes3.dex

.class public final Landroid/service/controls/templates/ThumbnailTemplate;
.super Landroid/service/controls/templates/ControlTemplate;


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "key_active"

.field private static final KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "key_content_description"

.field private static final KEY_ICON:Ljava/lang/String; = "key_icon"

.field private static final TYPE:I = 0x3


# instance fields
.field private final mActive:Z

.field private final mContentDescription:Ljava/lang/CharSequence;

.field private final mThumbnail:Landroid/graphics/drawable/Icon;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    const-string/jumbo v0, "key_icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    const-string/jumbo v0, "key_content_description"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p2, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    iput-object p3, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method private rescaleThumbnail(II)V
    .registers 4

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    const-string/jumbo v2, "key_active"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    const-string/jumbo v2, "key_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mContentDescription:Ljava/lang/CharSequence;

    const-string/jumbo v2, "key_content_description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTemplateType()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mThumbnail:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/controls/templates/ThumbnailTemplate;->mActive:Z

    return v0
.end method

.method public prepareTemplateForBinder(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/service/controls/templates/ThumbnailTemplate;->rescaleThumbnail(II)V

    return-void
.end method
