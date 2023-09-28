# classes.dex

.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private static native native_CreateBlendModeFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .registers 3

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreateBlendModeFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v4, v2, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v3, v3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object v4, v2, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, v4, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return v0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v0, v1

    return v0
.end method
