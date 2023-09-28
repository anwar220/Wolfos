# classes.dex

.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$CustomFallbackBuilder;,
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field public static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final EMPTY_AXES:[I

.field public static final ENABLE_LAZY_TYPEFACE_INITIALIZATION:Z = true

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final STYLE_ITALIC:I = 0x1

.field public static final STYLE_MASK:I = 0x3

.field private static final STYLE_NORMAL:I

.field private static final SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicCacheLock:Ljava/lang/Object;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final sStyledCacheLock:Ljava/lang/Object;

.field private static final sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

.field static sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public fallbackName:Ljava/lang/String;

.field public familyName:[Ljava/lang/String;

.field public fontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleaner:Ljava/lang/Runnable;

.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public final native_instance:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mStyle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I
    .registers 1

    iget p0, p0, Landroid/graphics/Typeface;->mWeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetDefault()Landroid/graphics/Typeface;
    .registers 1

    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 1

    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeCreateFromArray([JJII)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .registers 8

    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-class v0, Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    const-string v0, "/system/fonts/RobotoStatic-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v2

    const/4 v3, 0x0

    :goto_8d
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f4

    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a3
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_cc

    nop

    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    goto :goto_cc

    :cond_c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    :cond_cc
    :goto_cc
    if-eqz v5, :cond_f1

    const/4 v6, 0x0

    :goto_cf
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f1

    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    :cond_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_f4
    return-void
.end method

.method private constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/Typeface;->fontFamilies:Ljava/util/List;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_27

    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(JLandroid/graphics/Typeface-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 10

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-nez p0, :cond_b

    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    :cond_b
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1e

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-object v1, v0

    goto :goto_1d

    :cond_1c
    move-object v1, p0

    :goto_1d
    return-object v1

    :cond_1e
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    sget-object v0, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    sget-object v4, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_38

    new-instance v6, Landroid/util/SparseArray;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    move-object v5, v6

    invoke-virtual {v4, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_56

    :cond_38
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-eqz v4, :cond_56

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v4, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_54
    monitor-exit v0

    return-object v4

    :cond_56
    :goto_56
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v4

    invoke-interface {v4, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFont(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v1

    new-instance v4, Landroid/graphics/Typeface;

    if-eqz v1, :cond_65

    iget-wide v6, v1, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_66

    :cond_65
    move-wide v6, v2

    :goto_66
    invoke-static {v6, v7, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v4

    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_23 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public static create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string/jumbo v2, "weight"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p0, :cond_f

    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    :cond_f
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 3

    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_1f

    :cond_1b
    nop

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {v1}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    return-object v1
.end method

.method private static createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;
    .registers 6

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {v1}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    return-object v1
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    array-length v1, p0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_14

    aget-object v3, p0, v2

    iget-wide v3, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    new-instance v2, Landroid/graphics/Typeface;

    iget-wide v3, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v3, v4, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {v2}, Landroid/graphics/Typeface;->setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 5

    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 14

    instance-of v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    move-object v0, p0

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {v2}, Landroid/graphics/Typeface;->hasFontFamily(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_19
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_53

    const/4 v5, 0x0

    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_53

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_37
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4d

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4d
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_53
    new-instance v1, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7, v4}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_6d

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6e

    :cond_6d
    move-object v6, v5

    :goto_6e
    return-object v6

    :cond_6f
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_76

    return-object v0

    :cond_76
    move-object v2, p0

    check-cast v2, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    const/4 v3, 0x0

    :try_start_7a
    invoke-virtual {v2}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_80
    if-ge v6, v5, :cond_d4

    aget-object v7, v4, v6

    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9, v1, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_ab

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    :cond_ab
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    if-eq v9, v10, :cond_bd

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b9

    goto :goto_ba

    :cond_b9
    move v10, v1

    :goto_ba
    invoke-virtual {v8, v10}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    :cond_bd
    if-nez v3, :cond_ca

    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v9

    goto :goto_d1

    :cond_ca
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    :goto_d1
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    :cond_d4
    if-nez v3, :cond_d9

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    :cond_d9
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    new-instance v5, Landroid/graphics/fonts/FontStyle;

    const/16 v6, 0x190

    invoke-direct {v5, v6, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v6

    const/4 v7, 0x1

    :goto_f1
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_10a

    invoke-virtual {v4, v7}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v9

    if-ge v9, v6, :cond_107

    move-object v1, v8

    move v6, v9

    :cond_107
    add-int/lit8 v7, v7, 0x1

    goto :goto_f1

    :cond_10a
    new-instance v7, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v7, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_11b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_11b} :catch_13d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_11b} :catch_11e

    move-object v0, v7

    move-object v1, v0

    goto :goto_122

    :catch_11e
    move-exception v1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v1, v0

    :goto_122
    sget-object v3, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :try_start_129
    const-string/jumbo v10, "sans-serif"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v3

    return-object v1

    :catchall_13a
    move-exception v0

    monitor-exit v3
    :try_end_13c
    .catchall {:try_start_129 .. :try_end_13c} :catchall_13a

    throw v0

    :catch_13d
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    new-instance v1, Landroid/graphics/Typeface;

    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v2

    invoke-interface {v2, p0, v1, p1}, Landroid/graphics/FontManagerStub;->onCreateWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/util/List;)V

    return-object v1
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .registers 11

    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    if-eqz p2, :cond_7

    const/4 v1, 0x2

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    sget-object v2, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    sget-object v3, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_24

    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v4, v5

    iget-wide v5, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_42

    :cond_24
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_42

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v5

    invoke-interface {v5, v3, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;

    move-result-object v5

    monitor-exit v2

    return-object v5

    :cond_40
    monitor-exit v2

    return-object v3

    :cond_42
    :goto_42
    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v3

    invoke-interface {v3, p0, p1, v1}, Landroid/graphics/FontManagerStub;->getReplacedFontWithWeight(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;

    move-result-object v3

    new-instance v5, Landroid/graphics/Typeface;

    if-eqz v3, :cond_51

    iget-wide v6, v3, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_53

    :cond_51
    iget-wide v6, p0, Landroid/graphics/Typeface;->native_instance:J

    :goto_53
    invoke-static {v6, v7, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    return-object v5

    :catchall_62
    move-exception v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_62

    throw v3
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 3

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_3a

    aget-wide v5, v1, v4

    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/graphics/Typeface;

    invoke-direct {v8, v5, v6}, Landroid/graphics/Typeface;-><init>(J)V

    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    aput-object v9, v10, v3

    iput-object v10, v8, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3a
    return-object v1

    :cond_3b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not read typefaces"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static destroySystemFontMap()V
    .registers 4

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    iget-object v3, v2, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :cond_1f
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2b

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    :cond_2b
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 10

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_7
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_1c

    monitor-exit v0

    return-object v2

    :cond_1c
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static getDefault()Landroid/graphics/Typeface;
    .registers 2

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_d

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public static getSystemFontMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getSystemFontMapSharedMemory()Landroid/os/SharedMemory;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private static hasFontFamily(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "familyName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/fonts/FontFamily;

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/graphics/FontManagerStub;->isMiuiFontName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    new-array v3, v3, [Ljava/lang/String;

    aput-object v5, v3, v2

    iput-object v3, v4, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    goto :goto_50

    :cond_37
    new-array v3, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fallback-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    iput-object v3, v4, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    :goto_50
    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_54
    const/4 v0, 0x0

    :goto_55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/FontConfig$Alias;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_a0

    :cond_6c
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    if-nez v4, :cond_79

    goto :goto_a0

    :cond_79
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v5

    const/16 v6, 0x190

    if-ne v5, v6, :cond_83

    move-object v6, v4

    goto :goto_8e

    :cond_83
    new-instance v6, Landroid/graphics/Typeface;

    iget-wide v7, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8, v5}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Landroid/graphics/Typeface;-><init>(J)V

    :goto_8e
    nop

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    iput-object v7, v6, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_a3
    return-void
.end method

.method public static loadPreinstalledSystemFontMap()V
    .registers 3

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    nop

    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V

    return-void
.end method

.method private static native nativeAddFontCollections(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeCreateFromArray([JJII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V
.end method

.method private static native nativeGetFamily(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetFamilySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J
.end method

.method private static native nativeRegisterGenericFamily(Ljava/lang/String;J)V
.end method

.method private static native nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeWarmUpCache(Ljava/lang/String;)V
.end method

.method private static native nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I
.end method

.method private static preloadFontFile(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeWarmUpCache(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method private static readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p0, v0, v1}, Landroid/graphics/Typeface;->nativeRegisterGenericFamily(Ljava/lang/String;J)V

    :cond_7
    return-void
.end method

.method public static serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/os/SharedMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;

    iget-wide v7, v7, Landroid/graphics/Typeface;->native_instance:J

    aput-wide v7, v0, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_4b

    iget-object v7, v2, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    if-eqz v7, :cond_4b

    array-length v8, v7

    if-lez v8, :cond_4b

    aget-object v5, v7, v5

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_54

    :cond_4b
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :goto_54
    move v2, v6

    goto :goto_14

    :cond_56
    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v3

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/2addr v4, v6

    const-string v6, "fontMap"

    invoke-static {v6, v4}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    :try_start_72
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v7

    if-ne v7, v3, :cond_99

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_8e
    .catchall {:try_start_72 .. :try_end_8e} :catchall_b5

    nop

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    nop

    sget v5, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v4, v5}, Landroid/os/SharedMemory;->setProtect(I)Z

    return-object v4

    :cond_99
    :try_start_99
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unexpected bytes written: %d, expected: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v5

    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    throw v5
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .registers 4

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static setFontNameAndStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .registers 3

    if-eqz p1, :cond_14

    iget-object v0, p1, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/FontManagerStub;->isMiuiVariationFont(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p1, Landroid/graphics/Typeface;->mStyle:I

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    :cond_14
    return-void
.end method

.method private static setFontNameCreateFromFamily(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/FontManagerStub;->getCreateFromFamilyName()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    return-void
.end method

.method public static setSystemFontMap(Landroid/os/SharedMemory;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    if-eqz p0, :cond_13

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    if-ne p0, v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Once set, buffer-based system font map cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    return-void

    :cond_14
    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    const-wide/16 v0, 0x2

    const-string/jumbo v2, "setSystemFontMap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p0, :cond_27

    :try_start_20
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_52

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_27
    :try_start_27
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sget-object v3, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_40
    if-ge v5, v4, :cond_4a

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_4a
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V
    :try_end_4d
    .catchall {:try_start_27 .. :try_end_4d} :catchall_52

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static setSystemFontMap(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    :cond_26
    const-string v1, "DEFAULT"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "DEFAULT_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v1, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v1, v4

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const-string/jumbo v5, "serif"

    const-string/jumbo v6, "sans-serif"

    const-string v7, "cursive"

    const-string v8, "fantasy"

    const-string/jumbo v9, "monospace"

    const-string/jumbo v10, "system-ui"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_99
    if-ge v3, v2, :cond_a9

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_a9
    monitor-exit v0

    return-void

    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method private static writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method private static writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public getFallback()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeGetFamilySize(J)I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    new-instance v3, Landroid/graphics/fonts/FontFamily;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->nativeGetFamily(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return-object v0
.end method

.method public getStyle()I
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public getWeight()I
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v0, v2

    return v0
.end method

.method public final isBold()Z
    .registers 3

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public final isItalic()Z
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSupportedAxes(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_13

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_13

    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_20

    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public setStyle(I)V
    .registers 2

    iput p1, p0, Landroid/graphics/Typeface;->mStyle:I

    return-void
.end method

.method public setWeight(I)V
    .registers 2

    iput p1, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void
.end method
