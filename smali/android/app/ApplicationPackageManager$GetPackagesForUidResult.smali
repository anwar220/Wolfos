# classes.dex

.class Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPackagesForUidResult"
.end annotation


# instance fields
.field private final mValue:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    iget-object v0, v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v0, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    if-nez v2, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v1

    :goto_17
    if-eq v4, v5, :cond_1a

    return v1

    :cond_1a
    if-nez v0, :cond_1d

    return v3

    :cond_1d
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_28
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    return-object v0
.end method
