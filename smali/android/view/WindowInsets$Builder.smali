# classes3.dex

.class public final Landroid/view/WindowInsets$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlwaysConsumeSystemBars:Z

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mIsRound:Z

.field private mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private mRoundedCorners:Landroid/view/RoundedCorners;

.field private mStableInsetsConsumed:Z

.field private mSystemInsetsConsumed:Z

.field private final mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final mTypeVisibilityMap:[Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    new-array v1, v0, [Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z

    move-result-object v0

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmAlwaysConsumeSystemBars(Landroid/view/WindowInsets;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    invoke-static {p1}, Landroid/view/WindowInsets;->-$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/WindowInsets;
    .registers 14

    new-instance v11, Landroid/view/WindowInsets;

    iget-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v2, v1

    goto :goto_c

    :cond_9
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v2, v0

    :goto_c
    iget-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_12

    move-object v3, v1

    goto :goto_15

    :cond_12
    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v3, v0

    :goto_15
    iget-object v4, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    iget-boolean v5, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    iget-boolean v6, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    iget-object v7, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v8, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v9, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v10

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v12

    invoke-direct/range {v0 .. v10}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    return-object v11
.end method

.method public setAlwaysConsumeSystemBars(Z)Landroid/view/WindowInsets$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mAlwaysConsumeSystemBars:Z

    return-object p0
.end method

.method public setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;
    .registers 6

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    :goto_6
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aput-object v0, v2, v1

    iget-object v2, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    :cond_2b
    return-object p0
.end method

.method public setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    return-object p0
.end method

.method public setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_10

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1, p2}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public setPrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/WindowInsets$Builder;
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    aput-object p1, v0, v2

    new-instance v2, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v2, v0, v1}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v2, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)Landroid/view/WindowInsets$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/WindowInsets$Builder;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method public setRound(Z)Landroid/view/WindowInsets$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/WindowInsets$Builder;->mIsRound:Z

    return-object p0
.end method

.method public setRoundedCorner(ILandroid/view/RoundedCorner;)Landroid/view/WindowInsets$Builder;
    .registers 4

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1, p2}, Landroid/view/RoundedCorners;->setRoundedCorner(ILandroid/view/RoundedCorner;)V

    return-object p0
.end method

.method public setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;
    .registers 3

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    :goto_6
    iput-object v0, p0, Landroid/view/WindowInsets$Builder;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mStableInsetsConsumed:Z

    return-object p0
.end method

.method public setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowInsets$Builder;->mSystemInsetsConsumed:Z

    return-object p0
.end method

.method public setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/WindowInsets$Builder;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/view/WindowInsets;->-$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-object p0
.end method

.method public setVisible(IZ)Landroid/view/WindowInsets$Builder;
    .registers 6

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_15

    and-int v1, p1, v0

    if-nez v1, :cond_a

    goto :goto_12

    :cond_a
    iget-object v1, p0, Landroid/view/WindowInsets$Builder;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aput-boolean p2, v1, v2

    :goto_12
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-object p0
.end method
