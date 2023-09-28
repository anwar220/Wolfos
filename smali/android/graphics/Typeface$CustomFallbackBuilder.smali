# classes.dex

.class public final Landroid/graphics/Typeface$CustomFallbackBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomFallbackBuilder"
.end annotation


# static fields
.field private static final MAX_CUSTOM_FALLBACK:I = 0x40


# instance fields
.field private mFallbackName:Ljava/lang/String;

.field private final mFamilies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method public constructor <init>(Landroid/graphics/fonts/FontFamily;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getMaxCustomFallbackCount()I
    .registers 1

    const/16 v0, 0x40

    return v0
.end method


# virtual methods
.method public addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/graphics/Typeface$CustomFallbackBuilder;->getMaxCustomFallbackCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Custom fallback limit exceeded(%d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/graphics/Typeface;
    .registers 5

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/graphics/FontManagerStub;->createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->originBuild()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public originBuild()Landroid/graphics/Typeface;
    .registers 10

    iget-object v0, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$smgetDefault()Landroid/graphics/Typeface;

    move-result-object v1

    :cond_12
    new-array v2, v0, [J

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_28

    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFamilies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontFamily;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_28
    iget-object v3, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v3, :cond_2f

    const/16 v3, 0x190

    goto :goto_33

    :cond_2f
    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    :goto_33
    iget-object v4, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v4, 0x0

    :goto_41
    new-instance v5, Landroid/graphics/Typeface;

    if-nez v1, :cond_48

    const-wide/16 v6, 0x0

    goto :goto_4a

    :cond_48
    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    :goto_4a
    invoke-static {v2, v6, v7, v3, v4}, Landroid/graphics/Typeface;->-$$Nest$smnativeCreateFromArray([JJII)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface-IA;)V

    return-object v5
.end method

.method public setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2

    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mStyle:Landroid/graphics/fonts/FontStyle;

    return-object p0
.end method

.method public setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/graphics/Typeface$CustomFallbackBuilder;->mFallbackName:Ljava/lang/String;

    return-object p0
.end method
