# classes.dex

.class public final Landroid/graphics/fonts/FontFamily;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontFamily"


# instance fields
.field private final mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    return-void
.end method

.method private static native nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLangTags(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetVariant(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public getFont(I)Landroid/graphics/fonts/Font;
    .registers 5

    if-ltz p1, :cond_14

    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v0

    if-le v0, p1, :cond_14

    new-instance v0, Landroid/graphics/fonts/Font;

    iget-wide v1, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v1, v2, p1}, Landroid/graphics/fonts/FontFamily;->nGetFont(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/fonts/Font;-><init>(J)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLangTags()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetLangTags(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    return-wide v0
.end method

.method public getSize()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetFontSize(J)I

    move-result v0

    return v0
.end method

.method public getVariant()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetVariant(J)I

    move-result v0

    return v0
.end method
