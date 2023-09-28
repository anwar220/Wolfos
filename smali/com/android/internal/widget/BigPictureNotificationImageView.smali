# classes4.dex

.class public Lcom/android/internal/widget/BigPictureNotificationImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMaximumDrawableHeight:I

.field private final mMaximumDrawableWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_11

    const v2, 0x10501f8

    goto :goto_14

    :cond_11
    const v2, 0x10501f7

    :goto_14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_24

    const v2, 0x10501f6

    goto :goto_27

    :cond_24
    const v2, 0x10501f5

    :goto_27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    return-void
.end method

.method private loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_17
    return-object v0
.end method

.method private loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$setImageIconAsync$1$com-android-internal-widget-BigPictureNotificationImageView(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic lambda$setImageURIAsync$0$com-android-internal-widget-BigPictureNotificationImageView(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
