# classes.dex

.class public final Landroid/app/compat/PackageOverride$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/compat/PackageOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mMaxVersionCode:J

.field private mMinVersionCode:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    return-void
.end method


# virtual methods
.method public build()Landroid/app/compat/PackageOverride;
    .registers 9

    iget-wide v1, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    iget-wide v3, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_12

    new-instance v7, Landroid/app/compat/PackageOverride;

    iget-boolean v5, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/compat/PackageOverride;-><init>(JJZLandroid/app/compat/PackageOverride-IA;)V

    return-object v7

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minVersionCode must not be larger than maxVersionCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    return-object p0
.end method

.method public setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    return-object p0
.end method
