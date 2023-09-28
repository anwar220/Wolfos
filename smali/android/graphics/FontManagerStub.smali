# classes.dex

.class public interface abstract Landroid/graphics/FontManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/graphics/FontManagerStub;
    .registers 1

    const-class v0, Landroid/graphics/FontManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontManagerStub;

    return-object v0
.end method


# virtual methods
.method public abstract checkFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
.end method

.method public abstract createFallbackFontWithMiuiFamily(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/util/List;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface$CustomFallbackBuilder;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontStyle;",
            ")",
            "Landroid/graphics/Typeface;"
        }
    .end annotation
.end method

.method public abstract getCreateFromFamilyName()[Ljava/lang/String;
.end method

.method public abstract getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;
.end method

.method public abstract getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation
.end method

.method public abstract getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
.end method

.method public abstract isMiuiFontName(Ljava/lang/String;)Z
.end method

.method public abstract isMiuiVariationFont(Landroid/graphics/Typeface;)Z
.end method

.method public isSupportMiuiFont()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
.end method
