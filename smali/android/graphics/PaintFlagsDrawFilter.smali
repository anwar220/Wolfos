# classes.dex

.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:J

    return-void
.end method

.method private static native nativeConstructor(II)J
.end method
