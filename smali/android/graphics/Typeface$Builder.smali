# classes.dex

.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field private static final FD_NAMES:Ljava/lang/String; = "font_from_fd"

.field public static final NORMAL_WEIGHT:I = 0x190


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field private mItalic:I

.field private final mPath:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method static bridge synthetic -$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    :try_start_8
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_15
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    const-string v1, "font_from_fd"

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    const-string v4, "-"

    if-ge v3, v2, :cond_21

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6d

    array-length v3, p3

    const/4 v5, 0x0

    :goto_51
    if-ge v5, v3, :cond_6d

    aget-object v6, p3, v5

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .registers 7

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v3, v2, :cond_14

    return-object v0

    :cond_14
    if-ne v1, v2, :cond_1a

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I

    move-result v1

    :cond_1a
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_29

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2c

    goto :goto_2b

    :cond_29
    if-ne v3, v5, :cond_2c

    :goto_2b
    move v4, v5

    :cond_2c
    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->-$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .registers 11

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    if-nez v0, :cond_9

    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_2c

    :cond_13
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v4

    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v6, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v7, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v7, :cond_28

    const-string/jumbo v7, "sans-serif"

    :cond_28
    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    if-eqz v1, :cond_46

    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_33} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_33} :catch_b1

    :try_start_33
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_41

    monitor-exit v2

    return-object v3

    :cond_41
    monitor-exit v2

    goto :goto_46

    :catchall_43
    move-exception v3

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    :try_start_45
    throw v3

    :cond_46
    :goto_46
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    iget v3, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5d

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v3

    goto :goto_5e

    :cond_5d
    nop

    :goto_5e
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v5, v4, :cond_6b

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v5

    goto :goto_6c

    :cond_6b
    nop

    :goto_6c
    move v4, v5

    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v5, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-eqz v6, :cond_82

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    :cond_82
    invoke-virtual {v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v6

    if-eqz v1, :cond_99

    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_8d} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_8d} :catch_b1

    :try_start_8d
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_99

    :catchall_96
    move-exception v8

    monitor-exit v7
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    :try_start_98
    throw v8

    :cond_99
    :goto_99
    iget-object v7, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_a6

    new-array v9, v9, [Ljava/lang/String;

    aput-object v7, v9, v8

    iput-object v9, v6, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    goto :goto_b0

    :cond_a6
    iget-object v7, p0, Landroid/graphics/Typeface$Builder;->mFilePath:Ljava/lang/String;

    if-eqz v7, :cond_b0

    new-array v9, v9, [Ljava/lang/String;

    aput-object v7, v9, v8

    iput-object v9, v6, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_b0} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_b0} :catch_b1

    :cond_b0
    :goto_b0
    return-object v6

    :catch_b1
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 2

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 3

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .registers 3

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    return-object p0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .registers 3

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .registers 3

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .registers 3

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    return-object p0
.end method
