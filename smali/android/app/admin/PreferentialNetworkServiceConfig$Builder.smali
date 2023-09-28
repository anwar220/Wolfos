# classes.dex

.class public final Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PreferentialNetworkServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAllowFallbackToDefaultConnection:Z

.field mExcludedUids:[I

.field mIncludedUids:[I

.field mIsEnabled:Z

.field mNetworkId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/admin/PreferentialNetworkServiceConfig;
    .registers 10

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    array-length v0, v0

    if-gtz v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both includedUids and excludedUids cannot be nonempty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iget-boolean v4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    iget-object v5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    iget-object v6, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    iget v7, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V

    return-object v0
.end method

.method public setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    return-object p0
.end method

.method public setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    return-object p0
.end method

.method public setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    return-object p0
.end method

.method public setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x5

    if-gt p1, v0, :cond_9

    iput p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preference identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
