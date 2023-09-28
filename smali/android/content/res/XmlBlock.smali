# classes.dex

.class public final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mNative:J

.field private mOpen:Z

.field private mOpenCount:I

.field final mStrings:Landroid/content/res/StringBlock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I
    .registers 1

    iget p0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V
    .registers 2

    iput p1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V
    .registers 1

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeDestroyParseState(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeCount(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeData(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeDataType(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeName(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeNamespace(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeResource(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetAttributeStringValue(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetClassAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetIdAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetLineNumber(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetNamespace(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetSourceResId(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetSourceResId(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetStyleAttribute(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetText(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/res/AssetManager;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v2, Landroid/content/res/StringBlock;

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v2, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method private decOpenCountLocked()V
    .registers 3

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_18

    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    :cond_18
    return-void
.end method

.method private static final native nativeCreate([BII)J
.end method

.method private static final native nativeCreateParseState(JI)J
.end method

.method private static final native nativeDestroy(J)V
.end method

.method private static final native nativeDestroyParseState(J)V
.end method

.method private static final native nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetSourceResId(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetStringBlock(J)J
.end method

.method private static final native nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static final native nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    return-void
.end method

.method public newParser()Landroid/content/res/XmlResourceParser;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public newParser(I)Landroid/content/res/XmlResourceParser;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/content/res/XmlBlock$Parser;

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(JI)J

    move-result-wide v0

    invoke-direct {v2, p0, v0, v1, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    monitor-exit p0

    return-object v2

    :cond_14
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
