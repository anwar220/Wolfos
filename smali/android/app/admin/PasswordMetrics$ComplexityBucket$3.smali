# classes.dex

.class final enum Landroid/app/admin/PasswordMetrics$ComplexityBucket$3;
.super Landroid/app/admin/PasswordMetrics$ComplexityBucket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;-><init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket$3-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$3;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method allowsCredType(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method canHaveSequence()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getMinimumLength(Z)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
