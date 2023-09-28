# classes.dex

.class public final Landroid/graphics/Compatibility;
.super Ljava/lang/Object;


# static fields
.field private static sTargetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTargetSdkVersion()I
    .registers 1

    sget v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return v0
.end method

.method public static setTargetSdkVersion(I)V
    .registers 1

    sput p0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    invoke-static {p0}, Landroid/graphics/Canvas;->setCompatibilityVersion(I)V

    return-void
.end method
