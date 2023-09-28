# classes4.dex

.class public final Lcom/android/internal/policy/AttributeCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/AttributeCache$Entry;,
        Lcom/android/internal/policy/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/internal/policy/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/internal/policy/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/internal/policy/AttributeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/policy/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    :cond_b
    return-void
.end method

.method public static instance()Lcom/android/internal/policy/AttributeCache;
    .registers 1

    sget-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 5

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/AttributeCache$Package;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move-object v1, v4

    if-eqz v1, :cond_42

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/AttributeCache$Entry;

    move-object v2, v4

    if-eqz v2, :cond_42

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_6b

    return-object v2

    :cond_26
    :try_start_26
    iget-object v4, p0, Lcom/android/internal/policy/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_68
    .catchall {:try_start_26 .. :try_end_32} :catchall_6b

    if-nez v4, :cond_36

    :try_start_34
    monitor-exit p0

    return-object v3

    :cond_36
    nop

    new-instance v5, Lcom/android/internal/policy/AttributeCache$Package;

    invoke-direct {v5, v4}, Lcom/android/internal/policy/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    iget-object v5, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    if-nez v1, :cond_51

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v4

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_34 .. :try_end_51} :catchall_6b

    :cond_51
    :try_start_51
    new-instance v4, Lcom/android/internal/policy/AttributeCache$Entry;

    iget-object v5, v0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v6, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v2, v4

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_51 .. :try_end_62} :catch_65
    .catchall {:try_start_51 .. :try_end_62} :catchall_6b

    nop

    :try_start_63
    monitor-exit p0

    return-object v2

    :catch_65
    move-exception v4

    monitor-exit p0

    return-object v3

    :catch_68
    move-exception v4

    monitor-exit p0

    return-object v3

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/AttributeCache$Package;

    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const/4 v3, 0x0

    :goto_21
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/AttributeCache$Entry;

    invoke-virtual {v4}, Lcom/android/internal/policy/AttributeCache$Entry;->recycle()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_36
    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, -0x400000a1  # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method
