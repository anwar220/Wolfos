# classes2.dex

.class Landroid/media/PublicFormatUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHalDataspace(I)I
    .registers 2

    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalDataspace(I)I

    move-result v0

    return v0
.end method

.method public static getHalFormat(I)I
    .registers 2

    invoke-static {p0}, Landroid/media/PublicFormatUtils;->nativeGetHalFormat(I)I

    move-result v0

    return v0
.end method

.method public static getPublicFormat(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/media/PublicFormatUtils;->nativeGetPublicFormat(II)I

    move-result v0

    return v0
.end method

.method private static native nativeGetHalDataspace(I)I
.end method

.method private static native nativeGetHalFormat(I)I
.end method

.method private static native nativeGetPublicFormat(II)I
.end method
