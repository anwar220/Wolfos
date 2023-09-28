# classes.dex

.class public final Landroid/content/pm/PackageManager$ComponentInfoFlags;
.super Landroid/content/pm/PackageManager$Flags;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentInfoFlags"
.end annotation


# direct methods
.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageManager$Flags;-><init>(J)V

    return-void
.end method

.method public static of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;
    .registers 3

    new-instance v0, Landroid/content/pm/PackageManager$ComponentInfoFlags;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;-><init>(J)V

    return-object v0
.end method
