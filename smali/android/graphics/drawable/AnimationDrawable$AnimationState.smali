# classes.dex

.class final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationState"
.end annotation


# instance fields
.field private mDurations:[I

.field private mOneShot:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDurations(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOneShot(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mmutate(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mutate()V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;Landroid/content/res/Resources;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    if-eqz p1, :cond_11

    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    goto :goto_1b

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getCapacity()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    :goto_1b
    return-void
.end method

.method private mutate()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    aput p2, v1, v0

    return-void
.end method

.method public getTotalDuration()J
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_f

    aget v4, v0, v3

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    int-to-long v2, v1

    return-wide v2

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public growArray(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    new-array v0, p2, [I

    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable-IA;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimationDrawable-IA;)V

    return-object v0
.end method
