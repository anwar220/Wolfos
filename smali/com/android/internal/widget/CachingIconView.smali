# classes4.dex

.class public Lcom/android/internal/widget/CachingIconView;
.super Landroid/widget/ImageView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mDesiredVisibility:I

.field private mForceHidden:Z

.field private mIconColor:I

.field private mInternalSetDrawable:Z

.field private mLastPackage:Ljava/lang/String;

.field private mLastResId:I

.field private mMaxDrawableHeight:I

.field private mMaxDrawableWidth:I

.field private mOnForceHiddenChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWillBeForceHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/CachingIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/android/internal/R$styleable;->CachingIconView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v0

    :cond_1c
    return-object v1
.end method

.method private declared-synchronized resetCache()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized testAndSetCache(I)Z
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-nez v0, :cond_8

    goto :goto_14

    :cond_8
    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_1c

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_12

    monitor-exit p0

    return v0

    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-eqz v2, :cond_25

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    nop

    :goto_26
    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_35

    monitor-exit p0

    return v0

    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    monitor-exit p0

    return v0

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateVisibility()V
    .registers 4

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    if-nez v0, :cond_a

    iget-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x4

    goto :goto_b

    :cond_a
    nop

    :goto_b
    nop

    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz v1, :cond_17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getMaxDrawableHeight()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableHeight:I

    return v0
.end method

.method public getMaxDrawableWidth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mMaxDrawableWidth:I

    return v0
.end method

.method public getOriginalIconColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    return v0
.end method

.method public isForceHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    return v0
.end method

.method synthetic lambda$setImageIconAsync$0$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic lambda$setImageResourceAsync$1$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic lambda$setImageURIAsync$2$com-android-internal-widget-CachingIconView(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    return-void
.end method

.method public setForceHidden(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eq p1, v0, :cond_17

    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public setGrayedOut(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/widget/ColoredIconHelper;->applyGrayTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZI)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_16

    :cond_13
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_19
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public setImageResource(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16

    :cond_13
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :cond_19
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_16

    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    :goto_16
    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->loadSizeRestrictedUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    :cond_e
    new-instance v1, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/CachingIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/CachingIconView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnForceHiddenChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/CachingIconView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setOriginalIconColor(I)V
    .registers 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mIconColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-nez v0, :cond_1f

    if-eqz v2, :cond_43

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_43

    :cond_1f
    if-eqz v2, :cond_38

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_43

    :cond_38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/CachingIconView;->mBackgroundColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public setVisibility(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    return-void
.end method

.method public setWillBeForceHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    return-void
.end method

.method public willBeForceHidden()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mWillBeForceHidden:Z

    return v0
.end method
