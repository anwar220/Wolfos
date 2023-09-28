# classes.dex

.class public final Landroid/graphics/fonts/Font;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/Font$Builder;
    }
.end annotation


# static fields
.field private static final BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

.field private static final FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

.field private static final NOT_SPECIFIED:I = -0x1

.field private static final STYLE_ITALIC:I = 0x1

.field private static final STYLE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Font"


# instance fields
.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mFile:Ljava/io/File;

.field private mFontStyle:Landroid/graphics/fonts/FontStyle;

.field private mIsFileInitialized:Z

.field private mLocaleList:Landroid/os/LocaleList;

.field private final mLock:Ljava/lang/Object;

.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/fonts/Font;->nGetReleaseNativeFont()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/fonts/Font;->nGetReleaseNativeFont()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iput-object v0, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    iput-wide p1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    sget-object v0, Landroid/graphics/fonts/Font;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method public static getAvailableFonts()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {}, Landroid/graphics/fonts/Font;->nGetAvailableFontSet()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1a

    aget-wide v4, v1, v3

    new-instance v6, Landroid/graphics/fonts/Font;

    invoke-direct {v6, v4, v5}, Landroid/graphics/fonts/Font;-><init>(J)V

    invoke-virtual {v0, v6, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private isSameSource(Landroid/graphics/fonts/Font;)Z
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-eq v3, v4, :cond_1b

    const/4 v2, 0x0

    return v2

    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_30

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v3, v4, :cond_30

    return v2

    :cond_30
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static native nCloneFont(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAvailableFontSet()[J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetAxisCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAxisInfo(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetBufferAddress(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontPath(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetGlyphBounds(JIJLandroid/graphics/RectF;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetIndex(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLocaleList(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetMinikinFontPtr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetPackedStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseNativeFont()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetSourceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nNewByteBuffer(J)Ljava/nio/ByteBuffer;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/graphics/fonts/Font;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/graphics/fonts/Font;

    iget-wide v3, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/fonts/Font;->nGetMinikinFontPtr(J)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/graphics/fonts/Font;->nGetMinikinFontPtr(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {p0, v1}, Landroid/graphics/fonts/Font;->paramEquals(Landroid/graphics/fonts/Font;)Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    :cond_25
    invoke-direct {p0, v1}, Landroid/graphics/fonts/Font;->isSameSource(Landroid/graphics/fonts/Font;)Z

    move-result v0

    return v0
.end method

.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .registers 12

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v1, :cond_6b

    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetAxisCount(J)I

    move-result v1

    new-array v2, v1, [Landroid/graphics/fonts/FontVariationAxis;

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_6b

    iget-wide v4, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v4, v5, v3}, Landroid/graphics/fonts/Font;->nGetAxisInfo(JI)J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const/4 v7, 0x0

    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v8, v4

    const/16 v10, 0x38

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    const-wide/high16 v7, 0xff000000000000L

    and-long/2addr v7, v4

    const/16 v9, 0x30

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-char v7, v7

    const/4 v8, 0x1

    aput-char v7, v2, v8

    const/4 v7, 0x2

    const-wide v8, 0xff0000000000L

    and-long/2addr v8, v4

    const/16 v10, 0x28

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    const/4 v7, 0x3

    const-wide v8, 0xff00000000L

    and-long/2addr v8, v4

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, v2, v7

    iget-object v7, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    new-instance v8, Landroid/graphics/fonts/FontVariationAxis;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v6}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6f

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0

    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 6

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1e

    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nCloneFont(J)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/fonts/Font;->nNewByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Landroid/graphics/fonts/Font;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, v3, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_1e
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mBuffer:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getFile()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    if-nez v1, :cond_1d

    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetFontPath(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/fonts/Font;->mIsFileInitialized:Z

    :cond_1d
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFile:Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getGlyphBounds(ILandroid/graphics/Paint;Landroid/graphics/RectF;)F
    .registers 10

    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    move v2, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/fonts/Font;->nGetGlyphBounds(JIJLandroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .registers 4

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    if-nez v1, :cond_20

    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetLocaleList(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    goto :goto_20

    :cond_1a
    invoke-static {v1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    :cond_20
    :goto_20
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public getMetrics(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)V
    .registers 7

    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/fonts/Font;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    return-void
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    return-wide v0
.end method

.method public getSourceIdentifier()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/Font;->nGetSourceId(J)I

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/fonts/FontStyle;
    .registers 6

    iget-object v0, p0, Landroid/graphics/fonts/Font;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    if-nez v1, :cond_21

    iget-wide v1, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/fonts/Font;->nGetPackedStyle(J)I

    move-result v1

    new-instance v2, Landroid/graphics/fonts/FontStyle;

    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    invoke-direct {v2, v3, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    iput-object v2, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    :cond_21
    iget-object v1, p0, Landroid/graphics/fonts/Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getTtcIndex()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/Font;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/Font;->nGetIndex(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public paramEquals(Landroid/graphics/fonts/Font;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/fonts/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    if-ne v0, v1, :cond_44

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font {path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ttcIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", axes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localeList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
